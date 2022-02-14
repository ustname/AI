#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <string>

//void fun()
//{
//    double d = 14.00001;
//
//    int num = d;
//
//    d = d - num;
//
//    bool b = d > 0;
//    
//    std::cout << b << " " << std::setprecision(10) << d;
//}

//void* func(int num1, int num2)
//{
//    static char* name = " Hello World";
//    printf("%i", num1);
//    return name;
//}

//void timechecking()
//{
//    int a = 5;
//    static int static_a = 5;
//
//    //timespec ts;
//    long long t = clock();
//    for (int i = 0; i < 100000000; i++)
//    {
//        static_a++;
//    }
//    long long ts = clock();
//    printf("from normal int %lf\n", (double)(ts - t)/CLOCKS_PER_SEC);
//
//    t = clock();
//    for (int i = 0; i < 100000000; i++)
//    {
//        a++;
//    }
//    ts = clock();
//    printf("from static int %lf\n", (double)(ts - t)/CLOCKS_PER_SEC);
//}

//void file_writing()
//{
//    FILE* f = stdin;
//    
//    //fwrite("minuhb", 1, 10, f);
//    char buf[100];
//    memset(buf, 0, 100);
//    fread(buf, 1, 11, f);
//    printf(buf);
//}

//void string_find()
//{
//    std::string str("Hello \nWorld");
//    int pos = str.find("\n", 8);
//    printf("%s", str.data() + pos+1);
//}

#include "stack.hpp"

int main()
{
    stack <int> var;
    var.push(7);
    var.push(9);
    std::cout << var[0];
    
    //while (var.size)
    //{
    //    std::cout << var.pop() << std::endl;
    //}
    
}