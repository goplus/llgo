package main

/*
#cgo pkg-config: python3-embed
#include <Python.h>
*/
import "C"
import "fmt"

func Initialize() {
	C.Py_Initialize()
}

func Finalize() {
	C.Py_Finalize()
}

func Run(code string) error {
	if C.PyRun_SimpleString(C.CString(code)) != 0 {
		C.PyErr_Print()
		return fmt.Errorf("failed to run code")
	}
	return nil
}
