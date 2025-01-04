package main

/*
#cgo CFLAGS: -DFOO
#include <stdio.h>
#include "foo.h"
static void foo(Foo* f) {
	printf("foo in bar: %d\n", f->a);
}
*/
import "C"

func Foo(f *C.Foo) {
	C.print_foo(f)
	C.foo(f)
}
