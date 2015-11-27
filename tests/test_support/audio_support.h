#pragma once

#include <memory>
#include "io/file.h"
#include "res/audio.h"

namespace au {
namespace tests {

    void compare_audio(
        const res::Audio &expected_audio,
        const res::Audio &actual_audio);

    void compare_audio(
        io::File &expected_file,
        const res::Audio &actual_audio);

    void compare_audio(
        io::File &expected_file,
        io::File &actual_file,
        const bool compare_file_names);

    void compare_audio(
        const std::vector<std::shared_ptr<io::File>> &expected_files,
        const std::vector<std::shared_ptr<io::File>> &actual_files,
        const bool compare_file_names);


} }