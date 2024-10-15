package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// PyObject *PyMemoryView_FromObject(PyObject *obj)
// Create a memoryview object from an object that provides the buffer interface.
// If *obj* supports writable buffer exports, the memoryview object will be
// read/write, otherwise it may be either read-only or read/write at the
// discretion of the exporter.
//
//go:linkname MemoryViewFromObject C.PyMemoryView_FromObject
func MemoryViewFromObject(obj *Object) *Object

// PyObject *PyMemoryView_FromMemory(char *mem, Py_ssize_t size, int flags)
// Create a memoryview object using *mem* as the underlying buffer.
// *flags* can be one of :c:macro:`PyBUF_READ` or :c:macro:`PyBUF_WRITE`.
//
//go:linkname MemoryViewFromMemory C.PyMemoryView_FromMemory
func MemoryViewFromMemory(mem *Char, size SSizeT, flags Int) *Object

// PyObject *PyMemoryView_FromBuffer(const Py_buffer *view)
// Create a memoryview object wrapping the given buffer structure *view*.
// For simple byte buffers, :c:func:`PyMemoryView_FromMemory` is the preferred
// function.
//
//go:linkname MemoryViewFromBuffer C.PyMemoryView_FromBuffer
func MemoryViewFromBuffer(view *Buffer) *Object

// PyObject *PyMemoryView_GetContiguous(PyObject *obj, int buffertype, char order)
// Create a memoryview object to a :term:`contiguous` chunk of memory (in either
// 'C' or 'F'ortran *order*) from an object that defines the buffer
// interface. If memory is contiguous, the memoryview object points to the
// original memory. Otherwise, a copy is made and the memoryview points to a
// new bytes object.
//
// *buffertype* can be one of :c:macro:`PyBUF_READ` or :c:macro:`PyBUF_WRITE`.
//
//go:linkname MemoryViewGetContiguous C.PyMemoryView_GetContiguous
func MemoryViewGetContiguous(obj *Object, buffertype Int, order Char) *Object

// int PyMemoryView_Check(PyObject *obj)
// Return true if the object *obj* is a memoryview object.  It is not
// currently allowed to create subclasses of :class:`memoryview`.  This
// function always succeeds.
//
//go:linkname MemoryViewCheck C.PyMemoryView_Check
func MemoryViewCheck(obj *Object) Int

// Py_buffer *PyMemoryView_GET_BUFFER(PyObject *mview)
// Return a pointer to the memoryview's private copy of the exporter's buffer.
// *mview* **must** be a memoryview instance; this macro doesn't check its type,
// you must do it yourself or you will risk crashes.
//
//go:linkname MemoryViewGETBUFFER C.PyMemoryView_GET_BUFFER
func MemoryViewGETBUFFER(mview *Object) *Buffer

// PyObject *PyMemoryView_GET_BASE(PyObject *mview)
// Return either a pointer to the exporting object that the memoryview is based
// on or “NULL“ if the memoryview has been created by one of the functions
// :c:func:`PyMemoryView_FromMemory` or :c:func:`PyMemoryView_FromBuffer`.
// *mview* **must** be a memoryview instance.
//
//go:linkname MemoryViewGETBASE C.PyMemoryView_GET_BASE
func MemoryViewGETBASE(mview *Object) *Object
