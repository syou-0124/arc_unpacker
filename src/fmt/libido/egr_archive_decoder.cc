#include "fmt/libido/egr_archive_decoder.h"
#include "algo/format.h"
#include "algo/range.h"
#include "err.h"
#include "util/file_from_image.h"

using namespace au;
using namespace au::fmt::libido;

namespace
{
    struct ArchiveEntryImpl final : fmt::ArchiveEntry
    {
        size_t offset;
        size_t width, height;
    };
}

bool EgrArchiveDecoder::is_recognized_impl(io::File &input_file) const
{
    return input_file.path.has_extension("egr");
}

std::unique_ptr<fmt::ArchiveMeta> EgrArchiveDecoder::read_meta_impl(
    const Logger &logger, io::File &input_file) const
{
    auto i = 0;
    auto meta = std::make_unique<ArchiveMeta>();
    while (!input_file.stream.eof())
    {
        auto entry = std::make_unique<ArchiveEntryImpl>();
        entry->width = input_file.stream.read_u32_le();
        entry->height = input_file.stream.read_u32_le();
        if (input_file.stream.read_u32_le() != entry->width * entry->height)
            throw err::BadDataSizeError();
        entry->offset = input_file.stream.tell();
        input_file.stream.skip(0x574 + entry->width * entry->height);
        entry->path = algo::format("Image%03d.png", i++);
        meta->entries.push_back(std::move(entry));
    }
    return meta;
}

std::unique_ptr<io::File> EgrArchiveDecoder::read_file_impl(
    const Logger &logger,
    io::File &input_file,
    const fmt::ArchiveMeta &m,
    const fmt::ArchiveEntry &e) const
{
    auto entry = static_cast<const ArchiveEntryImpl*>(&e);
    input_file.stream.seek(entry->offset);
    res::Palette palette(256);
    for (auto i : algo::range(palette.size()))
    {
        input_file.stream.skip(1);
        palette[i].a = 0xFF;
        palette[i].b = input_file.stream.read_u8();
        palette[i].r = input_file.stream.read_u8();
        palette[i].g = input_file.stream.read_u8();
    }

    input_file.stream.skip(0x174);
    res::Image image(
        entry->width,
        entry->height,
        input_file.stream.read(entry->width * entry->height),
        palette);

    return util::file_from_image(image, entry->path);
}

static auto dummy = fmt::register_fmt<EgrArchiveDecoder>("libido/egr");
