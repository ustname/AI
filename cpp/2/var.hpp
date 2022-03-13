#include "include/data.hpp"

#pragma once

class var
{

public:
    char* name;
    uint8_t type;
private:
    uint8_t info1;
    uint16_t info2;
    uint32_t info3;
public:
    union 
    {
        variant _data;
        variant data1;
        int64_t length; //This is data 1
        int64_t count; //This is data 1
        
    };
    
    union //This is data 2
    {
        struct block* block;
        variant data2;
    };

    variant data3;

    // Single data
    int write(variant data);
    int write(var& data);
    variant read();
    int print();
    int save(char* filename);
    // Array
    int arr_write(int index, variant data);
    int64_t arr_find(variant data);
    struct block* operator[](int index);
    // Structure
    int struct_write(char* member, variant data);
    int struct_write(char* member, variant data1, variant data2);
    var* struct_create(char* member, uint8_t type);
    var* struct_find(char* member);
    var* operator[](char* name);
    // Buffer
    int buf_write(void* data, int64_t len, int flag);

    //var* struct_write(char* member, _data data);

    var();
    var static init(char* member, uint8_t type);
    var(char* name, uint8_t type);
    var(char* name, uint8_t type, int64_t arr_num);
    var dup();
    void clear();
};

char* get_datatype(int type);
int get_datatype_i(char* type);