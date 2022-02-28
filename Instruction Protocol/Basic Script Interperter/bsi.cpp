#include "bsi.hpp"

uint64_t stop_at(char *str, char *token)
{
    uint64_t i = 0;
    int num = strlen(token);

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

char* strndup(char* s, int len)
{
    char* str = (char*)malloc(len + 1);
    memcpy(str, s, len);
    str[len] = 0;
    return str;
}

class string
{
public:
    char* source = 0;
    string(char* src)
    {
        if (source != 0)
        {
            free(source);
        }
        
        source = strndup(src, stop_at(src, "\n"));
    }
};

std::ostream& operator<<(std::ostream& stream, string& str)
{
    stream << str.source;
}

int read(char* str)
{
    char* ex = "Hello World\n indinubc, nuhuc\n";
    string s(ex);
    std::cout << s;
}