package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyObject_AsCharBuffer(PyObject *obj, const char **buffer, Py_ssize_t *buffer_len)
// Returns a pointer to a read-only memory location usable as character-based
// input.  The *obj* argument must support the single-segment character buffer
// interface.  On success, returns “0“, sets *buffer* to the memory location
// and *buffer_len* to the buffer length.  Returns “-1“ and sets a
// :exc:`TypeError` on error.
//
//go:linkname ObjectAsCharBuffer PyObject_AsCharBuffer
func ObjectAsCharBuffer(obj *Object, buffer **Char, bufferLen *SSizeT) Int

// int PyObject_AsReadBuffer(PyObject *obj, const void **buffer, Py_ssize_t *buffer_len)
// Returns a pointer to a read-only memory location containing arbitrary data.
// The *obj* argument must support the single-segment readable buffer
// interface.  On success, returns “0“, sets *buffer* to the memory location
// and *buffer_len* to the buffer length.  Returns “-1“ and sets a
// :exc:`TypeError` on error.
//
//go:linkname ObjectAsReadBuffer PyObject_AsReadBuffer
func ObjectAsReadBuffer(obj *Object, buffer *Pointer, bufferLen *SSizeT) Int

// int PyObject_CheckReadBuffer(PyObject *o)
// Returns “1“ if *o* supports the single-segment readable buffer interface.
// Otherwise returns “0“.  This function always succeeds.
//
// Note that this function tries to get and release a buffer, and exceptions
// which occur while calling corresponding functions will get suppressed.
// To get error reporting use :c:func:`PyObject_GetBuffer()` instead.
//
//go:linkname ObjectCheckReadBuffer PyObject_CheckReadBuffer
func ObjectCheckReadBuffer(o *Object) Int

// int PyObject_AsWriteBuffer(PyObject *obj, void **buffer, Py_ssize_t *buffer_len)
// Returns a pointer to a writable memory location.  The *obj* argument must
// support the single-segment, character buffer interface.  On success,
// returns “0“, sets *buffer* to the memory location and *buffer_len* to the
// buffer length.  Returns “-1“ and sets a :exc:`TypeError` on error.
//
//go:linkname ObjectAsWriteBuffer PyObject_AsWriteBuffer
func ObjectAsWriteBuffer(obj *Object, buffer *Pointer, bufferLen *SSizeT) Int
