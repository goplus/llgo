#include "spdlog/spdlog.h"

 extern "C" void PrintInfo(const char* msg){
    spdlog::info(msg);
}