package main

/*
#cgo windows,!amd64 CFLAGS: -D_WIN32
#cgo !windows CFLAGS: -D_POSIX
#cgo windows,amd64 CFLAGS: -D_WIN64
#cgo linux,amd64 CFLAGS: -D_LINUX64
#cgo !windows,amd64 CFLAGS: -D_UNIX64
#include <stdio.h>
#include "foo.h"
typedef struct {
	int a;
} s4;

typedef struct {
  int a;
  int b;
} s8;

typedef struct {
  int a;
  int b;
  int c;
} s12;

typedef struct {
  int a;
  int b;
  int c;
  int d;
} s16;

typedef struct {
  int a;
  int b;
  int c;
  int d;
  int e;
} s20;

static int test_structs(s4* s4, s8* s8, s12* s12, s16* s16, s20* s20) {
  printf("s4.a: %d\n", s4->a);
  printf("s8.a: %d, s8.b: %d\n", s8->a, s8->b);
  printf("s12.a: %d, s12.b: %d, s12.c: %d\n", s12->a, s12->b, s12->c);
  printf("s16.a: %d, s16.b: %d, s16.c: %d, s16.d: %d\n", s16->a, s16->b, s16->c, s16->d);
  printf("s20.a: %d, s20.b: %d, s20.c: %d, s20.d: %d, s20.e: %d\n", s20->a, s20->b, s20->c, s20->d, s20->e);

  return s4->a + s8->a + s8->b + s12->a + s12->b + s12->c + s16->a + s16->b + s16->c + s16->d + s20->a + s20->b + s20->c + s20->d + s20->e;
}

static void test_macros() {
#ifdef FOO
	printf("FOO is defined\n");
#endif
#ifdef BAR
	printf("BAR is defined\n");
#endif
#ifdef _WIN32
	printf("WIN32 is defined\n");
#endif
#ifdef _POSIX
	printf("POSIX is defined\n");
#endif
#ifdef _WIN64
	printf("WIN64 is defined\n");
#endif
#ifdef _LINUX64
	printf("LINUX64 is defined\n");
#endif
#ifdef _UNIX64
	printf("UNIX64 is defined\n");
#endif
}
*/
import "C"
import "fmt"

func main() {
	runPy()
	f := &C.Foo{a: 1}
	Foo(f)
	Bar(f)
	C.test_macros()
	r := C.test_structs(&C.s4{a: 1}, &C.s8{a: 1, b: 2}, &C.s12{a: 1, b: 2, c: 3}, &C.s16{a: 1, b: 2, c: 3, d: 4}, &C.s20{a: 1, b: 2, c: 3, d: 4, e: 5})
	fmt.Println(r)
	if r != 35 {
		panic("test_structs failed")
	}
}

func runPy() {
	Initialize()
	defer Finalize()
	Run("print('Hello, Python!')")
}
