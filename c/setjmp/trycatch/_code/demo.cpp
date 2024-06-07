#include <stdexcept>

extern "C" void throwCppException() {
    throw std::runtime_error("C++ exception");
}
