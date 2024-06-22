#include <stdio.h>
#define interface struct

interface ICallback {
	virtual int val() = 0;
	virtual double calc(double v) = 0;
};

extern "C" void f(ICallback* cb) {
	printf("val: %d\ncalc(2): %lf\n", cb->val(), cb->calc(2));
}
