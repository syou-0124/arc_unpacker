#pragma once

#include "dec/base_archive_decoder.h"

namespace au {
namespace dec {
namespace ivory {

    class MblArchiveDecoder final : public BaseArchiveDecoder
    {
    public:
        MblArchiveDecoder();
        ~MblArchiveDecoder();
        void register_cli_options(ArgParser &arg_parser) const override;
        void parse_cli_options(const ArgParser &arg_parser) override;
        void set_plugin(const std::string &name);
        std::vector<std::string> get_linked_formats() const override;

    protected:
        bool is_recognized_impl(io::File &input_file) const override;

        std::unique_ptr<ArchiveMeta> read_meta_impl(
            const Logger &logger,
            io::File &input_file) const override;

        std::unique_ptr<io::File> read_file_impl(
            const Logger &logger,
            io::File &input_file,
            const ArchiveMeta &m,
            const ArchiveEntry &e) const override;

    private:
        struct Priv;
        std::unique_ptr<Priv> p;
    };

} } }