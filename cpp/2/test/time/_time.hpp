#include <iostream>
#include <chrono>
#include <time.h>

namespace my{



class time{
private:
    std::chrono::_V2::system_clock::time_point start_time;

public:
    time();
    double now();
    void start();
    double finish();
};

}