#include <iostream>
#include <sstream>
#include <string.h>
#include <fstream>
#include <vector>

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
    int64_t length;
    char* data;
};


enum DATATYPE
{
    TYPE_UNDEFINED = 0,
    TYPE_REFERENCE = 1,
    TYPE_ARRAY = 2,
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