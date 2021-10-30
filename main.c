
#include "variable.h"
#include "sentence.h"

int main()
{
    var_init(10);//
    VAR* lol = var_create("apple", 0);
    PROP p = {"properties", 0, 64, 0, PROP_CODE_CLEANAFTERWRITE}; 
    var_write(lol, &p);
    p = (PROP){"properties", 0, 30, 0, PROP_CODE_CLEANAFTERWRITE};
    var_write(lol, &p);
    PROP* ptr = var_findprop(lol, "properties");
    printf("\n%s", ptr->name);
    //printf("%llu, %llu, %llu ", buffer.cp, lol[0].prop->data.byte64, lol[0].prop->data.vd);
    

    printf("done");
    return 0;
}