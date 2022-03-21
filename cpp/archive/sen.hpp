#include "data.hpp"

namespace al
{

    class sen
    {

    public:
        char* str;
        int64_t length;
        int8_t type;

        sen(char* str)
        {
            this->str = strdup(str);
            this->length = strlen(str);
        }

        char* skip(char* token);
        char* stop(char* token);
        
        int opencmd(int maxlen);
    };

};