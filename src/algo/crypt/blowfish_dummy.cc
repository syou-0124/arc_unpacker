#include "algo/crypt/blowfish.h"
#include "err.h"

using namespace au;
using namespace au::algo::crypt;

struct Blowfish::Priv final
{
};

Blowfish::Blowfish(const bstr &key)
{
    throw err::NotSupportedError(
        "Blowfish is unavailable - need to compile with OpenSSL.");
}

Blowfish::~Blowfish()
{
}

size_t Blowfish::block_size()
{
    return 8;
}

bstr Blowfish::decrypt(const bstr &input) const
{
    return ""_b;
}

bstr Blowfish::encrypt(const bstr &input) const
{
    return ""_b;
}