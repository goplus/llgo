#include <stdint.h>
#include <string.h>
#include <unistd.h>

#if UINTPTR_MAX == UINT64_MAX
#define LLGO_HIDDEN_PTR_MASK UINT64_C(0x00ffffffffffffff)
#define LLGO_HIDDEN_PTR_TAG  UINT64_C(0xa500000000000000)
#define LLGO_HIDDEN_PTR_SEED UINT64_C(0x005a3c9d12e7b14f)
#define LLGO_HIDDEN_PTR_ROT 17
#elif UINTPTR_MAX == UINT32_MAX
#define LLGO_HIDDEN_PTR_SEED UINT32_C(0x85ebca6b)
#define LLGO_HIDDEN_PTR_MUL UINT32_C(0x9e3779b9)
#define LLGO_HIDDEN_PTR_INV_MUL UINT32_C(0x144cbc89)
#define LLGO_HIDDEN_PTR_ROT 11
#else
#error unsupported uintptr_t size
#endif

static uintptr_t llgo_rotate_right_hidden_pointer_key(uintptr_t x, unsigned rot)
{
    return (x >> rot) | (x << ((sizeof(uintptr_t) * 8) - rot));
}

static uintptr_t llgo_rotate_left_hidden_pointer_key_masked(uintptr_t x, uintptr_t mask, unsigned bits, unsigned rot)
{
    x &= mask;
    return ((x << rot) | (x >> (bits - rot))) & mask;
}

static uintptr_t llgo_rotate_right_hidden_pointer_key_masked(uintptr_t x, uintptr_t mask, unsigned bits, unsigned rot)
{
    x &= mask;
    return ((x >> rot) | (x << (bits - rot))) & mask;
}

static uintptr_t llgo_encode_hidden_pointer_key(uintptr_t raw)
{
#if UINTPTR_MAX == UINT64_MAX
    uintptr_t x = raw & LLGO_HIDDEN_PTR_MASK;
    x ^= LLGO_HIDDEN_PTR_SEED;
    x = llgo_rotate_left_hidden_pointer_key_masked(x, LLGO_HIDDEN_PTR_MASK, 56, LLGO_HIDDEN_PTR_ROT);
    return LLGO_HIDDEN_PTR_TAG | x;
#else
    uintptr_t x = raw ^ LLGO_HIDDEN_PTR_SEED;
    x *= LLGO_HIDDEN_PTR_MUL;
    return (x << LLGO_HIDDEN_PTR_ROT) | (x >> ((sizeof(uintptr_t) * 8) - LLGO_HIDDEN_PTR_ROT));
#endif
}

static uintptr_t llgo_decode_hidden_pointer_key(uintptr_t key)
{
#if UINTPTR_MAX == UINT64_MAX
    uintptr_t x = key & LLGO_HIDDEN_PTR_MASK;
    x = llgo_rotate_right_hidden_pointer_key_masked(x, LLGO_HIDDEN_PTR_MASK, 56, LLGO_HIDDEN_PTR_ROT);
    x ^= LLGO_HIDDEN_PTR_SEED;
    return x;
#else
    uintptr_t x = llgo_rotate_right_hidden_pointer_key(key, LLGO_HIDDEN_PTR_ROT);
    x *= LLGO_HIDDEN_PTR_INV_MUL;
    x ^= LLGO_HIDDEN_PTR_SEED;
    return x;
#endif
}

int llgo_maxprocs()
{
#ifdef _SC_NPROCESSORS_ONLN
    return (int)sysconf(_SC_NPROCESSORS_ONLN);
#else
    return 1;
#endif
}

void llgo_load_hidden_pointee(void *dst, uintptr_t key, uintptr_t size)
{
    void *src = (void *)llgo_decode_hidden_pointer_key(key);
    if (size != 0) {
        memmove(dst, src, size);
    }
    memset(&src, 0, sizeof(src));
}

uintptr_t llgo_advance_hidden_pointer(uintptr_t key, uintptr_t offset)
{
    uintptr_t raw = llgo_decode_hidden_pointer_key(key);
    raw += offset;
    return llgo_encode_hidden_pointer_key(raw);
}

void llgo_store_hidden_pointee(uintptr_t key, const void *src, uintptr_t size)
{
    void *dst = (void *)llgo_decode_hidden_pointer_key(key);
    if (size != 0) {
        memmove(dst, src, size);
    }
    memset(&dst, 0, sizeof(dst));
}

void llgo_store_hidden_pointer_root(void *dst, uintptr_t key)
{
    void *src = (void *)llgo_decode_hidden_pointer_key(key);
    memmove(dst, &src, sizeof(src));
    memset(&src, 0, sizeof(src));
}

void llgo_clobber_pointer_regs(uintptr_t a0, uintptr_t a1, uintptr_t a2, uintptr_t a3,
    uintptr_t a4, uintptr_t a5, uintptr_t a6, uintptr_t a7)
{
    volatile uintptr_t sink = a0 | a1 | a2 | a3 | a4 | a5 | a6 | a7;
    (void)sink;
}
