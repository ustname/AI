#include "iba.hpp"

using std::cout;

uint64_t stop_at(char* str, char* token)
{
    uint64_t i = 0;
    int num = strlen(token);
    int counter = 0;

    while(str[i])
    {
        for (int j = 0; j < num; j++)
        {
            if (str[i] != token[j])
            {
                counter = 1;
                goto skip_at;
            }
            break;
            skip_at:
        }
        i++;
    }

    ++num;

    while(str[i])
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
//char* skip_at(char* str, char* token, int num)
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
    char* word;
    int len;

    iba(char* pos, int len)
    {
        this->word = pos;
        this->len = len;
    }

    bool operator==(iba bin)
    {
        int count = this->len;
        char* src = this->word;
        char* dst = bin.word;
        for (size_t i = 0; i < count; i++)
        {
            if (src[i] != dst[i])
            {
                return false;
            }
        }
        return true;
    }

    bool operator==(char* dst)
    {
        int count = this->len;
        char* src = this->word;
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

void declare(iba* var)
{
    
}

void* compile(char* bin, char* error_msg)
{
    bin_data mem;

    std::string s(bin);
    char* data = s.data();
    char* pos = data;
    
    stack<iba> sen;
    uint64_t limit = 0;
    uint64_t len = 0;

    limit = stop_at(data, "\n");
    //cout << limit; exit(8);
    do{
        //if (*pos == '"')
        //{
        //    len = stop_at(++pos, "\"\n");
        //}else
        //{
        len = stop_at(pos, " \n");
        //}
        //cout << len << std::endl;
        if (len == 0)
        {
            break;
        }
        sen.push( iba(pos, len) );
        //if (pos[len] == '\n')
        //{
        //    break;
        //}
        
        pos += len + 1;
    }
    while (true);
    
    for (size_t i = 0; i < sen.size; i++)
    {
        print_limit(sen[i]);
    }
    
    
    
}

