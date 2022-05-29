#include "../include/bsi.hpp"

double read_value_float(var& root, std::vector<unit>& line, int& offset)
{
    double value1;
    double value2 = 0;
    int op_before = 0;
    var* value_from_var;
    int is_const = 0;
    //value1 = line[offset].info1

    /// Opening
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
                value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
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
            }else if (line[offset].info2.i = OP_SQUAREBRACKET_RIGHT)
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
                value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                    value_from_var = bsi::search(line[offset].info2.str, is_const);
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
            }else if (line[offset].info2.i = OP_SQUAREBRACKET_RIGHT)
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
                value_from_var = bsi::search(line[offset].info2.str, is_const);
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
                value_from_var = bsi::search(line[offset].info2.str, is_const);
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
            }else if (line[offset].info2.i = OP_SQUAREBRACKET_RIGHT)
            {
                goto read_value_float_final;
            }else
            {
                goto read_value_float_top;
            }
        }else if (line[offset].info2.i = OP_BRACKET_RIGHT)
        {
            goto read_value_float_final;
        }else if (line[offset].info2.i = OP_SQUAREBRACKET_RIGHT)
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
