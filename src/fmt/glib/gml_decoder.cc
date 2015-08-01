#include "fmt/glib/gml_decoder.h"

using namespace au;
using namespace au::fmt::glib;

// modified LZSS
void GmlDecoder::decode(io::BufferedIO &source_io, io::BufferedIO &target_io)
{
    char *target = target_io.buffer();
    char *target_ptr = target;
    char *target_guardian = target + target_io.size();

    int unk1 = 0;
    while (target_ptr < target_guardian)
    {
        int carry = unk1 & 1;
        unk1 >>= 1;
        if (!unk1)
        {
            unk1 = source_io.eof() ? 0 : source_io.read_u8();
            carry = unk1 & 1;
            unk1 = (unk1 >> 1) | 0x80;
        }

        if (carry)
        {
            *target_ptr++ = source_io.eof() ? 0 : source_io.read_u8();
            continue;
        }

        u8 tmp1 = source_io.eof() ? 0 : source_io.read_u8();
        u8 tmp2 = source_io.eof() ? 0 : source_io.read_u8();
        size_t length = ((~tmp2) & 0xF) + 3;
        i32 look_behind = (tmp1 | ((tmp2 << 4) & 0xF00)) + 18;
        look_behind -= target_ptr - target;
        look_behind |= 0xFFFFF000;

        while (target_ptr - target + look_behind < 0
            && length
            && target_ptr < target_guardian)
        {
            --length;
            *target_ptr++ = 0;
        }

        while (length && target_ptr < target_guardian)
        {
            --length;
            u8 tmp = target_ptr[look_behind];
            *target_ptr++ = tmp;
        }
    }

    target_io.write(target, target_io.size());
}