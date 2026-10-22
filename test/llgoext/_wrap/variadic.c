#include <stdarg.h>

int variadic_fixed(int marker, int value, double number) {
    return marker == 7 && value == 20 && number == 22.0 ? 42 : -1;
}

int variadic_indirect(int marker, ...) {
    if (marker == 0) return 42;
    va_list ap;
    va_start(ap, marker);
    int value = va_arg(ap, int);
    double number = va_arg(ap, double);
    long long wide = va_arg(ap, long long);
    void *pointer = va_arg(ap, void *);
    va_end(ap);
    return marker == 7 && value == 20 && number == 22.0 && wide == -9 && pointer == 0 ? 42 : -1;
}

typedef int (*variadic_function)(int, ...);

variadic_function variadic_address(void) { return variadic_indirect; }
