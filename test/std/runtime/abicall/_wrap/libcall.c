#include <errno.h>
#include <stdint.h>
#include <signal.h>

typedef struct {
    int64_t a,b,result,depth,signal;
    void *payload;
    int64_t traced;
} block;
extern int32_t LLGoLibcallCallback(void *);
static int32_t trampoline(void *raw) {
    block *b=raw;
    if (b->signal) raise(SIGUSR1);
    int32_t result=LLGoLibcallCallback(raw);
    errno=ERANGE;
    return result+1;
}
void *llgo_test_libcall_address(void) {return (void *)&trampoline;}
int32_t llgo_test_libcall_errno(void) {return errno;}
int32_t llgo_test_libcall_erange(void) {return ERANGE;}
#if defined(__linux__)
extern int __llgo_allthreads_executable __attribute__((weak,visibility("hidden")));
#endif
_Bool llgo_test_allthreads_standalone(void) {
#if defined(__linux__) && (defined(__x86_64__) || defined(__aarch64__))
    return &__llgo_allthreads_executable && __llgo_allthreads_executable;
#else
    return 0;
#endif
}
