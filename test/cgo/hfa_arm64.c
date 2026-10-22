//go:build llgo && arm64 && (linux || darwin || windows)

#include "hfa_arm64.h"
#define FP_SUM (a+b+c+d+e+f+g+h)
__attribute__((noinline)) double llgo_test_hfa_pair(LLGO_HFA_ARGS, llgo_hfa_pair pair, double tail) {
    return FP_SUM + pair.first + pair.second + tail;
}
__attribute__((noinline)) double llgo_test_hfa_partial(double a, double b, double c, double d, double e, double f, double g, llgo_hfa_pair pair, double tail) {
    return a+b+c+d+e+f+g + pair.first + pair.second + tail;
}
__attribute__((noinline)) double llgo_test_hfa_triple(LLGO_HFA_ARGS, float gap, llgo_hfa_triple triple, double tail) {
    return FP_SUM + gap + triple.first + triple.rest[0] + triple.rest[1] + tail;
}
__attribute__((noinline)) double llgo_test_hfa_quad(LLGO_HFA_ARGS, llgo_hfa_quad quad, double tail) {
    return FP_SUM + quad.values[0] + quad.values[1] + quad.values[2] + quad.values[3] + tail;
}
void *llgo_hfa_pair_address(void) { return (void *)&llgo_test_hfa_pair; }
double llgo_hfa_export_call(void) {
    llgo_hfa_triple triple = {1, {1, 1}};
    return GoHFAStack(1, 2, 3, 4, 5, 6, 7, 8, 1, triple, 2);
}
