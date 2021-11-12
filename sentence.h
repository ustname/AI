#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <memory.h>
#include "datahandle.h"

#ifndef COMMAND__H
#define COMMAND__H

enum SENTENCE_TYPE{
    SEN_TYPE_ASSIGNMENT = 1,
    SEN_TYPE_CONDITION = 2,
    SEN_TYPE_QUESTION = 3,
    SEN_TYPE_COMMAND = 4,
    SEN_TYPE_ANSWER = 5,
};

enum QUESTION_TYPE{
    QUESTION_TYPE_WHAT = 1,
    QUESTION_TYPE_WHY = 2,
    QUESTION_TYPE_HOW = 3,
};

int sen_open(SEN* sen, char* str);

SEN* sen_alloc();

int sen_close(SEN* sen);

int sen_free(SEN* sen);

char* sen_stop(char* src, char* args, uint64_t len);

char* sen_skip(char* src, char* args, uint64_t len);

char* sen_find(char* src, char* tok, uint64_t len);

//int cmd(char*);

#endif