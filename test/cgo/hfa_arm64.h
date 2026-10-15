#ifndef LLGO_TEST_HFA_ARM64_H
#define LLGO_TEST_HFA_ARM64_H

typedef struct { float first, second; } llgo_hfa_pair;
typedef struct { float first; float rest[2]; } llgo_hfa_triple;
typedef struct { double values[4]; } llgo_hfa_quad;
#define LLGO_HFA_ARGS double a, double b, double c, double d, double e, double f, double g, double h

double llgo_test_hfa_pair(LLGO_HFA_ARGS, llgo_hfa_pair pair, double tail);
double llgo_test_hfa_partial(double a, double b, double c, double d, double e, double f, double g, llgo_hfa_pair pair, double tail);
double llgo_test_hfa_triple(LLGO_HFA_ARGS, float gap, llgo_hfa_triple triple, double tail);
double llgo_test_hfa_quad(LLGO_HFA_ARGS, llgo_hfa_quad quad, double tail);
void *llgo_hfa_pair_address(void);
double llgo_hfa_export_call(void);
double GoHFAStack(LLGO_HFA_ARGS, float gap, llgo_hfa_triple triple, double tail);

#endif
