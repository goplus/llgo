package main

/*
#cgo pkg-config: python3-embed
#include <Python.h>
*/
import "C"

// TODO(lijie): workaround for cgo pkg-config not working
const (
	LLGoPackage = "link: $LLGO_LIB_PYTHON; $(pkg-config --libs python3-embed)"
)

func main() {
	C.Py_Initialize()
	defer C.Py_Finalize()
	C.PyRun_SimpleString(C.CString("print('Hello, Python!')"))
}
