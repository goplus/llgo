#include <stdio.h>
#define interface struct

interface ICalc {
	virtual double calc(double v) = 0;
};

interface IVal {
	virtual int val() = 0;
};

class Callback : public ICalc, public IVal {
};

extern "C" void f(Callback* cb) {
	printf("val: %d\ncalc(2): %lf\n", cb->val(), cb->calc(2));
}
