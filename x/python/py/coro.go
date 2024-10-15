package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyCoro_CheckExact(PyObject *ob)
// Return true if *ob*'s type is :c:type:`PyCoro_Type`; *ob* must not be “NULL“.
// This function always succeeds.
//
//go:linkname CoroCheckExact C.PyCoro_CheckExact
func CoroCheckExact(ob *Object) Int

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
	return *(*TypeObject)(Pointer(&C.PyCoro_Type))
}
