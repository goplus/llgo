#if defined(__linux__)
#define UNW_LOCAL_ONLY
#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#include <features.h>
#endif

#include <dlfcn.h>
#include <stdio.h>
#include <libunwind.h>

static __attribute__((noinline)) void llgo_dump_symbol(const char *tag, void *addr) {
    Dl_info info;
    int ret = dladdr(addr, &info);
    fprintf(stderr, "%s: addr=%p dladdr=%d fname=%s fbase=%p sname=%s saddr=%p\n",
            tag,
            addr,
            ret,
            ret && info.dli_fname ? info.dli_fname : "<nil>",
            ret ? info.dli_fbase : NULL,
            ret && info.dli_sname ? info.dli_sname : "<nil>",
            ret ? info.dli_saddr : NULL);
}

static __attribute__((noinline)) void llgo_dump_proc_info(const char *tag, unw_cursor_t *cursor) {
    unw_proc_info_t pi;
    int ret = unw_get_proc_info(cursor, &pi);
    if (ret != 0) {
        fprintf(stderr, "%s: unw_get_proc_info ret=%d\n", tag, ret);
        return;
    }
    fprintf(stderr,
            "%s: start_ip=%p end_ip=%p lsda=%p handler=%p format=%u unwind_info_size=%u unwind_info=%p extra=%p\n",
            tag,
            (void *)pi.start_ip,
            (void *)pi.end_ip,
            (void *)pi.lsda,
            (void *)pi.handler,
            pi.format,
            pi.unwind_info_size,
            (void *)pi.unwind_info,
            (void *)pi.extra);
    llgo_dump_symbol("llgo_dump_proc_info: start_ip", (void *)pi.start_ip);
}

#if defined(__APPLE__) && (defined(__aarch64__) || defined(__arm64__))
static __attribute__((noinline)) void llgo_manual_fp_walk_arm64(unw_cursor_t *cursor, int max_depth) {
    unw_word_t fp = 0, lr = 0, sp = 0, ip = 0;
    int ret_fp = unw_get_reg(cursor, UNW_ARM64_FP, &fp);
    int ret_lr = unw_get_reg(cursor, UNW_ARM64_LR, &lr);
    int ret_sp = unw_get_reg(cursor, UNW_ARM64_SP, &sp);
    int ret_ip = unw_get_reg(cursor, UNW_ARM64_PC, &ip);
    fprintf(stderr,
            "llgo_manual_fp_walk: start ret_fp=%d fp=%p ret_lr=%d lr=%p ret_sp=%d sp=%p ret_ip=%d ip=%p\n",
            ret_fp, (void *)fp, ret_lr, (void *)lr, ret_sp, (void *)sp, ret_ip, (void *)ip);
    llgo_dump_symbol("llgo_manual_fp_walk: initial lr", (void *)lr);
    llgo_dump_symbol("llgo_manual_fp_walk: initial ip", (void *)ip);
    for (int i = 0; i < max_depth; i++) {
        if (fp == 0) {
            fprintf(stderr, "llgo_manual_fp_walk: stop depth=%d reason=null-fp\n", i);
            break;
        }
        if ((fp & 0xf) != 0) {
            fprintf(stderr, "llgo_manual_fp_walk: stop depth=%d reason=unaligned-fp fp=%p\n", i, (void *)fp);
            break;
        }
        uintptr_t *slot = (uintptr_t *)fp;
        uintptr_t next_fp = slot[0];
        uintptr_t saved_lr = slot[1];
        fprintf(stderr,
                "llgo_manual_fp_walk: depth=%d fp=%p next_fp=%p saved_lr=%p\n",
                i, (void *)fp, (void *)next_fp, (void *)saved_lr);
        llgo_dump_symbol("llgo_manual_fp_walk: saved_lr", (void *)saved_lr);
        if (next_fp == 0) {
            fprintf(stderr, "llgo_manual_fp_walk: stop depth=%d reason=null-next-fp\n", i);
            break;
        }
        if (next_fp <= fp) {
            fprintf(stderr,
                    "llgo_manual_fp_walk: stop depth=%d reason=nonmonotonic-fp current=%p next=%p\n",
                    i, (void *)fp, (void *)next_fp);
            break;
        }
        if ((next_fp - fp) > (1u << 20)) {
            fprintf(stderr,
                    "llgo_manual_fp_walk: stop depth=%d reason=large-gap current=%p next=%p\n",
                    i, (void *)fp, (void *)next_fp);
            break;
        }
        fp = next_fp;
    }
}
#endif

__attribute__((noinline)) void *llgo_address() {
    return __builtin_return_address(0);
}

__attribute__((noinline)) int llgo_addrinfo(void *addr, Dl_info *info) {
    return dladdr(addr, info);
}

__attribute__((noinline)) void llgo_stacktrace(int skip, void *ctx, int (*fn)(void *ctx, void *pc, void *offset, void *sp, char *name)) {
    unw_cursor_t cursor;
    unw_context_t context;
    unw_word_t offset, pc, sp;
    char fname[256];
    int ret;
    int step;
    void *retaddr = __builtin_return_address(0);
    Dl_info retinfo;
    Dl_info llgoinfo;
    fprintf(stderr, "llgo_stacktrace: enter skip=%d ctx=%p fn=%p retaddr=%p llgo_address=%p\n",
            skip, ctx, fn, retaddr, llgo_address());
    ret = dladdr(retaddr, &retinfo);
    fprintf(stderr, "llgo_stacktrace: retaddr dladdr ret=%d fname=%s fbase=%p sname=%s saddr=%p\n",
            ret,
            ret && retinfo.dli_fname ? retinfo.dli_fname : "<nil>",
            ret ? retinfo.dli_fbase : NULL,
            ret && retinfo.dli_sname ? retinfo.dli_sname : "<nil>",
            ret ? retinfo.dli_saddr : NULL);
    ret = dladdr(llgo_address(), &llgoinfo);
    fprintf(stderr, "llgo_stacktrace: llgo_address dladdr ret=%d fname=%s fbase=%p sname=%s saddr=%p\n",
            ret,
            ret && llgoinfo.dli_fname ? llgoinfo.dli_fname : "<nil>",
            ret ? llgoinfo.dli_fbase : NULL,
            ret && llgoinfo.dli_sname ? llgoinfo.dli_sname : "<nil>",
            ret ? llgoinfo.dli_saddr : NULL);
    fprintf(stderr, "llgo_stacktrace: build apple=%d arm64=%d ptr=%zu clang=%d.%d\n",
#ifdef __APPLE__
            1,
#else
            0,
#endif
#if defined(__aarch64__) || defined(__arm64__)
            1,
#else
            0,
#endif
            sizeof(void *),
#ifdef __clang_major__
            __clang_major__,
#else
            -1,
#endif
#ifdef __clang_minor__
            __clang_minor__
#else
            -1
#endif
    );
    ret = unw_getcontext(&context);
    fprintf(stderr, "llgo_stacktrace: unw_getcontext ret=%d\n", ret);
    ret = unw_init_local(&cursor, &context);
    fprintf(stderr, "llgo_stacktrace: unw_init_local ret=%d\n", ret);
    pc = 0;
    sp = 0;
    offset = 0;
    fname[0] = '\0';
    ret = unw_get_reg(&cursor, UNW_REG_IP, &pc);
    fprintf(stderr, "llgo_stacktrace: initial IP ret=%d ip=%p\n", ret, (void *)pc);
    ret = unw_get_reg(&cursor, UNW_REG_SP, &sp);
    fprintf(stderr, "llgo_stacktrace: initial SP ret=%d sp=%p\n", ret, (void *)sp);
    ret = unw_get_proc_name(&cursor, fname, sizeof(fname), &offset);
    fprintf(stderr, "llgo_stacktrace: initial proc ret=%d name=%s offset=%p\n",
            ret, ret == 0 ? fname : "<err>", (void *)offset);
    llgo_dump_proc_info("llgo_stacktrace: initial proc_info", &cursor);
#if defined(__APPLE__) && (defined(__aarch64__) || defined(__arm64__))
    llgo_manual_fp_walk_arm64(&cursor, 8);
#endif
    int depth = 0;
    for (;;) {
        step = unw_step(&cursor);
        fprintf(stderr, "llgo_stacktrace: unw_step ret=%d depth=%d\n", step, depth);
        llgo_dump_proc_info("llgo_stacktrace: after unw_step proc_info", &cursor);
        if (step <= 0) {
            break;
        }
        if (depth < skip) {
            fprintf(stderr, "llgo_stacktrace: skip depth=%d target=%d\n", depth, skip);
            depth++;
            continue;
        }
        if (unw_get_reg(&cursor, UNW_REG_IP, &pc) == 0) {
            unw_get_proc_name(&cursor, fname, sizeof(fname), &offset);
            unw_get_reg(&cursor, UNW_REG_SP, &sp);
            fprintf(stderr, "llgo_stacktrace: frame depth=%d pc=%p offset=%p sp=%p name=%s\n",
                    depth, (void*)pc, (void*)offset, (void*)sp, fname);
            if (fn(ctx, (void*)pc, (void*)offset, (void*)sp, fname) == 0) {
                fprintf(stderr, "llgo_stacktrace: callback stop depth=%d\n", depth);
                return;
            }
        }
        depth++;
    }
    fprintf(stderr, "llgo_stacktrace: exit depth=%d\n", depth);
}
