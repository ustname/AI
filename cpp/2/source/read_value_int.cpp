#include "../include/bsi.hpp"

int64_t read_value_int(var& root, std::vector<unit>& line, int& offset)
{
    int64_t value1 = 0;
    double value2 = 0;
    var* value_from_var;
    int is_const = 0;
    _get_var_info left_info;

    //value1 = line[offset].info1

    /// Opening
    if (line[offset].info1 == UNIT_NAME)
    {
        //printf("{%p}", line[offset].info2.str);
        //std::cout << line[offset].info2.str;
        value_from_var = bsi::search(line[offset].info2.str, is_const);
        value_from_var = get_var(root, line, offset, left_info);
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
        
    }
    
    if (offset == line.size())
    {
        goto read_value_int_final;////
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
                value_from_var = bsi::search(line[offset].info2.str, is_const);
                value_from_var = get_var(root, line, offset, left_info);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
                    value_from_var = get_var(root, line, offset, left_info);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
                    value_from_var = get_var(root, line, offset, left_info);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
                    value_from_var = get_var(root, line, offset, left_info);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
                    value_from_var = get_var(root, line, offset, left_info);
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
            }else if (line[offset].info2.i = OP_SQUAREBRACKET_RIGHT)
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
                value_from_var = bsi::search(line[offset].info2.str, is_const);
                value_from_var = get_var(root, line, offset, left_info);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
                    value_from_var = get_var(root, line, offset, left_info);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
                    value_from_var = get_var(root, line, offset, left_info);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
                    value_from_var = get_var(root, line, offset, left_info);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
                    value_from_var = get_var(root, line, offset, left_info);
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
            }else if (line[offset].info2.i = OP_SQUAREBRACKET_RIGHT)
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
                value_from_var = bsi::search(line[offset].info2.str, is_const);
                value_from_var = get_var(root, line, offset, left_info);
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
                value_from_var = bsi::search(line[offset].info2.str, is_const);
                value_from_var = get_var(root, line, offset, left_info);
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
        }else if (line[offset].info2.i = OP_SQUAREBRACKET_RIGHT)
        {
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
