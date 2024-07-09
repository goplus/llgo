#include "spdlog/spdlog.h"

// void PrintInfo(const char* msg);

// int main() 
// {
//     spdlog::info("Welcome to spdlog!");
//     PrintInfo("Hello from C++!");
// }


 extern "C" void PrintInfo(const char* msg){
    spdlog::info(msg);
}