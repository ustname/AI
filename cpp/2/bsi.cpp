#include "bsi.hpp"

int is_declaration(char* str)
{
    char* declaration[4] = {"int", "float", "bool", "string"};

    for (size_t i = 0; i < 4; i++)
    {
        if (sen_comp(str, declaration[i]))
        {
            return i+1;
        }
    }
    return 0;
}

int bsi::read(char* str)
{
    str = skip_at(str, " ");
    int data_type = is_declaration(str);

    if (data_type == 0)
    {
        std::cout << "Undefined data type \"";
        print_len(str, stop_at(str, " "));
        std::cout << "\"\n";
        exit(-1);
    }

    str += stop_at(str, " ") + 1;
    
    if (data_type < 0)
    {
        data_type = -data_type;
    } else if (data_type < 4)
    {
        char var_name[100];
        strncpy(var_name, str, name_len(str));
        //_main->struct_create(var_name, );
    }
    
    
}