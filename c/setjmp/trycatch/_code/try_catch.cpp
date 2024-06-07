#include <exception>
#include <stdio.h>

extern "C" void throwCppException();

int main() {
    try {
        throwCppException();
    } catch (std::exception& e) {
        printf("Hi, %s\n", e.what());
    }
    return 0;
}
