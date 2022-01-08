#include "function.h"
#include "variable.h"
#include <windows.h>

/*
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
*/

int fun_create()
{

}

int fun_open(char* file)
{

}

void* fun_loadobject(char* sofile)
{
    
}