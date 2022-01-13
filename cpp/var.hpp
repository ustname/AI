
#include "data.hpp"

#pragma once

enum PROP_FLAG{
    PROP_FLAG_EMPTY = 0b0,
    PROP_FLAG_USED = 0b1,
    PROP_FLAG_ARRAY = 0b10,
};

enum VAR_FLAG{
    VAR_FLAG_EMPTY = 0b0,
    VAR_FLAG_USED = 0b1,
    VAR_FLAG_STACK = 0b10,
};

namespace al
{

    class prop
    {
    public:
        char* name;
        uint64_t length;
        DATA data;
        uint8_t type;
        uint8_t flags;
    };

    class var
    {
    public:
        char* name;
        uint32_t flags;
        uint32_t version;
        std::vector<al::prop> prop;

        var()
        {
            this->flags = VAR_FLAG_EMPTY;
        }

        var(char* name)
        {
            this->name = strdup(name);
            this->prop;
            this->flags = VAR_FLAG_USED;
            this->version = 0;
        }
        
        var(char* name, int32_t stack_num)
        {
            this->name = strdup(name);
            this->prop;
            this->flags = VAR_FLAG_USED | VAR_FLAG_STACK;
            this->version = 0;

            this->write("var_num", stack_num);
            this->write("data", TYPE_VAR, stack_num);
            this->write("type", "stack var");
        }

        // Variable Modifier
        al::prop* findprop(char*);
        //int write(char* prop_name, int64_t data);
        int write(char* prop_name, char* data);
        int write(char* prop_name, double data);
        int write(char* prop_name, uint8_t type, uint64_t num);
        int write(char* prop_name, void* data, uint64_t len);

        int rewrite(char* prop_name, char* prop_newname);

        DATA* read(char* prop_name);

        int destroy();
        
        // Stack Section
        al::var* find(char* name);
        al::var* create(char* name);
        
        // Input/Output
        int save(char* filename);
        al::var* load(char* filename);

    private:
        //var();
    };

}

enum ENUM_WRITE_TYPE
{
    MEMALLOC = 1,
    MEMCOPY = 2,
    MEMPOINTER = 4,
    MEMTYPE = 8,
};