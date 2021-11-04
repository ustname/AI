#include "function.h"
#include "variable.h"

struct FUNCTION_VAULT
{
    FUN *funp;
    uint32_t fun_num;
    uint32_t stackindex;

    struct FUNCTION_VAULT* next;
    struct FUNCTION_VAULT* prev;
}*FUN_vault;


int fun_call(FUNCTION* fun, void* dst, void* src)
{
    return fun(dst, src);
}

void *function_handle;

void fun_open(char* filename)
{
    if(function_handle != 0)
    {
        FreeLibrary((HMODULE) function_handle);
    }
    function_handle = (void *) LoadPackagedLibrary(filename, 0);
}

FUN* fun_write(char* name)
{
    FUN* fun;
    void *symbol = (void *) GetProcAddress((HMODULE) function_handle, name);
    return symbol;
}