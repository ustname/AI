#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <memory.h>
#include <windows.h>
#include "datahandle.h"
#ifndef FUNCTION__H
#define FUNCTION__H

typedef struct FUN_ARGS
{
    uint64_t arg_count;
    V_DATA* arg;
}FUN_ARGS;


int fun_call(FUNCTION*, void*, void*);

#endif