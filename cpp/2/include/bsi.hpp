#include "var.hpp"

#pragma once

namespace bsi
{
    enum FUNCTION_TYPE {
        FUNCTION_UNDEFINED,
        CPP_FUNCTION,
        BSI_FUNCTION,
        IBA_FUNCTION
    };

    extern var* bsi_root;
    var* init();
    int read(var& stack, char* str);
    var* search(char* member, int& src);
    var* function(const char* name, var& member, char* str);
    int push_class(var& new_class);
    int declare_class(const char* new_var, var& class_var);
}

enum BSI_VAR_SOURCE{
    BSI_FROM_BASE,
    BSI_FROM_ENUM,
    BSI_FROM_CLASS,
    BSI_FROM_FUNCTION,
};