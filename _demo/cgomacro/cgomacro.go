package main

/*
#cgo pkg-config: python3-embed
#include <stdio.h>
#include <Python.h>

void test_stdout() {
	printf("stdout ptr: %p\n", stdout);
	fputs("outputs to stdout\n", stdout);
}
*/
import "C"
import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

func main() {
	C.test_stdout()
	C.fputs((*C.char)(unsafe.Pointer(c.Str("hello\n"))), C.stdout)
	C.Py_Initialize()
	defer C.Py_Finalize()
	C.PyObject_Print(C.Py_True, C.stdout, 0)
	C.fputs((*C.char)(unsafe.Pointer(c.Str("\n"))), C.stdout)
	C.PyObject_Print(C.Py_False, C.stdout, 0)
	C.fputs((*C.char)(unsafe.Pointer(c.Str("\n"))), C.stdout)
	C.PyObject_Print(C.Py_None, C.stdout, 0)
	C.fputs((*C.char)(unsafe.Pointer(c.Str("\n"))), C.stdout)
}
