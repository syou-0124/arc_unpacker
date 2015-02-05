#include "formats/gfx/xyz_converter.h"
#include "test_support/converter_support.h"

void test_xyz_decoding()
{
    Converter *converter = new XyzConverter();
    assert_decoded_image(
        converter,
        "tests/test_files/gfx/xyz/浅瀬部屋a.xyz",
        "tests/test_files/gfx/xyz/浅瀬部屋a-out.png");
    delete converter;
}

int main(void)
{
    test_xyz_decoding();
    return 0;
}
