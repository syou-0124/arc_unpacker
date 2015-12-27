#include "fmt/adv/dat_archive_decoder.h"
#include "algo/locale.h"
#include "algo/range.h"
#include "io/memory_stream.h"

using namespace au;
using namespace au::fmt::adv;

static const bstr magic = "ARCHIVE\x00"_b;

namespace
{
    struct ArchiveMetaImpl final : fmt::ArchiveMeta
    {
        bstr game_key;
        bstr arc_key;
        size_t file_count;
        size_t header_offset;
        size_t table_offset;
    };

    struct ArchiveEntryImpl final : fmt::ArchiveEntry
    {
        size_t offset;
        size_t size;
    };
}

static std::unique_ptr<ArchiveMetaImpl> prepare_meta(io::File &input_file)
{
    auto meta = std::make_unique<ArchiveMetaImpl>();
    input_file.stream.seek(53); // suspicious: varies for other games?
    meta->arc_key = input_file.stream.read(8);

    input_file.stream.skip(20);
    meta->header_offset = input_file.stream.tell();
    bstr header_data = input_file.stream.read(0x24);

    // recover game key
    meta->game_key.resize(8);
    for (const auto i : algo::range(8))
        meta->game_key[i] = meta->arc_key[i] ^ header_data[i] ^ magic[i];

    for (const auto i : algo::range(8))
        meta->arc_key[i] ^= meta->game_key[i];

    for (const auto i : algo::range(0x24))
        header_data[i] ^= meta->arc_key[i % 8];

    meta->table_offset = header_data.get<const u32>()[4];
    meta->file_count = header_data.get<const u32>()[8];
    return meta;
}

bool DatArchiveDecoder::is_recognized_impl(io::File &input_file) const
{
    const auto meta = prepare_meta(input_file);
    return meta->header_offset + meta->table_offset + 0x114 * meta->file_count
        == input_file.stream.size();
}

std::unique_ptr<fmt::ArchiveMeta> DatArchiveDecoder::read_meta_impl(
    const Logger &logger, io::File &input_file) const
{
    auto meta = prepare_meta(input_file);

    input_file.stream.seek(meta->header_offset + meta->table_offset);
    auto table_data = input_file.stream.read(0x114 * meta->file_count);
    auto key_idx = meta->table_offset;
    for (const auto i : algo::range(table_data.size()))
        table_data[i] ^= meta->arc_key[(key_idx++) % meta->arc_key.size()];
    io::MemoryStream table_stream(table_data);

    for (const auto i : algo::range(meta->file_count))
    {
        table_stream.seek(0x114 * i);
        table_stream.skip(1);
        auto entry = std::make_unique<ArchiveEntryImpl>();
        entry->path = algo::sjis_to_utf8(table_stream.read_to_zero()).str();
        table_stream.seek(0x114 * i + 0x108);
        entry->offset = table_stream.read_u32_le() + meta->header_offset;
        entry->size = table_stream.read_u32_le();
        meta->entries.push_back(std::move(entry));
    }
    return std::move(meta);
}

std::unique_ptr<io::File> DatArchiveDecoder::read_file_impl(
    const Logger &logger,
    io::File &input_file,
    const fmt::ArchiveMeta &m,
    const fmt::ArchiveEntry &e) const
{
    const auto meta = static_cast<const ArchiveMetaImpl*>(&m);
    const auto entry = static_cast<const ArchiveEntryImpl*>(&e);
    input_file.stream.seek(entry->offset);
    auto data = input_file.stream.read(entry->size);
    auto key_idx = entry->offset - meta->header_offset;
    for (const auto i : algo::range(data.size()))
        data[i] ^= meta->arc_key[key_idx++ % meta->arc_key.size()];
    return std::make_unique<io::File>(entry->path, data);
}

static auto dummy = fmt::register_fmt<DatArchiveDecoder>("adv/dat");
