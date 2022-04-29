#include "../../include/var.hpp"

var* base_init()
{
    var* base = new var("base", TYPE_STRUCT);
    base->struct_create("enum", TYPE_STRUCT);
    base->struct_create("class", TYPE_STRUCT);
    base->struct_create("function", TYPE_STRUCT);

    return base;
}