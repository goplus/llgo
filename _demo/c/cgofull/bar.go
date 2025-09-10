package main

/*
#cgo CFLAGS: -DBAR
#include <stdio.h>
#include "foo.h"
static void foo(Foo* f) {
	printf("foo in bar: %d\n", f->a);
}
*/
import "C"

func Bar(f *C.Foo) {
	C.print_foo(f)
	C.foo(f)
}
