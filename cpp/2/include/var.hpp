#include "data.hpp"
#include "sen.hpp"

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
    union //This is data 1
    {
        variant _data;
        variant data1;
        int64_t length; 
        int64_t count; 
        int64_t string_length;
        int64_t int_data;
        double float_data;
        bool bool_data;
        int64_t struct_count;
    };
    
    union //This is data 2
    {
        variant data2;
        char* string_data;
        char* struct_type;
    };

    union //This is data 3
    {
        variant data3;
        var* struct_data;
        int64_t* arr_int;
        double* arr_float;
        bool* arr_bool;
        struct block* arr_string;
        var* arr_struct;
        void* arr_data;
    };
    

    // Single data
    int write(variant data);
    int write(var& data);
    variant read();
    variant read(int64_t index);
    int compare(var& data);
    int compare(var* data);
    void print();
    int save(const char* filename);
    // Array
    int arr_write(int index, variant data);
    int arr_write(int index, var& data);
    var* arr_struct_create(const char* member, uint8_t type, int64_t count);
    int64_t arr_find(variant data);
    variant operator[](int64_t index);
    // Structure
    int struct_write(const char* member, variant data);
    int struct_write(const char* member, const var& data);
    int struct_write(const char* member, var* data);
    int struct_write(const char* member, int64_t index, variant data);
    var* struct_create(const char* member, uint8_t type);
    var* struct_create(const char* member, uint8_t type, int64_t count);
    var* struct_find(const char* member);
    int struct_class(const var& object);
    var* struct_declare(const char* member, char* class_name);
    var* operator[](const char* name);
    // Buffer
    int buf_write(void* data, int64_t len, int flag);

    //var* struct_write(char* member, _data data);

    var();
    var init(const char* member, uint8_t type);
    var(const char* name, uint8_t type);
    var(const char* name, uint8_t type, int64_t arr_num);
    var(uint8_t type, int64_t arr_num);
    var(uint8_t type);
    int retype(uint8_t type);
    var* dup(char* name);
    void clear();
};

char* get_datatype(int type);
int get_datatype_i(char* type);