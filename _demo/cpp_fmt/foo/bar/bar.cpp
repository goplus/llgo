#include <stdio.h>
#include <fmt/core.h>

extern "C" void Cprint(char* ss) {
        fmt::print(ss);
}