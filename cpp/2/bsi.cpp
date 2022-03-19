#include "bsi.hpp"
#include "include/sen.hpp"

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
            this->info2.str = strdup(info2.str); //printf("(%p)", this->info2.str);
            break;
        
        default:
            this->info2 = info2;
            break;
        }

        
        this->info3 = info3;
    }

    void dump()
    {
        switch (this->info1)
        {
        case UNIT_NAME:
            std::cout << "Name: " << this->info2.str << std::endl;
            //printf("{%p}\n", this->info2.str);
            //std::cout << "Name: " << this->info2.str << std::endl;
            break;

        case UNIT_OPERATOR:
            std::cout << "Operator: ";
            switch (this->info2.i)
            {
            case OP_ISEQUAL:
                std::cout << "==" << std::endl;
                break;

            case OP_ISNOTEQUAL:
                std::cout << "!=" << std::endl;
                break;

            case OP_ISMOREEQUAL:
                std::cout << ">=" << std::endl;
                break;

            case OP_ISLESSEQUAL:
                std::cout << "<=" << std::endl;
                break;
            
            default:
                std::cout << (char)this->info2.i << std::endl;
                break;
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
            break;
        case 0:
            std::cout << "Empty" << std::endl;
            return;

        default:
            std::cout << "Invalid code " << (int64_t)this->info1 << std::endl;
            break;
        }
        //this->clear();
        //this->info1 = 0;
        //if (this->info1 == UNIT_NAME)
        //{
        //    std::cout << "Name: " << this->info2.str << std::endl;
        //}
        return;
    }

    void clear()
    {
        switch (this->info1)
        {
    
        case UNIT_NAME:
        std::cout << "clear name here";
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

    /*
    ~unit(){
        switch (this->info1)
        {
        case UNIT_NAME:
            delete this->info2.str;
            break;

        case UNIT_OPERATOR:
            delete this->info2.str;
            break;

        case UNIT_VALUE:
            switch (this->info2.i)
            {
            case TYPE_STRING:
                delete this->info3.str;
                break;
            }
        
        default:
            break;
        }
        //std::cout << "clear ";
    };
    */
};

void unit_print(std::vector<unit>& line)
{
    int count = line.size();//std::cout << count;
    std::cout << std::endl;
    for (size_t i = 0; i < count; i++)
    {
        std::cout << i << ". ";
        line[i].dump();
        
    }
}

void unit_clear(std::vector<unit>& line)
{
    int64_t count = line.size();

    for (size_t i = 0; i < count; i++)
    {
        //std::cout << i << line[i].info1;
        switch (line[i].info1)
        {
    
        case UNIT_NAME:
        
        //printf(" clear name (%p)", line[i].info2.str );
        //std::cout << line[i].info2.str;
            if (line[i].info2.str)
            {
                //printf(" :(%p)%s, ", line[i].info2.str, line[i].info2.str);
                delete line[i].info2.str;
                line[i].info2.i = 0;
            }
            //std::cout << "done";
            break;

        case UNIT_VALUE:
            switch (line[i].info2.i)
            {
            case TYPE_STRING:
                delete line[i].info3.str;
                line[i].info3.i = 0;
                break;
            
            default:
                break;
            }
        
        case 0:
            break;

        default:
            break;
        }
        //std::cout<< "nope";
        line[i].info1 = 0;

    }
    
}

/*  Unit structure

    UNIT_NAME:
        UNIT_NAME, string name, 0

    UNIT_OPERATOR:
        UNIT_OPERATOR, string operator, int operator length

    UNIT_VALUE:
        UNIT_VALUE, int data type, variant value

*/

enum OPERATOR_TYPE{
    OP_TYPE_ARITHMETIC = 1,
    OP_TYPE_LOGIC ,
    OP_TYPE_SPECIALCHAR ,
};

int is_declaration(char* str)
{
    char* declaration[4] = {"int", "float", "string", "bool"};

    for (size_t i = 0; i < 4; i++)
    {
        if (sen_comp(str, declaration[i]))
        {
            return i+1;
        }
    }
    return 0;
}

int declare(var& root, std::vector<unit>& line, var** right_value)
{
    if (line[0].info1 != UNIT_NAME)
    {
        return 0;
    }

    int ret = 0;
    char* declaration[4] = {"int", "float", "string", "bool"};

    ret = is_declaration(line[0].info2.str);
    //if (sen_comp(line[0].info2.str, declaration[0]))
    //{
    //    
    //}else if (sen_comp(line[0].info2.str, declaration[1]))
    //{
    //    
    //}else if (sen_comp(line[0].info2.str, declaration[2]))
    //{
    //    
    //}else if (sen_comp(line[0].info2.str, declaration[3]))
    //{
    //    
    //}
    
    if (ret)
    {
        if (line[1].info1 != UNIT_NAME)
        {
            std::cerr << "Expected an identifier" << std::endl;
            exit(-1);
        }

        var* pos = root.struct_find(line[1].info2.str);

        if (pos != nullptr)
        {
            std::cerr << "Redeclaration of " << line[1].info2.str << std::endl;
            exit(-1);
        }
        
        switch (ret)
        {
        case 1:
            *right_value = root.struct_create(line[1].info2.str, TYPE_INT);//if (line[3].info1 == UNIT_NAME)  printf(" from declare {%p} %s\n", line[3].info2.str, line[3].info2.str);
            return 1;

        case 2:
            *right_value = root.struct_create(line[1].info2.str, TYPE_FLOAT);
            return 1;

        case 3:
            *right_value = root.struct_create(line[1].info2.str, TYPE_STRING);
            return 1;

        case 4:
            *right_value = root.struct_create(line[1].info2.str, TYPE_BOOL);
            return 1;
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

    case ',':
        return OP_COMMA;

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

int64_t read_value_int(var& root, std::vector<unit>& line, int offset)
{
    double value1;
    double value2 = 0;
    int op_before = 0;
    var* value_from_var;

    //value1 = line[offset].info1

    /// Opening
    if (line[offset].info1 == UNIT_NAME)
    {
        //printf("{%p}", line[offset].info2.str);
        //std::cout << line[offset].info2.str;
        value_from_var = root.struct_find(line[offset].info2.str);
        if (value_from_var->type == TYPE_INT)
        {
            value1 = value_from_var->data1.i;
        }
        ++offset;
        if (offset == line.size())
        {
            goto read_value_int_final;
        }
    }else if (line[offset].info1 == UNIT_VALUE)
    {
        if (line[offset].info2.i == TYPE_INT)
        {
            value1 = line[offset].info3.i;
        }else if (line[offset].info2.i == TYPE_FLOAT)
        {
            value1 = line[offset].info3.f;
        }
        ++offset;
        if (offset == line.size())
        {
            goto read_value_int_final;////
        }
    }
    
    
    read_value_int_top:
    ////line[offset].dump();
    if (line[offset].info1 == UNIT_OPERATOR)
    {
        /////////// INT PLUS
        if (line[offset].info2.i == OP_PLUS)
        {
            ++offset;
            if (offset == line.size())
            {
                std::cerr << "Expected an expression" << std::endl;
                exit(-1);
            }

            /// READ value
            if (line[offset].info1 == UNIT_NAME)
            {
                value_from_var = root.struct_find(line[offset].info2.str);
                if (value_from_var->type == TYPE_INT)
                {
                    value2 = value_from_var->data1.i;
                }else if (value_from_var->type == TYPE_FLOAT)
                {
                    value2 = value_from_var->data1.f;
                }
            }else if (line[offset].info1 == UNIT_VALUE)
            {
                if (line[offset].info2.i == TYPE_INT)
                {
                    value2 = line[offset].info3.i;
                }else if (line[offset].info2.i == TYPE_FLOAT)
                {
                    value2 = line[offset].info3.f;//std::cout << line.size();
                }
            }
            //std::cout << "jinuhbygvt";

            read_value_int_plus:
            ++offset;
            if (offset == line.size())
            {
                value1 += value2;
                goto read_value_int_final;
            }
            /////////// INT PLUS MUL
            if (line[offset].info2.i == OP_MUL)
            {
                ++offset;
                if (offset == line.size())
                {
                    std::cerr << "Expected an expression" << std::endl;
                    exit(-1);
                }
    
                /// READ value
                if (line[offset].info1 == UNIT_NAME)
                {
                    value_from_var = root.struct_find(line[offset].info2.str);
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 *= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 *= value_from_var->data1.f;
                    }
                }else if (line[offset].info1 == UNIT_VALUE)
                {
                    if (line[offset].info2.i == TYPE_INT)
                    {
                        value2 *= line[offset].info3.i;
                    }else if (line[offset].info2.i == TYPE_FLOAT)
                    {
                        value2 *= line[offset].info3.f;
                    }
                }
                goto read_value_int_plus;
            }else if (line[offset].info2.i == OP_DIV)
            {
                ++offset;
                if (offset == line.size())
                {
                    std::cerr << "Expected an expression" << std::endl;
                    exit(-1);
                }
    
                /// READ value
                if (line[offset].info1 == UNIT_NAME)
                {
                    value_from_var = root.struct_find(line[offset].info2.str);
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 /= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 = value_from_var->data1.f;
                    }
                }else if (line[offset].info1 == UNIT_VALUE)
                {
                    if (line[offset].info2.i == TYPE_INT)
                    {
                        value2 /= line[offset].info3.i;
                    }else if (line[offset].info2.i == TYPE_FLOAT)
                    {
                        value2 /= line[offset].info3.f;
                    }
                }
                goto read_value_int_plus;
            }else if (line[offset].info2.i == OP_PLUS)
            {
                ++offset;
                if (offset == line.size())
                {
                    std::cerr << "Expected an expression" << std::endl;
                    exit(-1);
                }
    
                /// READ value
                if (line[offset].info1 == UNIT_NAME)
                {
                    value_from_var = root.struct_find(line[offset].info2.str);
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 += value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 += value_from_var->data1.f;
                    }
                }else if (line[offset].info1 == UNIT_VALUE)
                {
                    if (line[offset].info2.i == TYPE_INT)
                    {
                        value2 += line[offset].info3.i;
                    }else if (line[offset].info2.i == TYPE_FLOAT)
                    {
                        value2 += line[offset].info3.f;
                    }
                }
                goto read_value_int_plus;
            }else if (line[offset].info2.i == OP_MINUS)
            {
                ++offset;
                if (offset == line.size())
                {
                    std::cerr << "Expected an expression" << std::endl;
                    exit(-1);
                }
    
                /// READ value
                if (line[offset].info1 == UNIT_NAME)
                {
                    value_from_var = root.struct_find(line[offset].info2.str);
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 -= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 = value_from_var->data1.f;
                    }
                }else if (line[offset].info1 == UNIT_VALUE)
                {
                    if (line[offset].info2.i == TYPE_INT)
                    {
                        value2 -= line[offset].info3.i;
                    }else if (line[offset].info2.i == TYPE_FLOAT)
                    {
                        value2 -= line[offset].info3.f;
                    }
                }
                goto read_value_int_plus;
            }
            
            
        }
        /////////// INT MINUS
        else if (line[offset].info2.i == OP_MINUS)
        {
            ++offset;
            if (offset == line.size())
            {
                std::cerr << "Expected an expression" << std::endl;
                exit(-1);
            }

            /// READ value
            if (line[offset].info1 == UNIT_NAME)
            {
                value_from_var = root.struct_find(line[offset].info2.str);
                if (value_from_var->type == TYPE_INT)
                {
                    value2 = value_from_var->data1.i;
                }else if (value_from_var->type == TYPE_FLOAT)
                {
                    value2 = value_from_var->data1.f;
                }
            }else if (line[offset].info1 == UNIT_VALUE)
            {
                if (line[offset].info2.i == TYPE_INT)
                {
                    value2 = line[offset].info3.i;
                }else if (line[offset].info2.i == TYPE_FLOAT)
                {
                    value2 = line[offset].info3.f;//std::cout << line.size();
                }
            }
            

            read_value_int_minus:
            ++offset;
            if (offset == line.size())
            {
                value1 -= value2;
                goto read_value_int_final;
            }
            /////////// INT PLUS MUL
            if (line[offset].info2.i == OP_MUL)
            {
                ++offset;
                if (offset == line.size())
                {
                    std::cerr << "Expected an expression" << std::endl;
                    exit(-1);
                }
    
                /// READ value
                if (line[offset].info1 == UNIT_NAME)
                {
                    value_from_var = root.struct_find(line[offset].info2.str);
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 *= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 = value_from_var->data1.f;
                    }
                }else if (line[offset].info1 == UNIT_VALUE)
                {
                    if (line[offset].info2.i == TYPE_INT)
                    {
                        value2 *= line[offset].info3.i;
                    }else if (line[offset].info2.i == TYPE_FLOAT)
                    {
                        value2 *= line[offset].info3.f;
                    }
                }
                goto read_value_int_minus;
            }else if (line[offset].info2.i == OP_DIV)
            {
                ++offset;
                if (offset == line.size())
                {
                    std::cerr << "Expected an expression" << std::endl;
                    exit(-1);
                }
    
                /// READ value
                if (line[offset].info1 == UNIT_NAME)
                {
                    value_from_var = root.struct_find(line[offset].info2.str);
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 /= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 = value_from_var->data1.f;
                    }
                }else if (line[offset].info1 == UNIT_VALUE)
                {
                    if (line[offset].info2.i == TYPE_INT)
                    {
                        value2 /= line[offset].info3.i;
                    }else if (line[offset].info2.i == TYPE_FLOAT)
                    {
                        value2 /= line[offset].info3.f;
                    }
                }
                goto read_value_int_minus;
            }else if (line[offset].info2.i == OP_PLUS)
            {
                ++offset;
                if (offset == line.size())
                {
                    std::cerr << "Expected an expression" << std::endl;
                    exit(-1);
                }
    
                /// READ value
                if (line[offset].info1 == UNIT_NAME)
                {
                    value_from_var = root.struct_find(line[offset].info2.str);
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 -= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 = value_from_var->data1.f;
                    }
                }else if (line[offset].info1 == UNIT_VALUE)
                {
                    if (line[offset].info2.i == TYPE_INT)
                    {
                        value2 -= line[offset].info3.i;
                    }else if (line[offset].info2.i == TYPE_FLOAT)
                    {
                        value2 -= line[offset].info3.f;
                    }
                }
                goto read_value_int_minus;
            }else if (line[offset].info2.i == OP_MINUS)
            {
                ++offset;
                if (offset == line.size())
                {
                    std::cerr << "Expected an expression" << std::endl;
                    exit(-1);
                }
    
                /// READ value
                if (line[offset].info1 == UNIT_NAME)
                {
                    value_from_var = root.struct_find(line[offset].info2.str);
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 += value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 = value_from_var->data1.f;
                    }
                }else if (line[offset].info1 == UNIT_VALUE)
                {
                    if (line[offset].info2.i == TYPE_INT)
                    {
                        value2 += line[offset].info3.i;
                    }else if (line[offset].info2.i == TYPE_FLOAT)
                    {
                        value2 += line[offset].info3.f;
                    }
                }
                goto read_value_int_minus;
            }
            
            

        
        }
        /////////// INT MUL
        else if (line[offset].info2.i == OP_MUL)
        {//std::cout << "ueueue";
            ++offset;
            if (offset == line.size())
            {
                std::cerr << "Expected an expression" << std::endl;
                exit(-1);
            }

            /// READ value
            if (line[offset].info1 == UNIT_NAME)
            {
                value_from_var = root.struct_find(line[offset].info2.str);
                if (value_from_var->type == TYPE_INT)
                {
                    value2 = value_from_var->data1.i;
                }else if (value_from_var->type == TYPE_FLOAT)
                {
                    value2 = value_from_var->data1.f;
                }
            }else if (line[offset].info1 == UNIT_VALUE)
            {
                if (line[offset].info2.i == TYPE_INT)
                {
                    value2 = line[offset].info3.i;
                }else if (line[offset].info2.i == TYPE_FLOAT)
                {
                    value2 = line[offset].info3.f;//std::cout << line.size();
                }
            }

            value1 *= value2;
            ++offset;
            if (offset == line.size())
            {
                goto read_value_int_final;
            }else
            {
                goto read_value_int_top;
            }
        }
        /////////// INT DIV
        else if (line[offset].info2.i == OP_DIV)
        {
            ++offset;
            if (offset == line.size())
            {
                std::cerr << "Expected an expression" << std::endl;
                exit(-1);
            }

            /// READ value
            if (line[offset].info1 == UNIT_NAME)
            {
                value_from_var = root.struct_find(line[offset].info2.str);
                if (value_from_var->type == TYPE_INT)
                {
                    value2 = value_from_var->data1.i;
                }else if (value_from_var->type == TYPE_FLOAT)
                {
                    value2 = value_from_var->data1.f;
                }
            }else if (line[offset].info1 == UNIT_VALUE)
            {
                if (line[offset].info2.i == TYPE_INT)
                {
                    value2 = line[offset].info3.i;
                }else if (line[offset].info2.i == TYPE_FLOAT)
                {
                    value2 = line[offset].info3.f;//std::cout << line.size();
                }
            }

            value1 /= value2;
            ++offset;
            if (offset == line.size())
            {
                goto read_value_int_final;
            }else
            {
                goto read_value_int_top;
            }
        }else
        {
            line[offset].dump();
            std::cerr << " are not allowed" <<std::endl;
            exit(-1);
        }
        
    }
    
    
    read_value_int_final:
    return value1;
}

int right_value(var& root, std::vector<unit>& line, int offset, var& stored)
{
    int data_type;
    //variant& _data = stored.data1;
    var* temp;

    //switch (line[offset].info1)
    //{
//
    //case UNIT_OPERATOR:
    //    std::cerr << "Expected an expression" << std::endl;
    //    exit(-1);
    //    break;
//
    //case UNIT_NAME:
    //    temp = root.struct_find(line[offset].info2.str);
    //    if (temp == nullptr)
    //    {
    //        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
    //        exit(-1);
    //    }
    //    data_type = temp->type;
    //    break;
//
    //case UNIT_VALUE:
    //    data_type = line[offset].info2.i;
    //    break;
//
    //}

    //if (stored.type != data_type)
    //{
    //    std::cerr << "Expected " << get_datatype(stored.type) << " but the data type is " << get_datatype(data_type) << std::endl;
    //    exit(-1);
    //}
    data_type = stored.type;
    variant value1;
    variant value2;
    int mul_or_div_before = 0;
    switch (data_type)
    {
    case TYPE_INT: //printf(" right value {%p} %s\n", line[offset].info2.str, line[offset].info2.str);
        value1.i = read_value_int(root, line, offset);
        
        stored.write( value1 ); //printf("olkijuhygt %i", stored.read().i);
        break;

    case TYPE_FLOAT:
        stored.write( QQf(line[offset].info3.f) );
        break;

    case TYPE_STRING:
        stored.write( QQs(line[offset].info3.str) );
        break;

    case TYPE_BOOL:
        stored.write( QQi(line[offset].info3.b) );
        break;
    
    default:
        break;
    }
    
    
    return 1;
}

int read_line(char* str, std::vector<unit>& line)
{
    //printf("{%p} {%i}", str, str[last_add]);printf("{%i} last = %i ", str[last-1], last);
    if (*str == '\0')
    {
        //
        return 0;
    }
    line.clear();
    //std::cout << line.size();
    int i = 0;
    int last_add = skip_at(str, " \n") - str;
    str += last_add;//std::cout << "no eerororo";printf(" (%p) %i ", str, last_add);
    if (*str == '\0')
    {
        //std::cout << "kjinuhbyvtfcrdx";
        return 0;
    }
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
        {
            line.push_back(unit(UNIT_OPERATOR, QQi(op), QQi(0)));//std::cout << "kmjnuhbyvt";
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

        //if (str[i] == ' ')
        //{//print_len(read_line_name_first, read_line_name_counter); 
            
            //std::cout << " at " << line.size() << ":" << (int64_t)line[line.size()-1].info1;std::cout << "lastyyy";
            
        //}

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
        
        if (str[i] > 127)
        {
            std::cout << "Unknown token " << str[i];
            exit(-1);
        }
        
        line.push_back(  unit(  UNIT_NAME, QQs( strndup(read_line_name_first, read_line_name_counter) ), QQi(0)  )  ); //printf("%i, %i", line.size(), line[0].info1); printf(" (%p)%s, ", line[line.size()-1].info2.str, line[line.size()-1].info2.str);
        goto read_line_main;
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
    read_line_value_number_last = (&str[i]);
    read_line_value_number_is_float = 0;
    while (i < last)
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
        return 0;
    }
    delete str;
    //std::cout << "out off the loop";
    //std::cout << last + last_add;
    return last + last_add-1;

    
    

}

int bsi::read(var& root, char* str)
{
    std::vector<unit> line;
    var* left_value = new var();
    var temp = var();

    int last_line_len = 0;
    int last_line_ret = 0;
    //last_line_len = read_line(str+last_line_len, line);
    //unit_print(line);
    //line.clear();
    //read_line(str+last_line_len, line);
    //unit_print(line);exit(-1);
    int i = 0;
    while (last_line_ret = read_line(str+last_line_len, line))
    {//std::cout << "counter = " << i++ << std::endl;
        
        //unit_print(line);//if (line[3].info1 == UNIT_NAME)  printf(" from bsi::read {%p} %s\n", line[3].info2.str, line[3].info2.str);
        //int ret = declare(root, line, &left_value);
        //if (ret == 1)
        //{
        //    if (line[2].info1 == UNIT_OPERATOR)
        //    {
        //        if (line[2].info2.i == OP_EQUAL)
        //        {//std::cout << (int64_t)line[3].info1;
        //            temp.type = left_value->type; 
        //            ret = right_value(root, line, 3, temp); 
        //            left_value->write(temp);
        //            //std::cout << "lol";
        //        }
        //    }
        //}
        //root.print();
        
        unit_clear(line); 
        line = std::vector<unit>();
        //line.clear();
        last_line_len += last_line_ret;//std::cout << "fine";
    }
    //unit_clear(line);
    //line.~vector();
    std::cout << "out";
    
    //root["num"]->print();

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