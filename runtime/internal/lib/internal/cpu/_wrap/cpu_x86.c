#if defined(__GNUC__) || defined(__clang__)
#include <cpuid.h>

void llgo_getcpuid(unsigned int eax, unsigned int ecx,
                   unsigned int *a, unsigned int *b,
                   unsigned int *c, unsigned int *d)
{
#if defined(__i386__) || defined(__x86_64__)
    __cpuid_count(eax, ecx, *a, *b, *c, *d);
#endif
}
#else
#error This code requires GCC or Clang
#endif
