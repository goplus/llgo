package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyBool_Check(PyObject *o)
// Return true if *o* is of type :c:data:`PyBool_Type`.  This function always
// succeeds.
//
//go:linkname BoolCheck C.PyBool_Check
func BoolCheck(o *Object) Int

// PyObject* PyBool_FromLong(long v)
// Return :c:data:`Py_True` or :c:data:`Py_False`, depending on the truth value of *v*.
//
//go:linkname BoolFromLong C.PyBool_FromLong
func BoolFromLong(v Long) *Object

// PyTypeObject PyBool_Type
// This instance of :c:type:`PyTypeObject` represents the Python boolean type; it
// is the same object as :class:`bool` in the Python layer.
func BoolType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyBool_Type))
}
