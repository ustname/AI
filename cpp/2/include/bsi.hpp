#include "var.hpp"

#pragma once

namespace bsi
{
    extern var* bsi_root;
    int read(var& stack, char* str);
    var* search(char* member, int& src);
}

enum BSI_VAR_SOURCE{
    BSI_FROM_BASE,
    BSI_FROM_ENUM,
    BSI_FROM_CLASS,
    BSI_FROM_FUNCTION,
};