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

int function_loader(var& buffer, char* str);

var* bsi::function(const char* name, var& member, char* str)
{
    var* function = new var(name, TYPE_STRUCT);
    function->struct_type = _strdup("function");
    var ret(TYPE_STRUCT);
    ret.copy(member);
    function->struct_create("ft", TYPE_INT);
    function->struct_create(ret); 
    function->struct_create("argc", TYPE_INT);
    function->struct_create("argv", TYPE_STRUCT);
    var* f_data = function->struct_create("data", TYPE_BUFFER);

    ret.clear();
    return function;
}

int function_loader(var& buffer, char* str){
    return 0;
}

int bsi::push_class(var& data) {
    var* root_class = bsi::bsi_root->struct_find("class");
    int64_t count = root_class->struct_count;

    for (size_t i = 0; i < count; i++)
    {
        if (sen_comp(data.name, root_class[i].name))
        {
            std::cerr << "Collision class declaration\n";
            exit(-1);
        }
    }

    root_class->struct_create(data);
    return 0;
}

var* bsi::init()
{
    var* root = new var("root", TYPE_STRUCT);
    root->struct_create("enum", TYPE_STRUCT);
    root->struct_create("class", TYPE_STRUCT);
    root->struct_create("function", TYPE_STRUCT);
    bsi::bsi_root = root;
    return root;
}