#include "../include/var.hpp"

class _class_system{

    var function_base;

    void function_init();

    _class_system();
};

void _class_system::function_init()
{
    _class_system::function_base = var("function", TYPE_STRUCT);

    _class_system::function_base.struct_create("ret", TYPE_UNDEFINED);
    _class_system::function_base.struct_create("argc", TYPE_INT);
    _class_system::function_base.struct_create("argv", TYPE_STRUCT);
    _class_system::function_base.struct_create("ft", TYPE_INT);
    _class_system::function_base.struct_create("data", TYPE_BUFFER);

}

_class_system::_class_system()
{
    

}