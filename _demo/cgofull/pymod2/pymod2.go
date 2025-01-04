package pymod2

/*
#cgo pkg-config: python3-embed
#include <Python.h>
*/
import "C"

func Long(l int64) *C.PyObject {
	return C.PyLong_FromLongLong(C.longlong(l))
}
