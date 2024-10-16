package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PySeqIter_Check(PyObject *op)
// Return true if the type of *op* is :c:data:`PySeqIter_Type`.  This function
// always succeeds.
//
//go:linkname SeqIterCheck PySeqIter_Check
func SeqIterCheck(op *Object) Int

// PyObject* PySeqIter_New(PyObject *seq)
// Return an iterator that works with a general sequence object, *seq*.  The
// iteration ends when the sequence raises :exc:`IndexError` for the subscripting
// operation.
//
//go:linkname SeqIterNew PySeqIter_New
func SeqIterNew(seq *Object) *Object

// int PyCallIter_Check(PyObject *op)
// Return true if the type of *op* is :c:data:`PyCallIter_Type`.  This
// function always succeeds.
//
//go:linkname CallIterCheck PyCallIter_Check
func CallIterCheck(op *Object) Int

// PyObject* PyCallIter_New(PyObject *callable, PyObject *sentinel)
// Return a new iterator.  The first parameter, *callable*, can be any Python
// callable object that can be called with no parameters; each call to it should
// return the next item in the iteration.  When *callable* returns a value equal to
// *sentinel*, the iteration will be terminated.
//
//go:linkname CallIterNew PyCallIter_New
func CallIterNew(callable *Object, sentinel *Object) *Object

// PyTypeObject PySeqIter_Type
// Type object for iterator objects returned by :c:func:`PySeqIter_New` and the
// one-argument form of the :func:`iter` built-in function for built-in sequence
// types.
func SeqIterType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PySeqIter_Type))
}

// PyTypeObject PyCallIter_Type
// Type object for iterator objects returned by :c:func:`PyCallIter_New` and the
// two-argument form of the :func:`iter` built-in function.
func CallIterType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyCallIter_Type))
}
