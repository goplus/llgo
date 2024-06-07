extern "C" void throwCppException();

int main() {
    try {
        throwCppException();
    } catch (...) {
        throw;
    }
    return 0;
}
