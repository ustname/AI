#include <iostream>
#include <vector>
#include <string>
#include <cstring>

#pragma once

#define DATAQ(X) (DATA){.byte64 = X}
#define DATAQQ(X) (DATA){X}
#define DATAPQ(X) (DATA){.vp = X}

enum DATATYPE{
    VOID0 = 0, PTR = 1,
    UI8 = 2, UI16 = 4, UI32 = 6, UI64 = 8,
    SI8 = 10, SI16 = 12, SI32 = 14, SI64 = 16,
    CHAR = UI8, SHORT = SI16, INT = SI32, SINGLEF = 18, DOUBLEF = 20, 
    CHARP = 3, INTP = 15, FLOATP = 19, DOUBLEP = 21, VOIDP = 1,
    TYPE_VAR = 23, TYPE_PROP = 25, TYPE_SEN = 27,
};
/*
enum PROP_EDIT{
    PROP_EDIT_FREE = 0,
    PROP_EDIT_CLEAN = 1,
    PROP_EDIT_NAME,
    PROP_EDIT_VALUE,
    PROP_EDIT_WRITE,
    PROP_EDIT_READ,
};
*/

union DATA
{
    uint64_t byte64;
    uint32_t byte32[2];
    uint16_t byte16[4];
    uint8_t  byte8 [8];
    float    f[2];

    //int64_t i;
    double d;
    char* cp;
    void* vp;

    //al::var* var;
    //al::prop* prop;
    //FUN* fun;
    //SEN* sen;
};