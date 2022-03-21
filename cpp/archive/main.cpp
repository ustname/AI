#include "var.hpp"

using al::var;

int main()
{
    var mine("Hello", 2);
    //mine.write("Shsumannya", 1234);

    
    mine.create("Indi");
    mine.save("vardata.bin");std::cout << "program done";
    //my->load("newdata.bin");
    var my;
    //my.load("vardata.bin");
    ////mine.destroy();
    //std::cout << my.find("Indi")->name << std::endl;
    
}