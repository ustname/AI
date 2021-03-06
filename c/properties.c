#include "variable.h"



PROP* prop_create(char* name)
{

    PROP* prop = malloc(sizeof(PROP));
    prop->name = strdup(name);
    prop->length = 0;
    prop->data.byte64 = 0;
    prop->type = 0;
    prop->flags = PROP_FLAG_USED;


    return prop;
}



int prop_edit(PROP* prop, int code, DATA* data)
{
    if (prop == NULL)
    {
        return -1;
    }
    DATA value;
    if (data != 0)
    {
        value = *data;
    }
    
    switch (code)
    {
        case PROP_EDIT_NAME:
        if (prop->name != NULL)
        {
            free(prop->name);
        }
        prop->name = strdup(value.cp);
        break;
    
        case PROP_EDIT_VALUE:
        prop->data.byte64 = value.byte64;
        break;

        case PROP_EDIT_CLEAN:
        prop->name = 0;
        prop->type = 0;
        prop->flags = PROP_FLAG_EMPTY;
        prop->data.byte64 = 0;
        prop->length = 0;
        break;

        case PROP_EDIT_FREE:
        if (prop->name != NULL)
        {
            free(prop->name);
        }//printf("properror");
        prop->name = 0;
        prop->type = 0;
        prop->flags = 0;
        if (prop->length != 0)
        {
            free(prop->data.vp);
            prop->length = 0;
        }
        prop->data.byte64 = 0;
        break;

        default:
        return -1;
        
    }
    return 0;
}

int prop_write(PROP* prop, DATA data, uint64_t length)
{
    if (prop == 0)
    {
        return 1;
    }
    
    if (length == 0)
    {
        prop->data = data;
    }else
    {
        if(prop->length != 0)
        {
            free(prop->data.vp);
            prop->data.vp = malloc(length);
            memcpy(prop->data.vp, data.vp, length);
            prop->length = length;
        }
    }
    
    
    return 0;
}

int prop_setname(PROP* prop, char* name)
{
    if (prop == 0)
    {
        return 1;
    }
    
    if (prop->name != 0)
    {
        free(prop->name);
    }
    prop->name = strdup(name);
    return 0;
}

void prop_dump(PROP* prop)
{
    if (prop == 0)
    {
        printf("(NULL)");
        return;
    }
    
    char* type;

    printf("prop name = %s", prop->name);
    printf("prop data length = %lli", prop->length);

    switch (prop->type)
    {
        case CHARP:
        type = "char ptr";
        break;

        case VOIDP:
        type = "void ptr";
        break;

        case SI64:
        type = "sint64";
        break;

        case UI64:
        type = "uint64";
        break;
    
        case SI32:
        type = "sint32";
        break;

        case UI32:
        type = "uint32";
        break;

        case SI16:
        type = "sint16";
        break;

        case UI16:
        type = "uint16";
        break;

        case SI8:
        type = "sint8";
        break;

        case UI8:
        type = "uint8";
        break;

        case SINGLEF:
        type = "float";
        break;

        case DOUBLEF:
        type = "double";
        break;

        default:
        type = "(NULL)";
        break;
    }
    printf("prop data type = %s");
    

}