#include "iba.hpp"

using std::cout;

uint64_t stop_at(char *str, char *token)
{
    uint64_t i = 0;
    int num = strlen(token);
    int counter = 0;

    // while(str[i])
    //{
    //     for (int j = 0; j < num; j++)
    //     {
    //         if (str[i] != token[j])
    //         {
    //             counter = 1;
    //             goto skip_at;
    //         }
    //         break;
    //     }
    //     skip_at:
    //     i++;
    // }

    //++num;

    while (str[i])
    {
        for (int j = 0; j < num; j++)
        {
            if (str[i] == token[j])
                return i;
        }
        i++;
    }

    return 0;
}

// dont use this
// char* skip_at(char* str, char* token, int num)
//{
//    int i = 0;
//    while (str[i])
//        for (int j = 0; j < num; j++)
//            if (str[i] != token[j])
//                break;
//    return 0;
//}

class iba
{
public:
    char *word;
    int len;

    iba(char *pos, int len)
    {
        this->word = pos;
        this->len = len;
    }

    bool operator==(iba bin)
    {
        int count = this->len;
        char *src = this->word;
        char *dst = bin.word;
        for (size_t i = 0; i < count; i++)
        {
            if (src[i] != dst[i])
            {
                return false;
            }
        }
        return true;
    }

    bool operator==(char *dst)
    {
        int count = this->len;
        char *src = this->word;
        for (size_t i = 0; i < count; i++)
        {
            if (src[i] != dst[i])
            {
                return false;
            }
        }
        return true;
    }
};

void print_limit(iba str)
{
    char format[100];
    sprintf(format, "%%.%ds\n", str.len);
    printf(format, str.word);
}

uint8_t is_declaration(iba s)
{
    char *word_set[] = {"int", "float", "string", "bool"};
    uint8_t res = 0;
    for (int i = 0; i < sizeof(word_set) / 8; i++)
    {
        if (s == word_set[i])
        {
            switch (i)
            {
            case 0:
                return TYPE_INT;
            case 1:
                return TYPE_FLOAT;
            case 2:
                return TYPE_STRING;
            case 3:
                return TYPE_BOOL;
            }
        }
    }

    return 0;
}

char *get_datatype(int type)
{
    switch (type)
    {
    case TYPE_UNKNOWN:
        return strdup("Unknown");
    case TYPE_ARRAY:
        return strdup("Array");
    case TYPE_STRUCT:
        return strdup("Structure");
    case TYPE_BOOL:
        return strdup("Boolean");
    case TYPE_INT:
        return strdup("Integral");
    case TYPE_FLOAT:
        return strdup("Float");
    case TYPE_STRING:
        return strdup("String");
    case TYPE_BUFFER:
        return strdup("Buffer");
    case TYPE_REFERENCE:
        return strdup("Reference");

    default:
        return strdup("NULL");
    }
}

void *compile(char *bin, char *error_msg)
{
    bin_data mem;

    std::string s(bin);
    char *data = s.data();
    char *pos = data;

    stack<iba> sen;
    uint64_t limit = 0;
    uint64_t len = 0;

    limit = stop_at(data, "\n");
    // cout << limit; exit(8);
    do
    {
        len = stop_at(pos, " \n");

        if (len == 0)
        {
            break;
        }

        sen.push(iba(pos, len));

        if (pos[len] == '\n')
        {
            break;
        }

        pos += len + 1;
    } while (true);

    int key_count = sen.size;
    int res = is_declaration(sen[0]);
    // printf(get_datatype(res));
    if (res)
    {
        uint64_t var_name_len = sen[1].len + 1;
        uint8_t buffer[100] = { IN_SET, REGISTER_A, REG_VALUE, TYPE_INT, res, 0, 0, 0, 0, 0, 0, 0,
                                IN_SET, REGISTER_B, REG_VALUE, TYPE_STRING };
        mem.write(4, buffer, 16);
        mem.write(var_name_len, 8);

        char temp[var_name_len];
        strncpy(temp, sen[1].word, var_name_len);
        temp[var_name_len-1] = 0;

        mem.write(temp, var_name_len);
        mem.write(IN_DEC, 1);
        
        if (sen[2] == "=")
        {
            uint8_t buffer2[100] = { IN_SET, REGISTER_B, REG_VALUE, TYPE_INT};
            mem.write(buffer2, 4);
            int64_t value = atoll(sen[3].word);
            mem.write(value, 8);
        }
        

    }
    mem.dump();
    // for (size_t i = 0; i < sen.size; i++)
    //{
    //     print_limit(sen[i]);
    // }
}
