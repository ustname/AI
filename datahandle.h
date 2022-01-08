#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <memory.h>
#include <errno.h>

#ifndef DATAHANDLE__H
#define DATAHANDLE__H

#define DATAQ(X) (DATA){.byte64 = X}
#define DATAPQ(X) (DATA){.vp = X}

enum DATATYPE{
    VOID0 = 0, PTR = 1,
    UI8 = 2, UI16 = 4, UI32 = 6, UI64 = 8,
    SI8 = 10, SI16 = 12, SI32 = 14, SI64 = 16,
    CHAR = UI8, SHORT = SI16, INT = SI32, SINGLEF = 18, DOUBLEF = 20, 
    CHARP = 3, INTP = 15, FLOATP = 19, DOUBLEP = 21, VOIDP = 1,
    TYPE_VAR = 23, TYPE_PROP = 25, TYPE_SEN = 27,
};

typedef struct VAR VAR;
typedef struct PROP PROP;
typedef union  DATA DATA;
typedef struct FUN FUN;
typedef struct SENTENCE SEN;

union DATA
{
    uint64_t byte64;
    uint32_t byte32[2];
    uint16_t byte16[4];
    uint8_t  byte8 [8];
    float    f[2];

    int64_t i;
    double d;
    char* cp;
    void* vp;

    VAR* var;
    PROP* prop;
    FUN* fun;
    SEN* sen;
};

typedef DATA(FUNCTION)(void*, void*, void*, void*);

typedef struct FUN
{
    char* name;
    FUNCTION* fun;
    uint32_t argc;
    int type;
}FUN;



typedef struct SENTENCE
{
    char* src;
    uint32_t length;
    uint16_t argc;
    int8_t flags;
    uint8_t type;
    
    struct args
    {
        char* pos;
        uint16_t len;
        uint16_t type;
    }*args;
    
}SEN;

typedef struct PROP
{
    char* name;
    uint64_t length;
    DATA data;
    uint8_t type;
    uint8_t flags;
}PROP;

typedef struct VAR
{
    char* name;
    uint32_t flags;
    uint32_t version;

    PROP *prop;
    uint64_t prop_num;

}VAR;

//void debug(int code)
//{
//    printf("exit with code %i", code);
//    exit(code);
//}
//extern int64_t errnum = 0;

enum ERROR_CODE{
    ERR_NONE = 0,
    ERR_STACKISFULL,
};

#endif