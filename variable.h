#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <memory.h>
#include "datahandle.h"
#ifndef VARIABLE__H
#define VARIABLE__H



enum VARENUM{
    VARENUM_EMPTY = -1,
    VARENUM_NULL = 0,
    VARENUM_USED = 1
};

typedef struct VAR_VAULT
{
    //int flags;
    //uint32_t version;
    VAR* varp;
    uint32_t var_num;
    uint32_t stackindex;
    
    struct VAR_VAULT *prev;
    struct VAR_VAULT *next;
}VAR_VAULT;

/**
 * create a variable from name
 * return variable pointer, else return 0 if already exist
*/
VAR* var_create(char* name, VAR* var_stack);



VAR* var_find(char* name, VAR*);


PROP* var_findprop(VAR* var, char* prop_name);


int var_delete(char* name);



int var_writeprop(VAR* var, PROP* prop);


int var_write(VAR* var, char* prop_name, uint64_t length, V_DATA* data, int type);


int var_read(VAR* var, char* prop_name, void* data, int* length);


int var_save(VAR* var, char* filename);


VAR* var_open(char* filename, VAR*);

VAR* var_createstack(char* stackname, uint64_t stacknum);

void var_init(uint64_t size);

enum PROP_EDIT{
    PROP_EDIT_FREE = 0,
    PROP_EDIT_CLEAN = 1,
    PROP_EDIT_NAME,
    PROP_EDIT_VALUE,
    PROP_EDIT_WRITE,
    PROP_EDIT_READ,
};

enum PROP_CODE{
    PROP_CODE_CLEANAFTERWRITE = -2,
    PROP_CODE_EMPTY = 0,
    PROP_CODE_USED = 1,
};

PROP* prop_create(char*);

int prop_edit(PROP*, int, V_DATA*);

int prop_setname(PROP* prop, char* name);

/// return 0 on succes
#endif