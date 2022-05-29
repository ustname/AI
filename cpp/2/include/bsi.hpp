#include "var.hpp"

#pragma once

namespace bsi
{
    enum FUNCTION_TYPE {
        FUNCTION_UNDEFINED,
        CPP_FUNCTION,
        BSI_FUNCTION,
        IBA_FUNCTION
    };

    extern var* bsi_root;
    var* init();
    int read(var& stack, char* str);
    var* search(char* member, int& src);
    var* push_function(const char* name, var& member, char* str);
    int push_class(var& new_class);
    var* declare_class(const char* new_var, var* class_var);
}

enum BSI_VAR_SOURCE{
    BSI_FROM_BASE,
    BSI_FROM_ENUM,
    BSI_FROM_CLASS,
    BSI_FROM_FUNCTION,
};

enum OPERATOR_TYPE{
    OP_TYPE_ARITHMETIC = 1,
    OP_TYPE_LOGIC ,
    OP_TYPE_SPECIALCHAR ,
};

enum UNIT_ENUM{
    UNIT_NAME = 1,
    UNIT_OPERATOR,
    UNIT_VALUE,
};

enum OPERATOR_ENUM{

    // Arithmetic
    OP_EQUAL = '=',
    OP_PLUS = '+',
    OP_MINUS = '-',
    OP_MUL = '*',
    OP_DIV = '\\',
    OP_MOD = '%',

    // Logic
    OP_ISEQUAL,
    OP_ISNOTEQUAL,
    OP_ISLESS = '<',
    OP_ISMORE = '>',
    OP_ISLESSEQUAL,
    OP_ISMOREEQUAL,
    OP_NOT = '!',

    // Special char
        OP_DOT = '.',
        OP_COMMA = ',',
        OP_DOUBLECOLON = ':',
        // Bracket
        OP_BRACKET_LEFT  = '(',
        OP_BRACKET_RIGHT = ')',
        OP_SQUAREBRACKET_LEFT  = '[',
        OP_SQUAREBRACKET_RIGHT = ']',
        OP_CURLYBRACKET_LEFT  = '{',
        OP_CURLYBRACKET_RIGHT = '}',
};

class unit
{
public:
    uint8_t info1 = 0;
    variant info2 = {0};
    variant info3 = {0};
    unit(uint8_t info1, variant info2, variant info3)
    {
        this->info1 = info1;

        switch (info1)
        {
        case UNIT_NAME:
            this->info2.str = info2.str; //printf("(%p)", this->info2.str);
            break;
        
        default:
            this->info2 = info2;
            break;
        }

        
        this->info3 = info3;
    }

    void dump()
    {
        char* temp_value_type;
        switch (this->info1)
        {
            case UNIT_NAME:
            std::cout << "Name: " << this->info2.str;
            //printf("{%p}\n", this->info2.str);
            //std::cout << "Name: " << this->info2.str << std::endl;
            break;

            case UNIT_OPERATOR:
            std::cout << "Operator: ";
            switch (this->info2.i)
            {
                case OP_ISEQUAL:
                std::cout << "==";
                break;

                case OP_ISNOTEQUAL:
                std::cout << "!=";
                break;

                case OP_ISMOREEQUAL:
                std::cout << ">=";
                break;

                case OP_ISLESSEQUAL:
                std::cout << "<=";
                break;
            
                default:
                std::cout << (char)this->info2.i;
                break;
            }
            //std::cout  << " nowrong";
            break;

            case UNIT_VALUE:
            std::cout << "Value: " ;
            
            switch (this->info2.i)
            {
            case TYPE_INT:
                std::cout << this->info3.i;
                break;

            case TYPE_FLOAT:
                std::cout << this->info3.f;
                break;

            case TYPE_BOOL:
                if (this->info3.b)
                {
                    std::cout << "True";
                }else
                {
                    std::cout << "False";
                }
                break;

            case TYPE_STRING:
                std::cout << "\"" << this->info3.str << "\"";
                break;

            default:
                break;
            }
            break;
            case 0:
            std::cout << "Empty";
            return;

            default:
            std::cout << "Invalid code " << (int64_t)this->info1;
            break;
        }
        return;
    }

    void clear()
    {
        switch (this->info1)
        {
    
        case UNIT_NAME:
        //std::cout << "clear name here";
            delete this->info2.str;
            break;

        case UNIT_VALUE:
            switch (this->info2.i)
            {
            case TYPE_STRING:
                delete this->info3.str;
                this->info3.i = 0;
                break;
            
            default:
                break;
            }
        
        case 0:
            break;

        default:
            break;
        }

        this->info1 = 0;
    }

};

char* read_line(char* src, std::vector<unit>& line, bool& _end_of_file);

char* read_value_string(var& root, std::vector<unit>& line, int offset, int64_t& ret_len);

double read_value_float(var& root, std::vector<unit>& line, int& offset);

int64_t read_value_int(var& root, std::vector<unit>& line, int& offset);

void unit_clear(std::vector<unit>& line);

void unit_print(std::vector<unit>& line);

enum GET_VAR_INFO{
    GET_VAR_INFO_VAR = 1,
    GET_VAR_INFO_ARRAY,
};

class _get_var_info{
public:
    char type;
    int64_t offset;
    _get_var_info(){
        type = 0;
        offset = -1;
    }
};

extern var* get_var(var& root, std::vector<unit>& line, int& offset, _get_var_info& info);
