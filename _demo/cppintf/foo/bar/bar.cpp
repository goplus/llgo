#include <stdio.h>
#define interface struct

interface ICallback {
	virtual int valA() = 0;
	virtual double valB() = 0;
};

extern "C" void f(ICallback* cb) {
	printf("Hello %d, %lf!\n", cb->valA(), cb->valB());
}
