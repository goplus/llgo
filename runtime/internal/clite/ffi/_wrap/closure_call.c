#include <stdint.h>
#include <ffi.h>

#if defined(__APPLE__)
#define LLGO_SYM(name) "_" name
#else
#define LLGO_SYM(name) name
#endif

#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 201112L
#define LLGO_TLS _Thread_local
#elif defined(__GNUC__)
#define LLGO_TLS __thread
#else
#define LLGO_TLS
#endif

static LLGO_TLS void *llgo_closure_call_fn = 0;
static LLGO_TLS void *llgo_closure_call_env = 0;

void llgo_set_closure_call_ctx(void *fn, void *env) {
    llgo_closure_call_fn = fn;
    llgo_closure_call_env = env;
}

void llgo_clear_closure_call_ctx(void) {
    llgo_closure_call_fn = 0;
    llgo_closure_call_env = 0;
}

void *llgo_get_closure_call_fn(void) {
    return llgo_closure_call_fn;
}

void *llgo_get_closure_call_env(void) {
    return llgo_closure_call_env;
}

void llgo_closure_call_trampoline(void);

void llgo_ffi_call_closure(ffi_cif *cif, void *fn, void *env, void *rvalue, void **avalue) {
    llgo_set_closure_call_ctx(fn, env);
    ffi_call(cif, llgo_closure_call_trampoline, rvalue, avalue);
    llgo_clear_closure_call_ctx();
}

__attribute__((naked))
void llgo_closure_call_trampoline(void) {
#if defined(__aarch64__)
    __asm__ volatile(
        "sub sp, sp, #0xe0\n"
        "str x30, [sp, #0xd0]\n"
        "stp x0, x1, [sp, #0x00]\n"
        "stp x2, x3, [sp, #0x10]\n"
        "stp x4, x5, [sp, #0x20]\n"
        "stp x6, x7, [sp, #0x30]\n"
        "str x8, [sp, #0x40]\n"
        "stp q0, q1, [sp, #0x50]\n"
        "stp q2, q3, [sp, #0x70]\n"
        "stp q4, q5, [sp, #0x90]\n"
        "stp q6, q7, [sp, #0xb0]\n"
        "bl " LLGO_SYM("llgo_get_closure_call_env") "\n"
        "str x0, [sp, #0x48]\n"
        "bl " LLGO_SYM("llgo_get_closure_call_fn") "\n"
        "ldr x9, [sp, #0x48]\n"
        "mov x10, x0\n"
        "ldp q6, q7, [sp, #0xb0]\n"
        "ldp q4, q5, [sp, #0x90]\n"
        "ldp q2, q3, [sp, #0x70]\n"
        "ldp q0, q1, [sp, #0x50]\n"
        "ldr x8, [sp, #0x40]\n"
        "ldp x6, x7, [sp, #0x30]\n"
        "ldp x4, x5, [sp, #0x20]\n"
        "ldp x2, x3, [sp, #0x10]\n"
        "ldp x0, x1, [sp, #0x00]\n"
        "ldr x30, [sp, #0xd0]\n"
        "add sp, sp, #0xe0\n"
        "mov x26, x9\n"
        "br x10\n"
    );
#elif defined(__x86_64__)
    __asm__ volatile(
        "push %r12\n"
        "sub $128, %rsp\n"
        "movdqu %xmm0, 0(%rsp)\n"
        "movdqu %xmm1, 16(%rsp)\n"
        "movdqu %xmm2, 32(%rsp)\n"
        "movdqu %xmm3, 48(%rsp)\n"
        "movdqu %xmm4, 64(%rsp)\n"
        "movdqu %xmm5, 80(%rsp)\n"
        "movdqu %xmm6, 96(%rsp)\n"
        "movdqu %xmm7, 112(%rsp)\n"
        "push %r9\n"
        "push %r8\n"
        "push %rcx\n"
        "push %rdx\n"
        "push %rsi\n"
        "push %rdi\n"
        "call " LLGO_SYM("llgo_get_closure_call_env") "\n"
        "mov %rax, %r12\n"
        "call " LLGO_SYM("llgo_get_closure_call_fn") "\n"
        "mov %rax, %r11\n"
        "pop %rdi\n"
        "pop %rsi\n"
        "pop %rdx\n"
        "pop %rcx\n"
        "pop %r8\n"
        "pop %r9\n"
        "movdqu 0(%rsp), %xmm0\n"
        "movdqu 16(%rsp), %xmm1\n"
        "movdqu 32(%rsp), %xmm2\n"
        "movdqu 48(%rsp), %xmm3\n"
        "movdqu 64(%rsp), %xmm4\n"
        "movdqu 80(%rsp), %xmm5\n"
        "movdqu 96(%rsp), %xmm6\n"
        "movdqu 112(%rsp), %xmm7\n"
        "add $128, %rsp\n"
        "movq %r12, %mm0\n"
        "pop %r12\n"
        "jmp *%r11\n"
    );
#elif defined(__i386__)
    __asm__ volatile(
        "push %ebx\n"
        "call " LLGO_SYM("llgo_get_closure_call_env") "\n"
        "mov %eax, %ebx\n"
        "call " LLGO_SYM("llgo_get_closure_call_fn") "\n"
        "mov %eax, %ecx\n"
        "movd %ebx, %mm0\n"
        "pop %ebx\n"
        "jmp *%ecx\n"
    );
#elif defined(__riscv)
#if __riscv_xlen == 64
    __asm__ volatile(
        "addi sp, sp, -144\n"
        "sd a0, 0(sp)\n"
        "sd a1, 8(sp)\n"
        "sd a2, 16(sp)\n"
        "sd a3, 24(sp)\n"
        "sd a4, 32(sp)\n"
        "sd a5, 40(sp)\n"
        "sd a6, 48(sp)\n"
        "sd a7, 56(sp)\n"
        "fsd fa0, 64(sp)\n"
        "fsd fa1, 72(sp)\n"
        "fsd fa2, 80(sp)\n"
        "fsd fa3, 88(sp)\n"
        "fsd fa4, 96(sp)\n"
        "fsd fa5, 104(sp)\n"
        "fsd fa6, 112(sp)\n"
        "fsd fa7, 120(sp)\n"
        "sd s0, 128(sp)\n"
        "sd ra, 136(sp)\n"
        "call " LLGO_SYM("llgo_get_closure_call_env") "\n"
        "mv s0, a0\n"
        "call " LLGO_SYM("llgo_get_closure_call_fn") "\n"
        "mv t1, a0\n"
        "ld a0, 0(sp)\n"
        "ld a1, 8(sp)\n"
        "ld a2, 16(sp)\n"
        "ld a3, 24(sp)\n"
        "ld a4, 32(sp)\n"
        "ld a5, 40(sp)\n"
        "ld a6, 48(sp)\n"
        "ld a7, 56(sp)\n"
        "fld fa0, 64(sp)\n"
        "fld fa1, 72(sp)\n"
        "fld fa2, 80(sp)\n"
        "fld fa3, 88(sp)\n"
        "fld fa4, 96(sp)\n"
        "fld fa5, 104(sp)\n"
        "fld fa6, 112(sp)\n"
        "fld fa7, 120(sp)\n"
        "mv t0, s0\n"
        "ld s0, 128(sp)\n"
        "ld ra, 136(sp)\n"
        "addi sp, sp, 144\n"
        "mv x27, t0\n"
        "jr t1\n"
    );
#else
    __asm__ volatile(
        "addi sp, sp, -112\n"
        "sw a0, 0(sp)\n"
        "sw a1, 4(sp)\n"
        "sw a2, 8(sp)\n"
        "sw a3, 12(sp)\n"
        "sw a4, 16(sp)\n"
        "sw a5, 20(sp)\n"
        "sw a6, 24(sp)\n"
        "sw a7, 28(sp)\n"
        "fsd fa0, 32(sp)\n"
        "fsd fa1, 40(sp)\n"
        "fsd fa2, 48(sp)\n"
        "fsd fa3, 56(sp)\n"
        "fsd fa4, 64(sp)\n"
        "fsd fa5, 72(sp)\n"
        "fsd fa6, 80(sp)\n"
        "fsd fa7, 88(sp)\n"
        "sw s0, 96(sp)\n"
        "sw ra, 100(sp)\n"
        "call " LLGO_SYM("llgo_get_closure_call_env") "\n"
        "mv s0, a0\n"
        "call " LLGO_SYM("llgo_get_closure_call_fn") "\n"
        "mv t1, a0\n"
        "lw a0, 0(sp)\n"
        "lw a1, 4(sp)\n"
        "lw a2, 8(sp)\n"
        "lw a3, 12(sp)\n"
        "lw a4, 16(sp)\n"
        "lw a5, 20(sp)\n"
        "lw a6, 24(sp)\n"
        "lw a7, 28(sp)\n"
        "fld fa0, 32(sp)\n"
        "fld fa1, 40(sp)\n"
        "fld fa2, 48(sp)\n"
        "fld fa3, 56(sp)\n"
        "fld fa4, 64(sp)\n"
        "fld fa5, 72(sp)\n"
        "fld fa6, 80(sp)\n"
        "fld fa7, 88(sp)\n"
        "mv t0, s0\n"
        "lw s0, 96(sp)\n"
        "lw ra, 100(sp)\n"
        "addi sp, sp, 112\n"
        "mv x27, t0\n"
        "jr t1\n"
    );
#endif
#else
    ((void (*)(void))llgo_closure_call_fn)();
#endif
}
