package py

/*
#cgo pkg-config: python-3.12-embed
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// int PyCoro_CheckExact(PyObject *ob)
// Return true if *ob*'s type is :c:type:`PyCoro_Type`; *ob* must not be “NULL“.
// This function always succeeds.
//
//go:linkname CoroCheckExact C.PyCoro_CheckExact
func CoroCheckExact(ob *Object) c.Int

// PyObject* PyCoro_New(PyFrameObject *frame, PyObject *name, PyObject *qualname)
// Create and return a new coroutine object based on the *frame* object,
// with “__name__“ and “__qualname__“ set to *name* and *qualname*.
// A reference to *frame* is stolen by this function.  The *frame* argument
// must not be “NULL“.
//
//go:linkname CoroNew C.PyCoro_New
func CoroNew(frame *FrameObject, name *Object, qualname *Object) *Object

// PyCoroObject
// The C structure used for coroutine objects.
type CoroObject = C.PyCoroObject

// PyTypeObject PyCoro_Type
// The type object corresponding to coroutine objects.
func CoroType() TypeObject {
	return *(*TypeObject)(c.Pointer(&C.PyCoro_Type))
}
