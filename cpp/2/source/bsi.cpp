#include "../include/bsi.hpp"
#include "../include/sen.hpp"

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
            std::cout << "Name: " << this->info2.str << std::endl;
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
        std::cout << "clear ";
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
        std::cout << std::endl;
    }
    //std::cout << "out";
}

void unit_clear(std::vector<unit>& line)
{
    int64_t count = line.size();

    for (size_t i = 0; i < count; i++)
    {
        //std::cout << i << " " << (int64_t)line[i].info1;
        switch (line[i].info1)
        {
    
        case UNIT_NAME:
        
        //printf(" clear name (%p)", line[i].info2.str );
        //std::cout << line[i].info2.str;
            if (line[i].info2.str)
            {
                
                delete line[i].info2.str;// std::cout << "freed";printf(" :(%p)%s, ", line[i].info2.str, line[i].info2.str);
                line[i].info2.i = 0;
            }
            line[i].info2.i = 0;
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
        //std::cout<< " nope ";
        line[i].info1 = 0;

    }
    //std::cout << "out";
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

char* read_value_string(var& root, std::vector<unit>& line, int offset, int64_t& ret_len);

double read_value_float(var& root, std::vector<unit>& line, int& offset);

int64_t read_value_int(var& root, std::vector<unit>& line, int& offset);

bool keyword(var& root, std::vector<unit>& line)
{
    if (line[0].info1 != UNIT_NAME)
    {
        return 0;
    }
    
    char* key = line[0].info2.str;

    if (sen_comp(key, "print"))
    {
        if (line.size() == 1)
        {
            std::cerr << "Requested variable";
            exit(-1);
        }

        if (line[1].info1 == UNIT_NAME)
        {
            var* temp = root.struct_find(line[1].info2.str);
            if (temp == nullptr)
            {
                std::cerr << "Undefined " << line[1].info2.str << std::endl;
                exit(-1);
            }
            temp->print();
            std::cout << std::endl;
        }else if (line[1].info1 == UNIT_VALUE)
        {
            switch (line[1].info2.i)
            {
            case TYPE_INT:
                std::cout << line[1].info3.i;
                break;

            case TYPE_FLOAT:
                std::cout << line[1].info3.f;
                break;
            
            case TYPE_STRING:
                std::cout << line[1].info3.str;
                break;
            
            default:
                break;
            }
            std::cout << std::endl;
        }else if (line[1].info1 == UNIT_OPERATOR)
        {
            int offset = 1;
            if (line[offset].info2.i == OP_BRACKET_LEFT)
            {
                ++offset;
                if (line.size() == offset)
                {
                    std::cerr << "Expected an expression" << std::endl;
                    exit(-1);
                }

                if (line[offset].info1 == UNIT_NAME)
                {
                    var* value_from_var = root.struct_find(line[offset].info2.str);
                    if (value_from_var == nullptr)
                    {
                        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                        exit(-1);
                    }
                    int type = value_from_var->type;
                    variant value;
                    int64_t noused;
                    switch (type)
                    {
                    case TYPE_INT:
                        value.i = read_value_int(root, line, --offset);
                        std::cout << value.i << std::endl;
                        break;

                    case TYPE_FLOAT:
                        value.f = read_value_float(root, line, --offset);
                        std::cout << value.f << std::endl;
                        break;

                    case TYPE_STRING:
                        value.str = read_value_string(root, line, --offset, noused);
                        std::cout << value.str << std::endl;
                        break;

                    default:
                        std::cout << "Nope " << type;
                        exit(-1);
                        break;
                    }

                    
                    

                }else if (line[offset].info1 == UNIT_VALUE)
                {
                    
                }
                
                
                
            }
            
        }
        
        
        
        
        
        return true;
    }else if (sen_comp(key, "exit"))
    {
        exit(-1);
    }
    
    return false;
}

int is_declaration(char* str)
{
    const char* declaration[4] = {"int", "float", "string", "bool"};

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
        //std::cout << "pantek";
        return 0;
    }

    int ret = 0;
    const char* declaration[4] = {"int", "float", "string", "bool"};

    ret = is_declaration(line[0].info2.str);
    //std::cout << line[0].info2.str;
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
    {//std::cout << "declarind";
        if (line[1].info1 != UNIT_NAME)
        {
            std::cerr << "Expected an identifier" << std::endl;
            exit(-1);
        }

        var* pos = root.struct_find(line[1].info2.str);
//std::cout << "broke " << line[1].info2.str;
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

/*
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
*/

int read_function(var& root, std::vector<unit>& line, int offset, char* str)
{
    if (line[offset].info1 != UNIT_OPERATOR)
    {
        return 0;
    }

    if (line[offset].info2.i != OP_BRACKET_LEFT)
    {
        return 0;
    }
    
    
    return true;
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

bool read_value_bool(var& root, std::vector<unit>& line, int offset)
{
    bool result;
    var value1 = var();
    var value2 = var();
    var* value_from_var;

    if (line[offset].info1 == UNIT_NAME)
    {
        value_from_var = root.struct_find(line[offset].info2.str);
        value1 = var(*value_from_var);

    }
    return true;
}

char* read_value_string(var& root, std::vector<unit>& line, int offset, int64_t& ret_len)
{
    std::ostringstream value1;
    char* value2;
    int64_t value1_len;
    int64_t value2_len;
    var* value_from_var;

    if (line[offset].info1 == UNIT_NAME)
    {
        //printf("{%p}", line[offset].info2.str);
        //std::cout << line[offset].info2.str;
        value_from_var = root.struct_find(line[offset].info2.str);
        if (value_from_var == nullptr)
        {
            std::cerr << "Undefined " << line[offset].info2.str << std::endl;
            exit(-1);
        }
        if (value_from_var->type == TYPE_STRING)
        {
            value1 << value_from_var->string_data;
            //value1_len = value_from_var->string_length;
        }
    }else if (line[offset].info1 == UNIT_VALUE)
    {
        if (line[offset].info2.i == TYPE_STRING)
        {
            value1 << line[offset].info3.str;
            //value1_len = strlen(line[offset].info3.str);
        }//std::cout << "loop" << (int64_t)value1_len; exit(-1);
    }

    read_value_string_top:
    ++offset;
    if (offset == line.size())
    {
        goto read_value_string_final;
    }

    if (line[offset].info1 == UNIT_OPERATOR)
    {
        if (line[offset].info2.i == OP_PLUS)
        {
            ++offset;
            if (line[offset].info1 == UNIT_NAME)
            {
                value_from_var = root.struct_find(line[offset].info2.str);
                if (value_from_var == nullptr)
                {
                    std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                    exit(-1);
                }
                if (value_from_var->type == TYPE_STRING)
                {
                    value1 << value_from_var->string_data;
                    //value2_len = value_from_var->string_length;
                }

            }else if (line[offset].info1 == UNIT_VALUE)
            {
                if (line[offset].info2.i == TYPE_STRING)
                {
                    value1 << line[offset].info3.str;
                    //value2_len = strlen(line[offset].info3.str);
                }else if (line[offset].info2.i == TYPE_INT)
                {
                    value1 << line[offset].info3.i;
                }else if (line[offset].info2.i == TYPE_FLOAT)
                {
                    value1 << line[offset].info3.f;
                }
                
            }

            //value1 = (char*)realloc(value1, value1_len + value2_len);
            //strcpy(value1+value1_len, value2);
            
            goto read_value_string_top;
        }else
        {
            line[offset].dump();
            std::cerr << " are not allowed" <<std::endl;
            exit(-1);
        }
        
    }else
    {
        std::cerr << "Expected an operator" << std::endl;
        exit(-1);
    }
    

    read_value_string_final:
    ret_len = value1.str().length(); //std::cout << value1;
    return _strdup(value1.str().data());
}

double read_value_float(var& root, std::vector<unit>& line, int& offset)
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
        if (value_from_var == nullptr)
        {
            std::cerr << "Undefined " << line[offset].info2.str << std::endl;
            exit(-1);
        }
        if (value_from_var->type == TYPE_INT)
        {
            value1 = value_from_var->data1.i;
        }else if (value_from_var->type == TYPE_FLOAT)
        {
            value1 = value_from_var->data1.f;
        }
        ++offset;
        if (offset == line.size())
        {
            goto read_value_float_final;
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
            goto read_value_float_final;////
        }
    }else if (line[offset].info1 == UNIT_OPERATOR)
    {
        if (line[offset].info2.i == OP_BRACKET_LEFT)
        {
            ++offset;
            value1 = read_value_float(root, line, offset);
            if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i != OP_BRACKET_RIGHT)
                {
                    std::cerr << "Expected closing backet" << std::endl;
                    exit(-1);
                }
            }
            ++offset;//line[offset].dump();
        }
        if (offset == line.size())
        {
            goto read_value_float_final;////
        }
    }
    
    //std::cout << value1;
    read_value_float_top:
    ////
    //line[offset].dump();
    if (line[offset].info1 == UNIT_OPERATOR)
    { //std::cout << offset <<" here ";
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
                if (value_from_var == nullptr)
                {
                    std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                    exit(-1);
                }
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
            }else if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i == OP_BRACKET_LEFT)
                {
                    ++offset;
                    value2 = read_value_float(root, line, offset);
                    if (line[offset].info1 == UNIT_OPERATOR)
                    {
                        if (line[offset].info2.i != OP_BRACKET_RIGHT)
                        {
                            std::cerr << "Expected closing backet" << std::endl;
                            exit(-1);
                        }
                    }
                    ++offset;//line[offset].dump();
                }else
                {
                    line[offset].dump();
                    std::cerr << " are not allowed" <<std::endl;
                    exit(-1);
                }
                if (offset == line.size())
                {
                    goto read_value_float_final;////
                }
            }
            //std::cout << "jinuhbygvt";

            read_value_float_plus:
            ++offset;
            if (offset == line.size())
            {
                value1 += value2;
                goto read_value_float_final;
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
                    if (value_from_var == nullptr)
                    {
                        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                        exit(-1);
                    }
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
                goto read_value_float_plus;
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
                    if (value_from_var == nullptr)
                    {
                        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                        exit(-1);
                    }
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 /= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 /= value_from_var->data1.f;
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
                goto read_value_float_plus;
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
                    if (value_from_var == nullptr)
                    {
                        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                        exit(-1);
                    }
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
                goto read_value_float_plus;
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
                    if (value_from_var == nullptr)
                    {
                        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                        exit(-1);
                    }
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 -= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 -= value_from_var->data1.f;
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
                goto read_value_float_plus;
            }else if (line[offset].info2.i == OP_BRACKET_RIGHT)
            {
                value1 += value2;
                goto read_value_float_final;
            }else if (line[offset].info2.i == OP_BRACKET_LEFT)
            {
                ++offset;
                value2 = read_value_float(root, line, offset);
                if (line[offset].info1 == UNIT_OPERATOR)
                {
                    if (line[offset].info2.i != OP_BRACKET_RIGHT)
                    {
                        std::cerr << "Expected closing backet" << std::endl;
                        exit(-1);
                    }
                }
                goto read_value_float_minus;
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
                if (value_from_var == nullptr)
                {
                    std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                    exit(-1);
                }
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
            }else if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i == OP_BRACKET_LEFT)
                {
                    ++offset;
                    value2 = read_value_float(root, line, offset);
                    if (line[offset].info1 == UNIT_OPERATOR)
                    {
                        if (line[offset].info2.i != OP_BRACKET_RIGHT)
                        {
                            std::cerr << "Expected closing backet" << std::endl;
                            exit(-1);
                        }
                    }
                    ++offset;//line[offset].dump();
                }else
                {
                    line[offset].dump();
                    std::cerr << " are not allowed" <<std::endl;
                    exit(-1);
                }
                if (offset == line.size())
                {
                    goto read_value_float_final;////
                }
            }
            

            read_value_float_minus:
            ++offset;
            if (offset == line.size())
            {
                value1 -= value2;
                goto read_value_float_final;
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
                    if (value_from_var == nullptr)
                    {
                        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                        exit(-1);
                    }
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
                goto read_value_float_minus;
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
                    if (value_from_var == nullptr)
                    {
                        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                        exit(-1);
                    }
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 /= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 /= value_from_var->data1.f;
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
                goto read_value_float_minus;
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
                    if (value_from_var == nullptr)
                    {
                        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                        exit(-1);
                    }
                    if (value_from_var->type == TYPE_INT)
                    {
                        value2 -= value_from_var->data1.i;
                    }else if (value_from_var->type == TYPE_FLOAT)
                    {
                        value2 -= value_from_var->data1.f;
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
                goto read_value_float_minus;
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
                    if (value_from_var == nullptr)
                    {
                        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                        exit(-1);
                    }
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
                goto read_value_float_minus;
            }else if (line[offset].info2.i == OP_BRACKET_RIGHT)
            {
                value1 -= value2;
                goto read_value_float_final;
            }else if (line[offset].info2.i == OP_BRACKET_LEFT)
            {
                ++offset;
                value2 = read_value_float(root, line, offset);
                if (line[offset].info1 == UNIT_OPERATOR)
                {
                    if (line[offset].info2.i != OP_BRACKET_RIGHT)
                    {
                        std::cerr << "Expected closing backet" << std::endl;
                        exit(-1);
                    }
                }
                goto read_value_float_minus;
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
                if (value_from_var == nullptr)
                {
                    std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                    exit(-1);
                }
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
            }else if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i = OP_BRACKET_LEFT)
                {
                    ++offset;
                    value2 = read_value_float(root, line, offset);
                    if (line[offset].info2.i != OP_BRACKET_RIGHT)
                    {
                        std::cerr << "Expected closing bracket" << std::endl;
                        exit(-1);
                    }
                }else
                {
                    line[offset].dump();
                    std::cerr << " are not allowed" <<std::endl;
                    exit(-1);
                }
            }

            value1 *= value2;
            ++offset;
            if (offset == line.size())
            {
                goto read_value_float_final;
            }else
            {
                goto read_value_float_top;
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
                if (value_from_var == nullptr)
                {
                    std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                    exit(-1);
                }
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
                    value2 = line[offset].info3.f;//
                }
            }else if (line[offset].info1 == UNIT_OPERATOR)
            {//std::cout << "sussy baka";
                if (line[offset].info2.i = OP_BRACKET_LEFT)
                {
                    ++offset;
                    value2 = read_value_float(root, line, offset);
                    if (line[offset].info2.i != OP_BRACKET_RIGHT)
                    {
                        std::cerr << "Expected closing bracket" << std::endl;
                        exit(-1);
                    }
                }else
                {
                    line[offset].dump();
                    std::cerr << " are not allowed" <<std::endl;
                    exit(-1);
                }
            }

            value1 /= value2;
            ++offset;
            if (offset == line.size())
            {
                goto read_value_float_final;
            }else if (line[offset].info2.i == OP_BRACKET_RIGHT)
            {
                goto read_value_float_final;
            }else
            {
                goto read_value_float_top;
            }
        }else if (line[offset].info2.i = OP_BRACKET_RIGHT)
        {
            goto read_value_float_final;
        }else
        {
            line[offset].dump();
            std::cerr << " are not allowed" <<std::endl;
            exit(-1);
        }
    }else
    {
        std::cerr << "Expected an operator" << std::endl;
        exit(-1);
    }
    
    
    read_value_float_final:
    return value1;
}

int64_t read_value_int(var& root, std::vector<unit>& line, int& offset)
{
    int64_t value1 = 0;
    double value2 = 0;
    var* value_from_var;

    //value1 = line[offset].info1

    /// Opening
    if (line[offset].info1 == UNIT_NAME)
    {
        //printf("{%p}", line[offset].info2.str);
        //std::cout << line[offset].info2.str;
        value_from_var = root.struct_find(line[offset].info2.str);
        if (value_from_var == nullptr)
        {
            std::cerr << "Undefined " << line[offset].info2.str << std::endl;
            exit(-1);
        }
        if (value_from_var->type == TYPE_INT)
        {
            value1 = value_from_var->data1.i;
        }else if (value_from_var->type == TYPE_FLOAT)
        {
            value1 = value_from_var->data1.f;
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
    }else if (line[offset].info1 == UNIT_OPERATOR)
    {
        if (line[offset].info2.i == OP_BRACKET_LEFT)
        {
            ++offset;
            value1 = read_value_int(root, line, offset);
            if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i != OP_BRACKET_RIGHT)
                {
                    std::cerr << "Expected closing backet" << std::endl;
                    exit(-1);
                }
            }
            ++offset;//line[offset].dump();
        }
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
            }else if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i == OP_BRACKET_LEFT)
                {
                    ++offset;
                    value2 = read_value_int(root, line, offset);
                    if (line[offset].info1 == UNIT_OPERATOR)
                    {
                        if (line[offset].info2.i != OP_BRACKET_RIGHT)
                        {
                            std::cerr << "Expected closing backet" << std::endl;
                            exit(-1);
                        }
                    }
                    ++offset;//line[offset].dump();
                }else
                {
                    line[offset].dump();
                    std::cerr << " are not allowed" <<std::endl;
                    exit(-1);
                }
                if (offset == line.size())
                {
                    goto read_value_int_final;////
                }
            }
            
            
            //

            read_value_int_plus:
            ++offset;//std::cout << "jinuhbygvt";
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
                        value2 /= value_from_var->data1.f;
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
                        value2 -= value_from_var->data1.f;
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
            }else if (line[offset].info2.i == OP_BRACKET_RIGHT)
            {
                value1 += value2;
                goto read_value_int_final;
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
            }else if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i == OP_BRACKET_LEFT)
                {
                    ++offset;
                    value2 = read_value_int(root, line, offset);
                    if (line[offset].info1 == UNIT_OPERATOR)
                    {
                        if (line[offset].info2.i != OP_BRACKET_RIGHT)
                        {
                            std::cerr << "Expected closing backet" << std::endl;
                            exit(-1);
                        }
                    }
                    ++offset;//line[offset].dump();
                }else
                {
                    line[offset].dump();
                    std::cerr << " are not allowed" <<std::endl;
                    exit(-1);
                }
                if (offset == line.size())
                {
                    goto read_value_int_final;////
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
            }else if (line[offset].info2.i == OP_BRACKET_RIGHT)
            {
                value1 -= value2;
                goto read_value_int_final;
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
            }else if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i == OP_BRACKET_LEFT)
                {
                    ++offset;
                    value2 = read_value_int(root, line, offset);
                    if (line[offset].info2.i != OP_BRACKET_RIGHT)
                    {
                        std::cerr << "Expected closing bracket" << std::endl;
                        exit(-1);
                    }
                }else
                {
                    line[offset].dump();
                    std::cerr << " are not allowed" <<std::endl;
                    exit(-1);
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
                    value2 = line[offset].info3.f;//
                }
            }else if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i == OP_BRACKET_LEFT)
                {
                    ++offset;
                    value2 = read_value_int(root, line, offset);//std::cout << "lokijuhygt";
                    if (line[offset].info2.i != OP_BRACKET_RIGHT)
                    {
                        std::cerr << "Expected closing bracket" << std::endl;
                        exit(-1);
                    }
                }else
                {
                    line[offset].dump();
                    std::cerr << " are not allowed" <<std::endl;
                    exit(-1);
                }
            }

            value1 /= value2;
            ++offset;
            if (offset == line.size())
            {
                goto read_value_int_final;
            }else if (line[offset].info2.i == OP_BRACKET_RIGHT)
            {
                goto read_value_int_final;
            }else
            {
                goto read_value_int_top;
            }
        }else if (line[offset].info2.i = OP_BRACKET_RIGHT)
        {
            //std::cout << "value 1 " << value1;
            goto read_value_int_final;
        }else
        {
            line[offset].dump();
            std::cerr << " are not allowed" <<std::endl;
            exit(-1);
        }
    }else
    {
        std::cerr << "Expected an operator" << std::endl;
        exit(-1);
    }
    
    
    read_value_int_final:
    return value1;
}

int right_value(var& root, std::vector<unit>& line, int offset, var& stored)
{
    int data_type;
    var* temp;
    variant value1;
    variant value2;
    int mul_or_div_before = 0;

    data_type = stored.type;
    switch (data_type)
    {
    case TYPE_INT: //printf(" right value {%p} %s\n", line[offset].info2.str, line[offset].info2.str);
        value1.i = read_value_int(root, line, offset);
        //std::cout << "here int" << value1.i;
        stored.write( value1 ); //printf("olkijuhygt %i", stored.read().i);
        break;

    case TYPE_FLOAT:
        value1.f = read_value_float(root, line, offset);
        //std::cout << "here " << value1.f;
        stored.write( value1 );
        break;

    case TYPE_STRING:
        value1.str = read_value_string(root, line, offset, value2.i);
        stored.write( value1 );
        //stored.write( QQs(line[offset].info3.str) );
        break;

    case TYPE_BOOL:
        //stored.write( QQi( line[offset].info3.b ) );
        break;
    
    default:
        break;
    }
    //std::cout << data_type;
    
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
        //std::cout << last;
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
    variant valueof_2;
    variant valueof_3;

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
            valueof_2.i = op;
            valueof_3.i = 0;
            line.push_back(unit(UNIT_OPERATOR, valueof_2, valueof_3));//std::cout << "kmjnuhbyvt";
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

        //if (str[i] == '\0')
        //{
        //    line.push_back(  unit(  UNIT_NAME, QQs( strndup(read_line_name_first, read_line_name_counter) ), QQi(0)  )  );
        //    break;
        //}
        
        if (str[i] > 127)
        {
            std::cout << "Unknown token " << str[i];
            exit(-1);
        }
        valueof_2.str = strndup(read_line_name_first, read_line_name_counter);
        valueof_3.i = 0;
        line.push_back(  unit(  UNIT_NAME, valueof_2, valueof_3  )  ); //printf("%i, %i", line.size(), line[0].info1); 
        //printf("created (%p)%s, ", line[line.size()-1].info2.str, line[line.size()-1].info2.str);
        break;
    }
    goto read_line_main;

    read_line_value_string:
    read_line_value_string_counter = 0;
    while (i < last)
    {//std::cout << "oiuyt " << (int64_t)str[i];
        
        if (str[i] == '\"')
        {
            if (read_line_value_string_counter == 0)
            {
                valueof_2.i = TYPE_STRING;
                valueof_3.str = (char*)memset(malloc(1), 0, 1);
                line.push_back(unit(UNIT_VALUE, valueof_2, 
                valueof_3 ) );
            }else
            {
                valueof_2.i = TYPE_STRING;
                valueof_3.str = strndup(&str[i] - read_line_value_string_counter, read_line_value_string_counter);
                line.push_back(unit(UNIT_VALUE, valueof_2, 
                valueof_3 ));
            }
            i += 1;
            break;
        }
        ++read_line_value_string_counter;
        ++i;
    }
    //line[line.size()-1].dump();std::cout << " " << i;
    goto read_line_main;

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
        valueof_2.i = TYPE_FLOAT;
        valueof_3.f = read_line_value_number_float;
        line.push_back(unit(UNIT_VALUE, valueof_2, valueof_3));
    }else
    {
        int64_t read_line_value_number_integer = atoll(read_line_value_number_last);
        valueof_2.i = TYPE_INT;
        valueof_3.i = read_line_value_number_integer;
        line.push_back(unit(UNIT_VALUE, valueof_2, valueof_3));
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
    char text[100];
    //std::cin.getline(text, 100);
    while (last_line_ret = read_line(str+last_line_len, line))
    {   
        //std::cout << "safe";
        //exit(-1);std::cout << "counter = " << last_line_ret << std::endl;
        //unit_print(line);//if (line[3].info1 == UNIT_NAME)  printf(" from bsi::read {%p} %s\n", line[3].info2.str, line[3].info2.str);
        //unit_print(line);std::cout << "sus";
        
        int ret;
        
        if (keyword(root, line))
        {
            
        }
        else if (declare(root, line, &left_value))
        {
            if (line[2].info1 == UNIT_OPERATOR)
            {
                if (line[2].info2.i == OP_EQUAL)
                {
                    temp.type = left_value->type; 
                    ret = right_value(root, line, 3, temp);
                    left_value->write(temp);
                }else if (line[2].info2.i == OP_BRACKET_LEFT)
                {
                    //read_function();
                }
            }
            //if(root.struct_count == 2)
            //    exit(-1);
        }else if (line[0].info1 == UNIT_NAME)
        {
            left_value = root.struct_find(line[0].info2.str);
            if (!left_value)
            {
                std::cerr << "Undefined " << line[0].info2.str << std::endl;
                exit(-1);
            }
            if (line[1].info2.i == OP_EQUAL)
            {
                temp.type = left_value->type;
                ret = right_value(root, line, 2, temp); 
                left_value->write(temp);
            }
        }
        
        //exit(-1);
        //root.print();
        //unit_print(line);
        unit_clear(line);
        //line = std::vector<unit>();std::cout << "fine ";std::cout << last_line_len;
        line.clear();
        last_line_len += last_line_ret;//std::cout << "safe";
        //std::cin.getline(text, 100);
    }
    //std::cout << "program done" << line.size();
    return 0;
}