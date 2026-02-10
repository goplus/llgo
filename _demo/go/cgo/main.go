package main

/*
#include <errno.h>

typedef struct { int a; } s4;
typedef struct { int a; int b; } s8;
typedef struct { int a; int b; int c; } s12;
typedef struct { int a; int b; int c; int d; } s16;
typedef struct { int a; int b; int c; int d; int e; } s20;

static int c_add(int a, int b) {
	return a + b;
}

static int sum_structs(s4* a, s8* b, s12* c, s16* d, s20* e) {
	return a->a + b->a + b->b + c->a + c->b + c->c +
		d->a + d->b + d->c + d->d +
		e->a + e->b + e->c + e->d + e->e;
}

static int c_errno_wrap(int x) {
	if (x < 0) {
		errno = ERANGE;
		return -1;
	}
	errno = 0;
	return x + 1;
}
*/
import "C"

import "fmt"

func main() {
	fmt.Println("c_add:", int(C.c_add(20, 22)))

	a := C.s4{a: 1}
	b := C.s8{a: 1, b: 2}
	c := C.s12{a: 1, b: 2, c: 3}
	d := C.s16{a: 1, b: 2, c: 3, d: 4}
	e := C.s20{a: 1, b: 2, c: 3, d: 4, e: 5}
	sum, err := C.sum_structs(&a, &b, &c, &d, &e)
	if err != nil {
		panic(err)
	}
	fmt.Println("sum_structs:", int(sum))

	_, err = C.c_errno_wrap(-1)
	if err == nil {
		panic("expected errno for c_errno_wrap(-1)")
	}
	fmt.Println("errno_path:", err)

	v, err := C.c_errno_wrap(9)
	if err != nil {
		panic(err)
	}
	fmt.Println("ok_path:", int(v))
}
