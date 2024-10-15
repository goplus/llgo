package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyByteArray_Check(PyObject *o)
// Return true if the object *o* is a bytearray object or an instance of a
// subtype of the bytearray type.  This function always succeeds.
//
//go:linkname ByteArrayCheck PyByteArray_Check
func ByteArrayCheck(o *Object) Int

// int PyByteArray_CheckExact(PyObject *o)
// Return true if the object *o* is a bytearray object, but not an instance of a
// subtype of the bytearray type.  This function always succeeds.
//
// Direct API functions
// ^^^^^^^^^^^^^^^^^^^^
//
//go:linkname ByteArrayCheckExact PyByteArray_CheckExact
func ByteArrayCheckExact(o *Object) Int

// PyObject* PyByteArray_FromObject(PyObject *o)
// Return a new bytearray object from any object, *o*, that implements the
// :ref:`buffer protocol <bufferobjects>`.
//
// On failure, return “NULL“ with an exception set.
//
//go:linkname ByteArrayFromObject PyByteArray_FromObject
func ByteArrayFromObject(o *Object) *Object

// PyObject* PyByteArray_FromStringAndSize(const char *string, Py_ssize_t len)
// Create a new bytearray object from *string* and its length, *len*.
//
// On failure, return “NULL“ with an exception set.
//
//go:linkname ByteArrayFromStringAndSize PyByteArray_FromStringAndSize
func ByteArrayFromStringAndSize(string_ *Char, len SSizeT) *Object

// PyObject* PyByteArray_Concat(PyObject *a, PyObject *b)
// Concat bytearrays *a* and *b* and return a new bytearray with the result.
//
// On failure, return “NULL“ with an exception set.
//
//go:linkname ByteArrayConcat PyByteArray_Concat
func ByteArrayConcat(a *Object, b *Object) *Object

// Py_ssize_t PyByteArray_Size(PyObject *bytearray)
// Return the size of *bytearray* after checking for a “NULL“ pointer.
//
//go:linkname ByteArraySize PyByteArray_Size
func ByteArraySize(bytearray *Object) SSizeT

// char* PyByteArray_AsString(PyObject *bytearray)
// Return the contents of *bytearray* as a char array after checking for a
// “NULL“ pointer.  The returned array always has an extra
// null byte appended.
//
//go:linkname ByteArrayAsString PyByteArray_AsString
func ByteArrayAsString(bytearray *Object) *Char

// int PyByteArray_Resize(PyObject *bytearray, Py_ssize_t len)
// Resize the internal buffer of *bytearray* to *len*.
//
// Macros
// ^^^^^^
//
// These macros trade safety for speed and they don't check pointers.
//
//go:linkname ByteArrayResize PyByteArray_Resize
func ByteArrayResize(bytearray *Object, len SSizeT) Int

// char* PyByteArray_AS_STRING(PyObject *bytearray)
// Similar to :c:func:`PyByteArray_AsString`, but without error checking.
//
//go:linkname ByteArrayASSTRING PyByteArray_AS_STRING
func ByteArrayASSTRING(bytearray *Object) *Char

// Py_ssize_t PyByteArray_GET_SIZE(PyObject *bytearray)
// Similar to :c:func:`PyByteArray_Size`, but without error checking.
//
//go:linkname ByteArrayGETSIZE PyByteArray_GET_SIZE
func ByteArrayGETSIZE(bytearray *Object) SSizeT

// PyByteArrayObject
// This subtype of :c:type:`PyObject` represents a Python bytearray object.
type ByteArrayObject = C.PyByteArrayObject

// PyTypeObject PyByteArray_Type
// This instance of :c:type:`PyTypeObject` represents the Python bytearray type;
// it is the same object as :class:`bytearray` in the Python layer.
//
// Type check macros
// ^^^^^^^^^^^^^^^^^
func ByteArrayType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyByteArray_Type))
}
