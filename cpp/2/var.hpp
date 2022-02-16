#include "data.hpp"

class var
{
private:
    uint8_t info1;
    uint16_t info2;
    uint32_t info3;
public:
    char* name;
    uint8_t type;
    
    union 
    {
        variant _data;
        variant data1;
        struct block* block;
        
    };
    
    union 
    {
        uint64_t length;
        int64_t count;
        variant data2;
    };
    

    struct block* operator[](int index);
    var* operator[](char* name);
    

    // Single data
    int write(variant data);
    struct block* read();
    // Array
    int arr_write(int index, variant data);
    int64_t arr_find(variant data);
    // Structure
    int struct_write(char* member, variant data);
    int struct_write(char* member, variant data1, variant data2);
    var* struct_create(char* member, uint8_t type);
    var* struct_find(char* member);
    // Buffer
    int buf_write(void* data, int64_t len, int flag);

    //var* struct_write(char* member, _data data);

    var();
    var static init(char* member, uint8_t type);
    var(char* name, uint8_t type);
    var(char* name, uint8_t type, int64_t arr_num);
    ~var();
};

