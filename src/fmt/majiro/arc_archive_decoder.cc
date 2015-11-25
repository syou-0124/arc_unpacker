#include "fmt/majiro/arc_archive_decoder.h"
#include <boost/lexical_cast.hpp>
#include "err.h"
#include "io/memory_stream.h"
#include "util/encoding.h"
#include "util/range.h"

using namespace au;
using namespace au::fmt::majiro;

static const bstr magic = "MajiroArcV"_b;

namespace
{
    struct ArchiveEntryImpl final : fmt::ArchiveEntry
    {
        size_t offset;
        size_t size;
        u64 hash;
    };
}

bool ArcArchiveDecoder::is_recognized_impl(io::File &input_file) const
{
    return input_file.stream.read(magic.size()) == magic;
}

std::unique_ptr<fmt::ArchiveMeta>
    ArcArchiveDecoder::read_meta_impl(io::File &input_file) const
{
    input_file.stream.seek(magic.size());
    const auto version
        = boost::lexical_cast<float>(input_file.stream.read_to_zero().str());
    const auto file_count = input_file.stream.read_u32_le();
    const auto names_offset = input_file.stream.read_u32_le();
    const auto data_offset = input_file.stream.read_u32_le();

    if (version != 2 && version != 3)
        throw err::UnsupportedVersionError(version);

    auto meta = std::make_unique<ArchiveMeta>();
    for (const auto i : util::range(file_count))
    {
        auto entry = std::make_unique<ArchiveEntryImpl>();
        entry->hash = version == 3
            ? input_file.stream.read_u64_le()
            : input_file.stream.read_u32_le();
        entry->offset = input_file.stream.read_u32_le();
        entry->size = input_file.stream.read_u32_le();
        meta->entries.push_back(std::move(entry));
    }

    input_file.stream.seek(names_offset);
    for (auto &entry : meta->entries)
    {
        static_cast<ArchiveEntryImpl*>(entry.get())->name
            = util::sjis_to_utf8(input_file.stream.read_to_zero()).str();
    }

    return meta;
}

std::unique_ptr<io::File> ArcArchiveDecoder::read_file_impl(
    io::File &input_file, const ArchiveMeta &m, const ArchiveEntry &e) const
{
    const auto entry = static_cast<const ArchiveEntryImpl*>(&e);
    const auto data = input_file.stream.seek(entry->offset).read(entry->size);
    return std::make_unique<io::File>(entry->name, data);
}

std::vector<std::string> ArcArchiveDecoder::get_linked_formats() const
{
    return {"majiro/rc8", "majiro/rct"};
}

static auto dummy = fmt::register_fmt<ArcArchiveDecoder>("majiro/arc");
