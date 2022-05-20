#include "bsi.hpp"

class class_system{
    std::vector<var> stor_class{};
    class_system();
    int load_class(var& dest, std::string name);
};