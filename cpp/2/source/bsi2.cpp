#include "../include/bsi.hpp"
#include "../include/sen.hpp"

var* bsi::bsi_root;

var* bsi::search(char* member, int& src)
{
    var* t;
    var* res;

    if (res = bsi::bsi_root->struct_find(member))
    {
        src = BSI_FROM_BASE;
        return res;
    }
    if (t = bsi::bsi_root->struct_find("enum"))
    {
        if (res = t->struct_find(member))
        {
            src = BSI_FROM_ENUM;
            return res;
        }
    }
    if (t = bsi::bsi_root->struct_find("class"))
    {
        if (res = t->struct_find(member))
        {
            src = BSI_FROM_CLASS;
            return res;
        }
    }
    if (t = bsi::bsi_root->struct_find("function"))
    {
        if (res = t->struct_find(member))
        {
            src = BSI_FROM_FUNCTION;
            return res;
        }
    }
    
    return 0;
}