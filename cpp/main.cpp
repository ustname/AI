#include "var.hpp"

using al::var;

int main()
{
    var mine("my var", 1);
    var* one = mine.create("halima");
    one->write("kol", 234);
    one->rewrite("kol", "lok");
    std::cout << one->findprop("lok")->data.d;
    mine.destroy();
    std::cout << "Exit program";
}