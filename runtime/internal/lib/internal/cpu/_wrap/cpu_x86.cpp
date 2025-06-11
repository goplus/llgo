
extern "C" {

#if defined(__GNUC__) || defined(__clang__)
void llgo_getcpuid(unsigned int eax, unsigned int ecx,
                   unsigned int *a, unsigned int *b,
                   unsigned int *c, unsigned int *d)
{
#if defined(__i386__) || defined(__x86_64__)
    __asm__ __volatile__(
        "pushq %%rbp\n\t"
        "movq %%rsp, %%rbp\n\t"
        "andq $-16, %%rsp\n\t" // 16-byte align stack
        "cpuid\n\t"
        "movq %%rbp, %%rsp\n\t"
        "popq %%rbp\n\t"
        : "=a"(*a), "=b"(*b), "=c"(*c), "=d"(*d)
        : "a"(eax), "c"(ecx)
        : "memory");
#endif
}
#else
#error This code requires GCC or Clang
#endif

}