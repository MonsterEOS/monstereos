#pragma once

#include <eosiolib/crypto.h>

#include <string>

using std::string;
using namespace eosio;

namespace utils {
    int count_spaces(string str) {
        int spaces = 0;
        for (int i = 0; i < str.length(); i++) {
            if (isspace(str[i]))
                spaces++;
        }
        return spaces;
    }

    bool is_zero(const capi_checksum256& a) {
        const uint64_t *p64 = reinterpret_cast<const uint64_t*>(&a);
        return p64[0] == 0 && p64[1] == 0 && p64[2] == 0 && p64[3] == 0;
    }

    capi_checksum256 get_hash(const std::vector<char>& data) {
        capi_checksum256 result;
        sha256(data.data(), data.size(), &result);
        return result;
    }

    // concatenation of ids
    uint128_t combine_ids(const uint64_t &x, const uint64_t &y) {
        return (uint128_t{x} << 64) | y;
    }
}

