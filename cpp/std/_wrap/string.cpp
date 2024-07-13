#include <string>
#include <new>

extern "C" {

// -----------------------------------------------------------------------------

void stdStringInitEmpty(std::string* s) {
    new(s) std::string();
}

void stdStringInitFrom(std::string* s, std::string* v) {
    new(s) std::string(*v);
}

void stdStringInitFromCStr(std::string* s, const char* cstr) {
    new(s) std::string(cstr);
}

void stdStringInitFromCStrLen(std::string* s, const char* cstr, size_t len) {
    new(s) std::string(cstr, len);
}

void stdStringDispose(std::string* s) {
    s->~basic_string();
}

// -----------------------------------------------------------------------------

const char* stdStringCStr(const std::string* s) {
    return s->c_str();
}

const char* stdStringData(const std::string* s) {
    return s->data();
}

size_t stdStringSize(const std::string* s) {
    return s->size();
}

// -----------------------------------------------------------------------------

} // extern "C"
