#include <iostream>
#include <string.h>
#include <fstream>

#pragma once

#define QQi(X) (variant){.i = X}
#define QQs(X) (variant){.str = X}
#define QQf(X) (variant){.f = X}

//std::ostream& operator<<(std::ostream& stream, bool b)
//{
//    if(b)
//    {
//        stream << "true";
//    }else
//    {
//        stream << "false";
//    }
//}

class var;

union variant
{
    int64_t i;
    double f;
    char* str;
    uint8_t* buf;
    void* ptr;
    bool b;
    var* var;
    variant* variant;
};

struct block
{
    variant data1;
    variant data2;
};


enum DATATYPE
{
    TYPE_UNKNOWN = 0,
    TYPE_ARRAY = 1,
    TYPE_REFERENCE = 2,
    TYPE_STRUCT = 4,
    TYPE_BOOL = 8,
    TYPE_INT = 12,
    TYPE_FLOAT = 16,
    TYPE_STRING = 20,
    TYPE_BUFFER = 24,
};

enum BUFFER_WRITE
{
    BUFFER_WRITE_OVER,
    BUFFER_WRITE_APPEND,
};