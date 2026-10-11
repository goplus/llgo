/* MSYS2's ARM64 MinGW vadefs.h has no _M_ARM64 varargs branch. Clang's MSVC
 * target still supports the GNU varargs builtins, so advertise that compiler
 * compatibility only while reading the ARM64 libffi/CRT headers. x86 targets
 * use their native MSVC header branches and keep libffi's MSVC ABI selection. */
#if defined(_WIN32) && defined(__aarch64__) && defined(_MSC_VER) &&        \
    defined(__clang__) && !defined(__GNUC__)
#define LLGO_LIBFFI_MINGW_HEADER_COMPAT 1
#define __GNUC__ 4
#define __GNUC_MINOR__ 2
#define __GNUC_PATCHLEVEL__ 1
#endif
#include <ffi.h>
#if defined(LLGO_LIBFFI_MINGW_HEADER_COMPAT)
#undef __GNUC_PATCHLEVEL__
#undef __GNUC_MINOR__
#undef __GNUC__
#undef LLGO_LIBFFI_MINGW_HEADER_COMPAT
#endif

#if defined(_WIN32) && defined(__x86_64__)
#if defined(__MINGW32__)
_Static_assert(FFI_GNUW64 == 2,
               "LLGo's Windows MinGW x86-64 ABI constant is stale");
_Static_assert(FFI_DEFAULT_ABI == FFI_GNUW64,
               "Windows MinGW x86-64 requires libffi's GNUW64 ABI");
#else
_Static_assert(FFI_WIN64 == 1,
               "LLGo's Windows x86-64 ABI constant is stale");
_Static_assert(FFI_DEFAULT_ABI == FFI_WIN64,
               "Windows x86-64 requires libffi's MSVC ABI");
#endif
#elif defined(_WIN32) && defined(__i386__)
_Static_assert(FFI_DEFAULT_ABI == FFI_MS_CDECL,
               "Windows x86 requires libffi's MSVC cdecl ABI");
_Static_assert(FFI_STDCALL == 2,
               "LLGo's Windows x86 stdcall ABI constant is stale");
#elif defined(_WIN32) && defined(__aarch64__)
_Static_assert(FFI_DEFAULT_ABI == FFI_WIN64,
               "Windows AArch64 requires libffi's Win64 ABI");
#endif

void *llgo_ffi_closure_alloc(void **code) {
    return ffi_closure_alloc(sizeof(ffi_closure), code);
}

/*
 * Use libffi's Go ABI directly when its static-chain register is LLGo's nest
 * register. ARM32 needs only a final register bridge from libffi's IP/R12 to
 * swiftself/R10. AArch64 ELF bridges libffi's X18 to LLVM's nest/X15.
 * Use the public-ffi_call trampoline when libffi does not
 * expose its Go ABI on x86, and on AArch64 Apple/Android where X18 is reserved
 * and LLGo uses swiftself/X20 instead.
 *
 * Windows follows the same architecture-selected closure ABI. Its x86
 * backends can use the direct path below; Windows AArch64 uses swiftself/X20
 * and therefore shares the public-ffi-call trampoline.
 */
#if defined(__x86_64__) || defined(__i386__) || defined(__riscv) ||        \
    defined(__riscv__) || defined(__arm__) || defined(__aarch64__)
#define LLGO_FFI_HIDDEN_ENV_TARGET 1
#endif

#if defined(FFI_GO_CLOSURES) &&                                           \
    (defined(__x86_64__) || defined(__i386__) || defined(__riscv) ||       \
     defined(__riscv__))
#define LLGO_FFI_CALL_GO_DIRECT 1
#elif defined(FFI_GO_CLOSURES) && defined(__aarch64__) && !defined(__APPLE__) && \
    !defined(__ANDROID__) && !defined(_WIN32)
#define LLGO_FFI_CALL_GO_AARCH64_BRIDGE 1
#elif !defined(_WIN32) && defined(__arm__)
#define LLGO_FFI_CALL_GO_ARM_BRIDGE 1
#elif (defined(_WIN32) && defined(__aarch64__)) ||                         \
    (!defined(_WIN32) &&                                                  \
    (((defined(__x86_64__) || defined(__i386__)) &&                        \
      !defined(FFI_GO_CLOSURES)) ||                                        \
     (defined(__aarch64__) &&                                              \
      (defined(__APPLE__) || defined(__ANDROID__)))))
#define LLGO_FFI_CALL_PUBLIC_TRAMPOLINE 1
#endif

#if defined(LLGO_FFI_CALL_GO_ARM_BRIDGE) && !defined(FFI_GO_CLOSURES)
#error "LLGo hidden closure environments require libffi Go closures on ARM"
#elif !defined(_WIN32) && !defined(FFI_GO_CLOSURES) &&                     \
    (defined(__riscv) || defined(__riscv__) ||                             \
     (defined(__aarch64__) && !defined(__APPLE__) && !defined(__ANDROID__) && \
      !defined(_WIN32)))
#error "LLGo hidden closure environments require libffi Go closures on this target"
#elif defined(LLGO_FFI_HIDDEN_ENV_TARGET) &&                              \
    (defined(LLGO_FFI_CALL_GO_DIRECT) +                                   \
         defined(LLGO_FFI_CALL_GO_AARCH64_BRIDGE) +                       \
         defined(LLGO_FFI_CALL_GO_ARM_BRIDGE) +                           \
         defined(LLGO_FFI_CALL_PUBLIC_TRAMPOLINE) !=                      \
     1)
#error "LLGo hidden-env target must select exactly one libffi final-hop path"
#endif

#if defined(LLGO_FFI_CALL_GO_DIRECT)

void llgo_ffi_call_with_env(ffi_cif *cif, void (*fn)(void), void *rvalue,
                            void **avalue, void *env) {
    ffi_call_go(cif, fn, rvalue, avalue, env);
}

#elif defined(LLGO_FFI_CALL_GO_AARCH64_BRIDGE)

struct llgo_ffi_call_context {
    void (*target)(void);
    void *env;
};

/* libffi installs the context in X18; LLVM's AArch64 nest entry reads X15.
 * A tail branch preserves every C argument, the return address and SP. */
__attribute__((naked)) static void llgo_ffi_env_trampoline(void) {
    __asm__ volatile(
        "ldr x16, [x18, #0]\n\t"
        "ldr x15, [x18, #8]\n\t"
        "br x16");
}

void llgo_ffi_call_with_env(ffi_cif *cif, void (*fn)(void), void *rvalue,
                            void **avalue, void *env) {
    struct llgo_ffi_call_context call = { .target = fn, .env = env };
    ffi_call_go(cif, llgo_ffi_env_trampoline, rvalue, avalue, &call);
}

#elif defined(LLGO_FFI_CALL_GO_ARM_BRIDGE)

struct llgo_ffi_call_context {
    void (*target)(void);
    void *env;
    void *saved_callee;
    void *saved_self;
    void *saved_return;
};

/* The target must return normally through this bridge so its callee-saved
 * registers and return address can be restored. */

/*
 * ffi_call_go enters this function with the context in IP/R12 and all real
 * arguments already marshalled. Preserve the callee-saved registers used by
 * the continuation, install swiftself/R10, and enter the target without
 * changing SP or any argument register.
 */
__attribute__((naked)) static void llgo_ffi_env_trampoline(void) {
    __asm__ volatile(
        "str r4, [r12, #8]\n\t"
        "str r10, [r12, #12]\n\t"
        "str lr, [r12, #16]\n\t"
        "mov r4, r12\n\t"
        "ldr r10, [r12, #4]\n\t"
        "ldr r12, [r12, #0]\n\t"
        "blx r12\n\t"
        "ldr r12, [r4, #8]\n\t"
        "ldr r10, [r4, #12]\n\t"
        "ldr lr, [r4, #16]\n\t"
        "mov r4, r12\n\t"
        "bx lr");
}

void llgo_ffi_call_with_env(ffi_cif *cif, void (*fn)(void), void *rvalue,
                            void **avalue, void *env) {
    struct llgo_ffi_call_context call = {
        .target = fn,
        .env = env,
    };
    ffi_call_go(cif, llgo_ffi_env_trampoline, rvalue, avalue, &call);
}

#elif defined(LLGO_FFI_CALL_PUBLIC_TRAMPOLINE)

/*
 * Public ffi_call cannot transport the hidden environment register. Keep the
 * real target and env in per-thread state while libffi marshals the arguments.
 * Its final target saves those arguments, obtains the state, installs the
 * target register, and enters the real entry with the original SP.
 */
struct llgo_ffi_call_context {
    void (*target)(void);
    void *env;
    void *saved_callee;
    void *saved_self;
    void *saved_return;
};

/* Targets must return normally through ffi_call. A non-local exit would skip
 * both the trampoline's register restore and the prior TLS-context restore. */

static _Thread_local struct llgo_ffi_call_context llgo_ffi_call_current;

__attribute__((noinline, used)) static struct llgo_ffi_call_context *
llgo_ffi_current_call(void) {
    return &llgo_ffi_call_current;
}

#if defined(__APPLE__)
#define LLGO_ASM_CSYM(name) "_" #name
#else
#define LLGO_ASM_CSYM(name) #name
#endif

#if defined(__x86_64__)

__attribute__((naked)) static void llgo_ffi_env_trampoline(void) {
    __asm__ volatile(
        "subq $200, %rsp\n\t"
        "movq %rdi, 0(%rsp)\n\t"
        "movq %rsi, 8(%rsp)\n\t"
        "movq %rdx, 16(%rsp)\n\t"
        "movq %rcx, 24(%rsp)\n\t"
        "movq %r8, 32(%rsp)\n\t"
        "movq %r9, 40(%rsp)\n\t"
        "movq %rax, 48(%rsp)\n\t"
        "movdqu %xmm0, 64(%rsp)\n\t"
        "movdqu %xmm1, 80(%rsp)\n\t"
        "movdqu %xmm2, 96(%rsp)\n\t"
        "movdqu %xmm3, 112(%rsp)\n\t"
        "movdqu %xmm4, 128(%rsp)\n\t"
        "movdqu %xmm5, 144(%rsp)\n\t"
        "movdqu %xmm6, 160(%rsp)\n\t"
        "movdqu %xmm7, 176(%rsp)\n\t"
        "callq " LLGO_ASM_CSYM(llgo_ffi_current_call) "\n\t"
        "movq 0(%rax), %r11\n\t"
        "movq 8(%rax), %r10\n\t"
        "movdqu 64(%rsp), %xmm0\n\t"
        "movdqu 80(%rsp), %xmm1\n\t"
        "movdqu 96(%rsp), %xmm2\n\t"
        "movdqu 112(%rsp), %xmm3\n\t"
        "movdqu 128(%rsp), %xmm4\n\t"
        "movdqu 144(%rsp), %xmm5\n\t"
        "movdqu 160(%rsp), %xmm6\n\t"
        "movdqu 176(%rsp), %xmm7\n\t"
        "movq 0(%rsp), %rdi\n\t"
        "movq 8(%rsp), %rsi\n\t"
        "movq 16(%rsp), %rdx\n\t"
        "movq 24(%rsp), %rcx\n\t"
        "movq 32(%rsp), %r8\n\t"
        "movq 40(%rsp), %r9\n\t"
        "movq 48(%rsp), %rax\n\t"
        "addq $200, %rsp\n\t"
        "jmpq *%r11");
}

#elif defined(__i386__)

__attribute__((naked)) static void llgo_ffi_env_trampoline(void) {
    __asm__ volatile(
        "subl $12, %esp\n\t"
        "calll " LLGO_ASM_CSYM(llgo_ffi_current_call) "\n\t"
        "movl 0(%eax), %edx\n\t"
        "movl 4(%eax), %ecx\n\t"
        "addl $12, %esp\n\t"
        "jmpl *%edx");
}

#elif defined(__aarch64__)

__attribute__((naked)) static void llgo_ffi_env_trampoline(void) {
    __asm__ volatile(
        "sub sp, sp, #224\n\t"
        "stp x0, x1, [sp, #0]\n\t"
        "stp x2, x3, [sp, #16]\n\t"
        "stp x4, x5, [sp, #32]\n\t"
        "stp x6, x7, [sp, #48]\n\t"
        "str x8, [sp, #64]\n\t"
        "str x30, [sp, #72]\n\t"
        "stp q0, q1, [sp, #80]\n\t"
        "stp q2, q3, [sp, #112]\n\t"
        "stp q4, q5, [sp, #144]\n\t"
        "stp q6, q7, [sp, #176]\n\t"
        "bl " LLGO_ASM_CSYM(llgo_ffi_current_call) "\n\t"
        "mov x16, x0\n\t"
        "ldr x17, [x16, #0]\n\t"
        "str x19, [x16, #16]\n\t"
        "str x20, [x16, #24]\n\t"
        "ldr x15, [sp, #72]\n\t"
        "str x15, [x16, #32]\n\t"
        "mov x19, x16\n\t"
        "ldr x20, [x16, #8]\n\t"
        "ldp q0, q1, [sp, #80]\n\t"
        "ldp q2, q3, [sp, #112]\n\t"
        "ldp q4, q5, [sp, #144]\n\t"
        "ldp q6, q7, [sp, #176]\n\t"
        "ldr x8, [sp, #64]\n\t"
        "ldp x0, x1, [sp, #0]\n\t"
        "ldp x2, x3, [sp, #16]\n\t"
        "ldp x4, x5, [sp, #32]\n\t"
        "ldp x6, x7, [sp, #48]\n\t"
        "add sp, sp, #224\n\t"
        "blr x17\n\t"
        "ldr x16, [x19, #16]\n\t"
        "ldr x20, [x19, #24]\n\t"
        "ldr x30, [x19, #32]\n\t"
        "mov x19, x16\n\t"
        "ret");
}

#endif

void llgo_ffi_call_with_env(ffi_cif *cif, void (*fn)(void), void *rvalue,
                            void **avalue, void *env) {
    struct llgo_ffi_call_context previous = llgo_ffi_call_current;
    llgo_ffi_call_current.target = fn;
    llgo_ffi_call_current.env = env;
    ffi_call(cif, llgo_ffi_env_trampoline, rvalue, avalue);
    llgo_ffi_call_current = previous;
}

#endif
