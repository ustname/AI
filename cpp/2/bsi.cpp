#include "bsi.hpp"
#include "include/sen.hpp"

enum UNIT_ENUM{
    UNIT_NAME,
    UNIT_OPERATOR,
    UNIT_VALUE,
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
        this->info2 = info2;
        this->info3 = info3;
    }

    void dump()
    {
        switch (this->info1)
        {
        case UNIT_NAME:
            std::cout << "Name: " << this->info2.str << std::endl;
            break;

        case UNIT_OPERATOR:
            std::cout << "Operator: " << this->info2.str[0];
            if (this->info3.i == 2)
            {
                std::cout << this->info2.str[1] << std::endl;
            }else
            {
                std::cout << std::endl;
            }
            break;

        case UNIT_VALUE:
            std::cout << "Value: " << get_datatype(this->info2.i) << " = ";
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
        std::cout << std::endl;
        default:
            break;
        }
        
    }

};

/*

*/

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
        OP_DOUBLECOLON = ':',
        // Bracket
        OP_BRACKET_LEFT  = '(',
        OP_BRACKET_RIGHT = ')',
        OP_SQUAREBRACKET_LEFT  = '[',
        OP_SQUAREBRACKET_RIGHT = ']',
        OP_CURLYBRACKET_LEFT  = '{',
        OP_CURLYBRACKET_RIGHT = '}',
};

enum OPERATOR_TYPE{
    OP_TYPE_ARITHMETIC = 1,
    OP_TYPE_LOGIC ,
    OP_TYPE_SPECIALCHAR ,
};

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

int read_value(char* str, var& stored)
{
    if (*str == '\"') // string
    {
        int value_len = stop_at(++str, "\"");
        stored.type = TYPE_STRING;
        char* ptr = strndup(str, value_len);
        stored.write(QQs(ptr));
        free(ptr);
    } else if (str[0] == 't' || str[0] == 'f')
    {
        int ret;
        var temp = var(0, TYPE_BOOL);
        if (sen_comp(str, "true"))
        {
            temp.write(QQi(true));
        }else if (sen_comp(str, "false"))
        {
            temp.write(QQi(false));
        }
    }else // number (int and float)
    {
        int ret;
        var temp = var();
        ret = guess_number(str, temp);
        stored.write(temp);
    }
    
    return 0;
}

int read_operator(char* str, int& len)
{
    len = 1;
    switch (str[0])
    {
    case '+':
        return OP_PLUS;
    case '-':
        return OP_MINUS;
    case '*':
        return OP_MUL;
    case '/':
        return OP_DIV;
    case '%':
        return OP_MOD;
    
    case '=':
        if (str[1] == '=')
        {
            len = 2; 
            return OP_ISEQUAL;
        }else
        {
            return OP_EQUAL;
        }
    
    case '<':
        if (str[1] == '=')
        {            //std::cout << "kmijbhgtfv: " << str[1];
            len = 2;
            return OP_ISLESSEQUAL;
        }else
        {
            return OP_ISLESS;
        }

    case '>':
        if (str[1] == '=')
        {
            len = 2;
            return OP_ISMOREEQUAL;
        }else
        {
            return OP_ISMORE;
        }
        
    case '!':
        if (str[1] = '=')
        {
            len = 2;
            return OP_ISNOTEQUAL;
        }else
        {
            return OP_NOT;
        }

    case '.':
        return OP_DOT;

    case '(':
        return OP_BRACKET_LEFT;

    case ')':
        return OP_BRACKET_RIGHT;

    case '[':
        return OP_SQUAREBRACKET_LEFT;

    case ']':
        return OP_SQUAREBRACKET_RIGHT;

    case '{':
        return OP_CURLYBRACKET_LEFT;

    case '}':
        return OP_CURLYBRACKET_RIGHT;
    
    default:
        //std::cout << "Unknown operator " << str[0] << str[1] << std::endl;
        break;
    }
    return 0;
}

int right_value(char* str, var& stored)
{
    str = skip_at(str, " ");
    
    
}

int read_line(char* str, std::vector<unit>& line)
{
    int i = 0;
    int last = stop_at(str, "\n")+1;
    str = strndup(str, last);
    int read_line_name_counter = 0;
    char* read_line_name_first = 0;
    int op = 0;
    int op_len = 0;
    int read_line_value_counter = 0;
    int read_line_value_string_counter = 0;
    char* read_line_value_number_last = 0;
    int read_line_value_number_counter = 0;
    int read_line_value_number_is_float = 0;

    read_line_main:
    while (i < last)
    {
        if (str[i] == ' ')
        {
            ++i;
            continue;
        }

        // Reading variable or keyword
        if (str[i] >= 'A' && str[i] <= 'Z')
        {
            goto read_line_name;
        }else if (str[i] >= 'a' && str[i] <= 'z')
        {
            goto read_line_name;
        }else if (str[i] == '_')
        {
            goto read_line_name;
        }

        // Reading value
        if (str[i] == '\"')
        {
            ++i; //
            goto read_line_value_string;
        }if (str[i] >= '0' && str[i] <= '9')
        {//std::cout << "ikjuhbygvtcd";
            goto read_line_value_number;
        }

        // Reading operator
        if (   (  op = read_operator(&str[i], op_len)  )   )
        {//std::cout << "kmjnuhbyvt";
            line.push_back(unit(UNIT_OPERATOR, QQs(strndup(str+i, op_len)), QQi(op_len)));
            i += op_len;
            continue;
        }

        
        ++i;
    }
    goto read_line_exit;

    read_line_name:
    read_line_name_first = &str[i];
    read_line_name_counter = 0;
    while (++i < last)
    {
        ++read_line_name_counter;
        if (str[i] == ' ')
        {
            line.push_back(  unit(  UNIT_NAME, QQs( strndup(read_line_name_first, read_line_name_counter) ), QQi(0)  )  );
            goto read_line_main;
        }

        if (str[i] >= '0' && str[i] <= '9')
        {
            continue;
        }else if (str[i] >= 'A' && str[i] <= 'Z')
        {
            continue;
        }else if (str[i] >= 'a' && str[i] <= 'z')
        {
            continue;
        }else if (str[i] == '_')
        {
            continue;
        }

        if (str[i] == '\0')
        {
            line.push_back(  unit(  UNIT_NAME, QQs( strndup(read_line_name_first, read_line_name_counter) ), QQi(0)  )  );
            goto read_line_main;
        }
        

        std::cout << "Unknown token " << str[i];
        exit(-1);
    }


    read_line_value_string:
    read_line_value_string_counter = 0;
    while (++i < last)
    {
        ++read_line_value_string_counter;
        if (str[i] == '\"')
        {
            if (read_line_value_string_counter == 0)
            {
                line.push_back(unit(UNIT_VALUE, QQi(TYPE_STRING), QQs( (char*)malloc(1) ) ));
            }else
            {
                line.push_back(unit(UNIT_VALUE, QQi(TYPE_STRING), QQs(strndup(&str[i] - read_line_value_string_counter, read_line_value_string_counter) ) ));
            }
            i += read_line_value_string_counter-1;
            goto read_line_main;
        }
    }

    read_line_value_number:
    read_line_value_number_last = (&str[i]) - 1;
    read_line_value_number_is_float = 0;
    while (++i < last)
    {
        if (str[i] >= '0' && str[i] <= '9')
        {//std::cout << "iunbgtfvdx";
            ++i;
            continue;
        }else if (str[i] == '.')
        {
            if (read_line_value_number_is_float)
            {
                std::cerr << "Invalid float writing";
                exit(-1);
            }
            
            ++read_line_value_number_is_float;
            ++i;
            continue;
        }
        break;
    }
//std::cout << read_line_value_number_last[0];
    if (read_line_value_number_is_float)
    {
        double read_line_value_number_float = atof(read_line_value_number_last);
        line.push_back(unit(UNIT_VALUE, QQi(TYPE_FLOAT), QQf(read_line_value_number_float)));
    }else
    {
        int64_t read_line_value_number_integer = atoll(read_line_value_number_last);
        line.push_back(unit(UNIT_VALUE, QQi(TYPE_INT), QQi(read_line_value_number_integer)));
    }
    
    goto read_line_main;
    

    read_line_exit:

    if (line.size() == 0)
    {
        return 1;
    }


    return 0;

    //str = skip_at(str, " ");
    //uint64_t str_len = stop_at(str, "\n");
    //uint64_t pos = 0;
    //line.clear();
    //int ret;
    //ret = get_datatype_i(str);
    //if (ret != 0)
    //{
    //    stop_at(str, " ");
    //    line.push_back(unit(UNIT_DECLARE, QQi(TYPE_INT), QQi(0)));
    //    int len = name_len(str);
    //    line.push_back(unit(UNIT_VARIABLE, QQs(str), QQi(len)));
    //}
    //
    //while (pos < str_len)
    //{
    //    
    //}
    

}

int bsi::read(var* _main, char* str)
{
    std::vector<unit> line;

    read_line(str, line);

    for (size_t i = 0; i < line.size(); i++)
    {
        std::cout << i << " ";
        line[i].dump();
    }
    

    /*
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
    } else if (data_type <= 4)
    {
        char var_name[100];
        int var_name_len = name_len(str);
        strncpy(var_name, str, var_name_len);
        var_name[var_name_len] = 0;
        var* v;
        switch (data_type)
        {
        case 1:
            v = _main->struct_create(var_name, TYPE_INT);
            break;

        case 2:
            v = _main->struct_create(var_name, TYPE_FLOAT);
            break;

        case 3:
            v = _main->struct_create(var_name, TYPE_BOOL);
            break;

        case 4:
            v = _main->struct_create(var_name, TYPE_STRING);
            break;
        
        default:
            std::cout << "Unknown data type chosen " << data_type << std::endl;
            exit(-1);
        }
        
        str = skip_at(str, " ");

        if (str == 0);
        {
            return 0;
        }
        if(read_operator(str) == OP_ISEQUAL)
        {
            str = skip_at(str, " ");
            var* temp;
            int ret;
            ret = name_len(str);
            if (ret == 0)
            {
                temp = new var();
                ret = read_value(str, *temp);
            }else
            {
                char* var_name = strndup(str, ret);
                temp = _main->struct_find(var_name);
            }
            
            
            
        }
        
        
        


    }
    */
    return 0;
}