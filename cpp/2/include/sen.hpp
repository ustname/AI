#include "data.hpp"

#pragma once

uint64_t stop_at(char *str, const char *token);

char* skip_at(char* str, const char* token);

uint64_t name_len(char* str);

void print_len(char* str, uint64_t len);

bool sen_comp(const char* str, const char* prod);

char* strndup(const char* str, uint64_t len);

namespace sen
{
    class string{
    public:
        string();
        string(const char* str);
        uint64_t index;
        uint64_t size;
        char* data;
        uint64_t operator<<(const char* str);
        uint64_t writes(const char* str, uint64_t length = 0);
        uint64_t writef(double number);
        uint64_t writei(int64_t number);
        uint64_t writes_at(const char* str, uint64_t length, int64_t index);
        uint64_t writef_at(double number , int64_t index);
        uint64_t writei_at(int64_t number, int64_t index);
        void clear();
    };
}