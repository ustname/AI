#include <iostream>
#include <string>
#include <vector>
#include "../../cpp/2/stack.hpp"
#include "bin_data.hpp"
#include "../../cpp/2/data.hpp"

void* compile(char* bin, char* error_msg);

enum INSTRUCTION_ENUM
{
    IN_RET,
    IN_SET,
    IN_DEC,
};

enum REGISTER_ENUM
{
    REGISTER_A = 1,
    REGISTER_B,
    REGISTER_C,
    REGISTER_D,
    REGISTER_E,
    REGISTER_F,
    REGISTER_G,
    REGISTER_H,
};

enum REGISTER_REG_ENUM
{
    REG_REG = 1,
    REG_VAR,
    REG_VALUE,
};

enum REGISTER_VARIABLE_ENUM
{
    REG_VAR_INDEX = 1,
    REG_VAR_OBJECT = 2,
    REG_VAR_ARRAY = 2,
};