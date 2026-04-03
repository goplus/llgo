#if defined(__has_include)
#if __has_include(<dlfcn.h>) && __has_include(<libunwind.h>)
#define LLGO_HAVE_HOST_DEBUG 1
#endif
#endif

#if defined(LLGO_HAVE_HOST_DEBUG)

#if defined(__linux__)
#define UNW_LOCAL_ONLY
#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#include <features.h>
#endif

#include <dlfcn.h>
#include <libunwind.h>

void *llgo_address() {
    return __builtin_return_address(0);
}

int llgo_addrinfo(void *addr, Dl_info *info) {
    return dladdr(addr, info);
}

void llgo_stacktrace(int skip, void *ctx, int (*fn)(void *ctx, void *pc, void *offset, void *sp, char *name)) {
    unw_cursor_t cursor;
    unw_context_t context;
    unw_word_t offset, pc, sp;
    char fname[256];
    unw_getcontext(&context);
    unw_init_local(&cursor, &context);
    int depth = 0;
    while (unw_step(&cursor) > 0) {
        if (depth < skip) {
            depth++;
            continue;
        }
        if (unw_get_reg(&cursor, UNW_REG_IP, &pc) == 0) {
            unw_get_proc_name(&cursor, fname, sizeof(fname), &offset);
            unw_get_reg(&cursor, UNW_REG_SP, &sp);
            if (fn(ctx, (void*)pc, (void*)offset, (void*)sp, fname) == 0) {
                return;
            }
        }
    }
}

#else

typedef struct {
    const char *dli_fname;
    void *dli_fbase;
    const char *dli_sname;
    void *dli_saddr;
} Dl_info;

void *llgo_address() {
    return 0;
}

int llgo_addrinfo(void *addr, Dl_info *info) {
    (void)addr;
    if (info) {
        info->dli_fname = 0;
        info->dli_fbase = 0;
        info->dli_sname = 0;
        info->dli_saddr = 0;
    }
    return 0;
}

void llgo_stacktrace(int skip, void *ctx, int (*fn)(void *ctx, void *pc, void *offset, void *sp, char *name)) {
    (void)skip;
    (void)ctx;
    (void)fn;
}

#endif
