#if defined(__linux__)
#define _GNU_SOURCE
#include <features.h>
#endif

#include <dlfcn.h>

void *llgo_address() {
    return __builtin_return_address(0);
}

int llgo_addrinfo(void *addr, Dl_info *info) {
    return dladdr(addr, info);
}
