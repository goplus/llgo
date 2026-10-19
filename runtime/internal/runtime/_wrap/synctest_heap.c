#define _GNU_SOURCE 1
#include <stdint.h>

/* internal/synctest only passes escaped objects. Static Go variables remain
 * unbubbled, matching Go's heap-only association records. No allocation or
 * object layout change is needed for the WaitGroup side table. */
#if defined(__wasm__)
extern unsigned char __heap_base;
_Bool llgo_synctest_can_associate(void *p) {
    return (uintptr_t)p >= (uintptr_t)&__heap_base;
}
#elif defined(_WIN32)
#include <windows.h>
_Bool llgo_synctest_can_associate(void *p) {
    HMODULE module;
    return p && !GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS |
        GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT, (LPCWSTR)p, &module);
}
#elif defined(__linux__) || defined(__APPLE__)
#include <dlfcn.h>
_Bool llgo_synctest_can_associate(void *p) {
    Dl_info info;
    return p && !dladdr(p, &info);
}
#else
_Bool llgo_synctest_can_associate(void *p) { return p != 0; }
#endif
