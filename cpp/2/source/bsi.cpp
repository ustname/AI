#include "../include/bsi.hpp"
#include "../include/sen.hpp"

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
    int64_t count = line.size(); //std::cout << count;std::cout << c++ << " ";
    int c = 0;
    for (unit i : line)
    {
        
        switch (i.info1)
        {
        case UNIT_NAME:
        
        //printf(" clear name (%p)", line[i].info2.str );
        //std::cout << line[i].info2.str;
            if (i.info2.str)
            {
                
                delete i.info2.str;// std::cout << "freed";printf(" :(%p)%s, ", line[i].info2.str, line[i].info2.str);
                i.info2.i = 0;
            }
            i.info2.i = 0;
            //std::cout << "done";
            break;

        case UNIT_VALUE:
            switch (i.info2.i)
            {
            case TYPE_STRING:
                delete i.info3.str;
                i.info3.i = 0;
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
        i.info1 = 0;
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

bool islegal_name(char* str)
{
    const char* formal_name[] = {"int", "float", "string", "bool", "struct", "fucntion",
     "for", "while"};

    int64_t size = sizeof(formal_name)/sizeof(char*);
    for (size_t i = 0; i < size; i++)
    {
        if (sen_comp(str, formal_name[i]))
        {
            return false;
        }
    }
    return true;
}

void __false_syntax(){
    std::cerr << "False syntax\n";
    exit(-1);
}

int right_value(var &root, std::vector<unit> &line, int &offset, var &stored);

const char* keyword_list[] = {"print", "exit"};

bool keyword(var& root, std::vector<unit>& line)
{
    if (line[0].info1 != UNIT_NAME)
    {
        return 0;
    }
    
    char* key = line[0].info2.str;
    int is_const = 0;

    if (sen_comp(key, keyword_list[0])) //print
    {
        if (line.size() == 1)
        {
            std::cerr << "Requested variable";
            exit(-1);
        }

        if (line[1].info1 == UNIT_NAME)
        {
            var* temp = bsi::search(line[1].info2.str, is_const);
            if (temp == nullptr)
            {
                std::cerr << "Undefined " << line[1].info2.str << std::endl;
                exit(-1);
            }
            temp->print();
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
                    var* value_from_var = bsi::search(line[offset].info2.str, is_const);
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
            else if (line[offset].info2.i == OP_DOT)
            {
                bsi::bsi_root->print();
            }
        }
        return true;
    }
    else if (sen_comp(key, keyword_list[1])) //exit
    {
        exit(-1);
    }
    
    return false;
}

int is_declaration(char* str, var** struct_type)
{
    const char* declaration[] = {"int", "float", "string", "bool", "array", "struct", "class", "function"};
    int64_t count = sizeof(declaration)/sizeof(char*);
    for (size_t i = 0; i < 6; i++)
    {
        if (sen_comp(str, declaration[i]))
        {//std::cout << str << " " << declaration[i] << " " << i << std::endl;
            return (i + 1);
        }
    }
    var* struct_class = bsi::bsi_root->struct_find("class");
    int64_t class_count = struct_class->struct_count;
    struct_class = struct_class->struct_data;
    for (size_t i = 0; i < class_count; i++)
    {
        if (sen_comp(str, struct_class[i].name))
        {
            *struct_type = &struct_class[i];
            return (6);
        }
    }
    
    return 0;
}

bool check_syntax(var& root, std::vector<unit>& line, int& offset)
{
    int ret;
    var* has_var;
    int is_const = 0;
    var* temp_class{};
    if (line[offset].info1 == UNIT_NAME)
    {
        ret = is_declaration(line[offset].info2.str, &temp_class);
        ++offset;
        if (ret)
        {
            if (line[offset].info1 == UNIT_NAME)
            {
                has_var = bsi::search(line[offset].info2.str, is_const);
                if (has_var)
                {
                    std::cerr << "Redeclaration of " << has_var->name << std::endl;
                    exit(-1);
                }
                
                ++offset;
                if (line.size() == offset)
                {
                    return true;
                }
            }
            
        }else if (has_var = bsi::search(line[offset].info2.str, is_const))
        {
            ++offset;
            if (line[offset].info1 == UNIT_OPERATOR)
            {
                if (line[offset].info2.i == OP_EQUAL)
                {
                    ++offset;
                    var temp = var(has_var->type);
                    right_value(root, line, offset, temp);
                    temp.clear();
                }else
                {
                    std::cerr << "Nope";
                    exit(-1);
                }
            }
        }
    }else
    {
        std::cerr << "Nope";
        exit(-1);
    }
    
    

    return false;
}

var* _make_array(var& root, std::vector<unit>& line, int& offset)
{
    int ret = 0;
    var* declare_class{};
    ret = is_declaration(line[offset].info2.str, 0);

    if (!ret)
    {
        std::cerr << "Expected an array data type\n";
        exit(-1);
    }

    ++offset;
    if (offset == line.size())
    {
        std::cerr << "Expected a variable name\n";
        exit(-1);
    }

    if (line[offset].info1 != UNIT_NAME) {
        std::cerr << "Expected an identifier" << std::endl;
        exit(-1);
    }

    int is_const = 0;
    var* pos = bsi::search(line[offset].info2.str, is_const);
    if (pos != nullptr) {
        std::cerr << "Redeclaration of " << line[1].info2.str << std::endl;
        exit(-1);
    }
    if (ret == 1)
    {
        return root.struct_create(line[offset].info2.str, TYPE_INT, 0);
    }
    else if (ret == 2)
    {
        return root.struct_create(line[offset].info2.str, TYPE_FLOAT, 0);
    }
    else if (ret == 3)
    {
        return root.struct_create(line[offset].info2.str, TYPE_STRING, 0);
    }
    else if (ret == 4)
    {
        return root.struct_create(line[offset].info2.str, TYPE_BOOL, 0);
    }
    else if (ret == 5)
    {
        ++offset;
        return _make_array(root, line, offset);
    }
    else if (ret == 6)
    {
        if (declare_class)
        {
            pos = bsi::declare_class(line[offset].info2.str, declare_class);
            pos->write(declare_class);
            pos->arr_array(0);
            return pos;
        }
        else
        {
            pos = root.struct_create(line[offset].info2.str, TYPE_STRUCT);
            pos->arr_array(0);
            return pos;
        }
    }
    else if (ret == 7)
    {

    }
    else
    {
        std::cout << "not written";
    }
}

var* declare(var& root, std::vector<unit>& line, int& offset)
{
    if (line[offset].info1 != UNIT_NAME)
    {
        return 0;
    }

    var* declare_class{};
    int is_const = 0;
    int ret = 0;
    ret = is_declaration(line[offset].info2.str, &declare_class);
    
    if (ret)
    {
        ++offset;
        if (offset == line.size())
        {
            std::cerr << "Expected a variable name\n";
            exit(-1);
        }
        
        if (line[offset].info1 != UNIT_NAME){
            std::cerr << "Expected an identifier" << std::endl;
            exit(-1);
        }
        
        int is_const = 0;
        var* pos = bsi::search(line[offset].info2.str, is_const);
        if (pos != nullptr){
            std::cerr << "Redeclaration of " << line[1].info2.str << std::endl;
            exit(-1);
        }
        if (ret == 1)
        {
            return root.struct_create(line[offset].info2.str, TYPE_INT);
        }else if (ret == 2)
        {
            return root.struct_create(line[offset].info2.str, TYPE_FLOAT);
        }else if (ret == 3)
        {
            return root.struct_create(line[offset].info2.str, TYPE_STRING);
        }else if (ret == 4)
        {
            return root.struct_create(line[offset].info2.str, TYPE_BOOL);
        }else if (ret == 5)
        {
            return _make_array(root, line, offset);
        }
        else if (ret == 6)
        {
            if (declare_class)
            {
                pos = bsi::declare_class(line[offset].info2.str, declare_class);
                pos->write(declare_class);
                return pos;
            }
            else
            {
                pos = root.struct_create(line[offset].info2.str, TYPE_STRUCT);
                return pos;
            }
        }
        else if (ret == 7)
        {
            
        }
        else
        {
            std::cout << "not written";
        }
    }
    return nullptr;
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

int read_value_array(var& root, std::vector<unit>& line, int offset, var& array)
{
    return array.type;
}

bool read_value_bool(var& root, std::vector<unit>& line, int offset)
{
    bool result;
    var value1 = var();
    var value2 = var();
    var* value_from_var{};
    int is_const = 0;

    if (line[offset].info1 == UNIT_NAME)
    {
        value_from_var = bsi::search(line[offset].info2.str, is_const);
        if (value_from_var == nullptr)
        {
            std::cerr << "Undefined " << line[offset].info2.str << std::endl;
            exit(-1);
        }

        if (value_from_var->type == TYPE_BOOL)
        {
            result = value_from_var->bool_data;
        }else
        {
            std::cout << "kiunbytvc";
        }
    }else if (line[offset].info1 == UNIT_VALUE)
    {
        if (line[offset].info2.i == TYPE_BOOL)
        {
            result = value_from_var->bool_data;
        }else
        {
            std::cout << "kiunbytvc";
        }
    }
    ++offset;
    if (offset == line.size())
    {
        goto read_value_bool_final;
    }
    
    read_value_bool_final:
    return result;
}

char* read_value_string(var& root, std::vector<unit>& line, int offset, int64_t& ret_len)
{
    std::ostringstream value1;
    char* value2;
    int64_t value1_len;
    int64_t value2_len;
    var* value_from_var;
    int is_const = 0;

    if (line[offset].info1 == UNIT_NAME)
    {
        //printf("{%p}", line[offset].info2.str);
        //std::cout << line[offset].info2.str;
        value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                value_from_var = bsi::search(line[offset].info2.str, is_const);
                if (value_from_var == nullptr)
                {
                    std::cerr << "Undefined " << line[offset].info2.str << std::endl;
                    exit(-1);
                }
                if (value_from_var->type == TYPE_STRING)
                {
                    value1 << value_from_var->string_data;
                }else if (value_from_var->type == TYPE_INT)
                {
                    value1 << value_from_var->int_data;
                }else if (value_from_var->type == TYPE_FLOAT)
                {
                    value1 << value_from_var->float_data;
                }else if (value_from_var->type == TYPE_BOOL)
                {
                    if (value_from_var->bool_data == false)
                    {
                        value1 << "false";
                    }else
                    {
                        value1 << "true";
                    }
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
                }else if (line[offset].info2.i == TYPE_BOOL)
                {
                    if (line[offset].info3.b == false)
                    {
                        value1 << "false";
                    }else
                    {
                        value1 << "true";
                    }
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

var* get_var(var& root, std::vector<unit>& line, int& offset, _get_var_info& info)
{
    var* dest;
    int is_const = 0;
    if (!line[offset].info1 == UNIT_NAME){
        return 0;
    }

    dest = bsi::search(line[offset].info2.str, is_const);
    if (!dest){
        std::cerr << "Undefined " << line[offset].info2.str << std::endl;
        exit(-1);
    }

    info = _get_var_info();
    bool is_running = true;
    while (is_running)
    {
        ++offset;
        if (offset == line.size())
        {
            return dest;
        }

        if (line[offset].info1 == UNIT_OPERATOR)
        {
            /// Dot operator
            if (line[offset].info2.i == OP_DOT)
            {
                /// Struct accessing
                if (dest->type == TYPE_STRUCT)
                {
                    ++offset;
                    if (offset == line.size())
                    {
                        std::cerr << "Expected a child name\n";
                        exit(-1);
                    }
                    /// Accessing struct child with name
                    if (line[offset].info1 == UNIT_NAME)
                    {
                        info.type = GET_VAR_INFO_VAR;
                        info.offset = dest->struct_find_index(line[offset].info2.str);
                        if (info.offset == -1)
                        {
                            std::cerr << "Undefined " << line[offset].info2.str << " \n";
                            exit(-1);
                        }
                        dest = dest->struct_pos(info.offset);
                        continue;
                    }
                    /// Access no more
                    else
                    {
                        is_running = false;
                    }
                }
                /// Not a struct but using dot syntax
                else
                {
                    std::cerr << "Dot syntax is only for struct type\n";
                    exit(-1);
                }
            }
            /// Array accessing
            else if (line[offset].info2.i == OP_SQUAREBRACKET_LEFT)
            {
                if (dest->type & TYPE_ARRAY)
                {
                    int type = dest->type ^ TYPE_ARRAY;

                    ++offset;
                    if (offset == line.size())
                    {
                        std::cerr << "Expected an array index number\n";
                        exit(-1);
                    }

                    int64_t arr_index = read_value_int(root, line, offset);
                    if (line[offset].info2.i != OP_SQUAREBRACKET_RIGHT)
                    {
                        std::cerr << "Expected closing bracket\n";
                        exit(-1);
                    }

                    if (type == TYPE_STRUCT)
                    {
                        dest = &dest->arr_struct[arr_index];
                        info.type = GET_VAR_INFO_VAR;
                    }
                    else
                    {
                        info.type = GET_VAR_INFO_ARRAY;
                        info.offset = arr_index;
                    }
                    continue;
                }
                else
                {
                    std::cerr << "Squarebracket syntax is only for array type\n";
                    exit(-1);
                }
            }
            /// The operator are not dot or array, then this is the last getting variable
            else
            {
                is_running = false;;
            }
        }
        
    }
    return dest;
}

int assignment(var* dst, var& root, std::vector<unit>& line, int& offset, const _get_var_info& info)
{
    if (!(line[offset].info1 == UNIT_OPERATOR))
    {
        __false_syntax();
    }

    var* right = dst;
    
    if (right->type & TYPE_ARRAY)
    {
        
        if (line[offset].info2.i == OP_SQUAREBRACKET_LEFT)
        {
            int64_t arr_index = read_value_int(root, line, offset);
            if ( !(line[offset].info2.i == OP_SQUAREBRACKET_RIGHT) )
            {
                std::cerr << "Expected a closing bracket\n";
                exit(-1);
            }
            var temp{right->type};
            ++offset;
            right_value(root, line, offset, temp);
            right->write(temp);
            temp.clear();
            
        }else if (line[offset].info2.i == OP_EQUAL)
        {
            var temp{right->type};
            ++offset;
            right_value(root, line, offset, temp);
            right->write(temp);
            temp.clear();
        }else
        {
            return 0;
        }
        
    }else if (right->type == TYPE_STRUCT)
    {
        if (line[offset].info2.i == OP_EQUAL)
        {
            
        }
    }else
    {
        if (line[offset].info2.i == OP_EQUAL)
        {
            var temp{right->type};
            ++offset;
            right_value(root, line, offset, temp);
            right->write(temp);
            temp.clear();
        }
    }
}

int right_value(var& root, std::vector<unit>& line, int& offset, var& stored)
{
    int data_type;
    var* temp;
    variant value1;
    variant value2;
    int mul_or_div_before = 0;

    data_type = stored.type;
    switch (data_type)
    {
    case TYPE_INT:
        value1.i = read_value_int(root, line, offset);
        stored.write( value1 );
        break;

    case TYPE_FLOAT:
        value1.f = read_value_float(root, line, offset);
        stored.write( value1 );
        break;

    case TYPE_STRING:
        value1.str = read_value_string(root, line, offset, value2.i);
        stored.write( value1 );
        break;

    case TYPE_BOOL:
        value1.b = read_value_bool(root, line, offset);
        stored.write( value1 );
        break;
    
    default:
        std::cout << "not written for " << get_datatype(data_type);
        break;
    }
    //std::cout << data_type;
    
    return 1;
}

char* read_line(char* src, std::vector<unit>& line, bool& _end_of_file)
{
    //printf(" last = (%i) ", str[0]);
    if (*src == '\0')
    {
        return 0;
    }
    char* str = src;
    line.clear();
    int i = 0;
    bool end_of_file = false;
    str = skip_at(str, " \n"); //std::cout << " getting " << last_add;
    //str += last_add;std::cout << " " << last_add << " ";printf(" (%p) %i ", str, last_add);
    //printf("{%p} with add (%i) {%i}", str, last_add, str[0]);
    int last = stop_at(str, "\n");
    
    if (str[last-1] == '\0')
    {
        end_of_file = true;
    }
    //std::cout << " num " << (int64_t) << std::endl;
    str = strndup(str, last); //printf("\n%s\n", str);
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
         //printf("%i, %i", line.size(), line[0].info1); 
        //printf("created (%p)%s, ", line[line.size()-1].info2.str, line[line.size()-1].info2.str);
        --read_line_name_counter;
        break;
    }
    ++read_line_name_counter;
    valueof_2.str = strndup(read_line_name_first, read_line_name_counter);
    valueof_3.i = 0; //printf("(%p", read_line_name_first); std::cout << ") ayo rading string = " << valueof_2.str << std::endl;
    line.push_back(  unit(  UNIT_NAME, valueof_2, valueof_3  )  );
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
    if (end_of_file)
    {
        _end_of_file = true;
    }

    src = src + stop_at(src, "\n");
    src = skip_at(src, " \n");
    return src;
}

void run(var& root, std::vector<unit>& line, int& offset){

    int ret = 0;
    var* left_var{};
    var temp = var();
    int is_const = 0;
    _get_var_info _info;
    if (keyword(root, line))
    {
        
    }
    else if (left_var = declare(root, line, offset))
    {
        if (line[offset].info1 == UNIT_OPERATOR)
        {
            if (line[offset].info2.i == OP_EQUAL)
            {
                ++offset;
                assignment(left_var, root, line, offset, _info);
            }
        }
    }
    else
    {
        if (line[0].info1 != UNIT_NAME)
        {
            std::cerr << "Expected expression\n";
            exit(-1);
        }
        left_var = bsi::search(line[0].info2.str, is_const);
        if (!left_var)
        {
            std::cerr << "Undefined " << line[0].info2.str << std::endl;
            exit(-1);
        }
        left_var = get_var(root, line, offset, _info);
        if (offset == line.size())
        {
            return;
        }
        assignment(left_var, root, line, offset, _info);
    }
}

/*
bool is_complete_function(var& fun)
{
    if (fun.type == TYPE_STRUCT)
    {
        if (!sen_comp(fun.struct_type, "function"))
        {
            return false;
        }
    }
    else
    {
        return false;
    }
    const char* function_child[5] = { "ret", "argc", "argv", "data", "ft" };
    for (size_t i = 0; i < 5; i++)
    {
        if (!fun.struct_find(function_child[i])) {
            return false;
        }
    }
    return true;
}

var function_call(var& fun, var& arg) {

    if (!is_complete_function(fun))
    {
        std::cerr << "Incomplete function " << fun.name;
        exit(-1);
    }

    int argc = 0;
    var* fun_arg_p{};   // 13.45
    var(*function_signature)(var*);

    switch (fun.struct_find("ft")->int_data)
    {
    case bsi::FUNCTION_UNDEFINED:
        break;

    case bsi::CPP_FUNCTION:
        function_signature = ( var(*)(var*) )fun.struct_find("data")->buf_data;
        return function_signature(&arg);
        break;

    case bsi::BSI_FUNCTION:
        int stop;
        argc = fun.struct_find("argc")->int_data;

        if (argc != arg.struct_find("argc")->int_data)
        {
            std::cerr << "Argument out of range\n";
            exit(-1);
        }

        fun_arg_p = fun.struct_find("argv");

        for (size_t i = 0; i < argc; i++)
        {
            fun_arg_p[i].write(arg.struct_data[i]);
        }
        break;

    default:
        break;
    }
}
*/

int bsi::read(var& root, char* str)
{
    std::vector<unit> line;
    var* left_value = new var();
    var temp = var();
    bool end_of_file = false;

    int last_line_len = 0;
    int last_line_ret = 0;
    //last_line_len = read_line(str+last_line_len, line);
    //unit_print(line);
    //line.clear();
    //read_line(str+last_line_len, line);
    //unit_print(line);exit(-1);
    int i = 0;
    char text[100];
    char* next_instruction = str;
    //std::cin.getline(text, 100);
    while (next_instruction = read_line(next_instruction, line, end_of_file))
    {
        next_instruction;
        
        int ret;
        int offset = 0;
        
        
        run(root, line, offset);
        offset = 0;
        //exit(-1);
        //root.print();std::cout << "jubyvf ";
        //unit_print(line);
        unit_clear(line);
        //std::cout << "safe";
        //std::cin.getline(text, 100);
        if (end_of_file)
        {
            line.clear();
            break;
        }
    }
    //std::cout << "program done" << line.size();
    return 0;
}