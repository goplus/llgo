#include <stdio.h>
#include <clang-c/Index.h>

int main() {
    printf("sizeof(clang.Cursor) = %lu\n", sizeof(CXCursor));
    return 0;
}
