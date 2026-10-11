//go:build llgo && !wasm

package cgo

/*
#include <stdarg.h>

static int variadic_fixed(int marker, int value, double number) {
	return marker == 7 && value == 20 && number == 22.0 ? 42 : -1;
}

static int variadic_indirect(int mode, ...) {
	if (mode == 0) return 42;
	va_list ap;
	va_start(ap, mode);
	int value = va_arg(ap, int);
	double number = va_arg(ap, double);
	long long wide = va_arg(ap, long long);
	void *pointer = va_arg(ap, void *);
	va_end(ap);
	return mode == 7 && value == 20 && number == 22.0 && wide == -9 && pointer == 0 ? 42 : -1;
}

static void *variadic_address(void) { return (void *)variadic_indirect; }
*/
import "C"

import "unsafe"

//llgo:type C
type nativeVariadic func(mode int32, __llgo_va_list ...any) int32

func fixedVariadicControl() int32 { return int32(C.variadic_fixed(7, 20, 22)) }

func indirectVariadic(mode int32) int32 {
	address := C.variadic_address()
	function := *(*nativeVariadic)(unsafe.Pointer(&address))
	if mode == 0 {
		return function(mode)
	}
	return function(mode, int32(20), float64(22), int64(-9), unsafe.Pointer(nil))
}
