
#include "data.hpp"

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
            this->flags = VAR_FLAG_USED;
            this->version = 0;
        }
        
        var(char* name, int64_t stack_num)
        {
            this->name = strdup(name);
            this->flags = VAR_FLAG_USED | VAR_FLAG_STACK;
            this->version = 0;

            this->write("var_num", stack_num);
            this->write("data", TYPE_VAR, stack_num); 
            this->write("type", "stack var");
        }

        al::prop* findprop(char*);
        int write(char* prop_name, char* data);
        int write(char* prop_name, int64_t data);
        int write(char* prop_name, uint8_t type, uint64_t num);
        int write(char* prop_name, void* data, uint64_t len);

        // Stack Section
        al::var* find(char* name);
        al::var* create(char* name);

    private:
        //var();
    };

}

enum ENUM_WRITE_TYPE
{
    MEMALLOC = 1,
    MEMCOPY,
    MEMPOINTER,
};