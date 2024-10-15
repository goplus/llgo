package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyGen_Check(PyObject *ob)
// Return true if *ob* is a generator object; *ob* must not be “NULL“.  This
// function always succeeds.
//
//go:linkname GenCheck C.PyGen_Check
func GenCheck(ob *Object) Int

// int PyGen_CheckExact(PyObject *ob)
// Return true if *ob*'s type is :c:type:`PyGen_Type`; *ob* must not be
// “NULL“.  This function always succeeds.
//
//go:linkname GenCheckExact C.PyGen_CheckExact
func GenCheckExact(ob *Object) Int

// PyObject* PyGen_New(PyFrameObject *frame)
// Create and return a new generator object based on the *frame* object.
// A reference to *frame* is stolen by this function. The argument must not be
// “NULL“.
//
//go:linkname GenNew C.PyGen_New
func GenNew(frame *FrameObject) *Object

// PyObject* PyGen_NewWithQualName(PyFrameObject *frame, PyObject *name, PyObject *qualname)
// Create and return a new generator object based on the *frame* object,
// with “__name__“ and “__qualname__“ set to *name* and *qualname*.
// A reference to *frame* is stolen by this function.  The *frame* argument
// must not be “NULL“.
//
//go:linkname GenNewWithQualName C.PyGen_NewWithQualName
func GenNewWithQualName(frame *FrameObject, name *Object, qualname *Object) *Object

// PyGenObject
// The C structure used for generator objects.
type GenObject = C.PyGenObject

// PyTypeObject PyGen_Type
// The type object corresponding to generator objects.
func GenType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyGen_Type))
}
