#include <stdio.h>
#include "foo.h"

void print_foo(Foo *f)
{
	printf("print_foo: %d\n", f->a);
}

int c_callback(int i)
{
	return i + 1;
}