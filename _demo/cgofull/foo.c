#include <stdio.h>
#include "foo.h"

void print_foo(Foo* f) {
	printf("print_foo: %d\n", f->a);
}
