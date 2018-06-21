#pragma once

#include <string>

using std::string;

namespace utils {
    int count_spaces(string str) {
        int spaces = 0;
        for (int i = 0; i < str.length(); i++) {
            if (isspace(str[i]))
                spaces++;
        }
        return spaces;
    }
}

