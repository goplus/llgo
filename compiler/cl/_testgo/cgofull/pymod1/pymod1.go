package pymod1

/*
#cgo pkg-config: python3-embed
#include <Python.h>
*/
import "C"

func Float(f float64) *C.PyObject {
	return C.PyFloat_FromDouble(C.double(f))
}
