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
        int64_t string_length;
        int64_t int_data;
        double float_data;
        int64_t struct_count;
    };
    
    union //This is data 2
    {
        struct block* block;
        variant data2;
        char* string_data;
        char* struct_type;
    };

    union 
    {
        variant data3;
        var* struct_data;
    };
    

    // Single data
    int write(variant data);
    int write(var& data);
    variant read();
    void print();
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
    var init(char* member, uint8_t type);
    var(char* name, uint8_t type);
    var(char* name, uint8_t type, int64_t arr_num);
    var(uint8_t type, int64_t arr_num);
    var(uint8_t type);
    var* dup(char* name);
    void clear();
};

char* get_datatype(int type);
int get_datatype_i(char* type);