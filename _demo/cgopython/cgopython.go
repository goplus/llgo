package main

/*
#cgo pkg-config: python3-embed
#include <Python.h>
*/
import "C"

func main() {
	C.Py_Initialize()
	defer C.Py_Finalize()
	C.PyRun_SimpleString(C.CString("print('Hello, Python!')"))
}
