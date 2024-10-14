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

// void PyMarshal_WriteLongToFile(long value, FILE *file, int version)
// Marshal a :c:expr:`long` integer, *value*, to *file*.  This will only write
// the least-significant 32 bits of *value*; regardless of the size of the
// native :c:expr:`long` type.  *version* indicates the file format.
//
// This function can fail, in which case it sets the error indicator.
// Use :c:func:`PyErr_Occurred` to check for that.
//
//go:linkname MarshalWriteLongToFile C.PyMarshal_WriteLongToFile
func MarshalWriteLongToFile(value c.Long, file c.FilePtr, version c.Int)

// void PyMarshal_WriteObjectToFile(PyObject *value, FILE *file, int version)
// Marshal a Python object, *value*, to *file*.
// *version* indicates the file format.
//
// This function can fail, in which case it sets the error indicator.
// Use :c:func:`PyErr_Occurred` to check for that.
//
//go:linkname MarshalWriteObjectToFile C.PyMarshal_WriteObjectToFile
func MarshalWriteObjectToFile(value *Object, file c.FilePtr, version c.Int)

// PyObject* PyMarshal_WriteObjectToString(PyObject *value, int version)
// Return a bytes object containing the marshalled representation of *value*.
// *version* indicates the file format.
//
// The following functions allow marshalled values to be read back in.
//
//go:linkname MarshalWriteObjectToString C.PyMarshal_WriteObjectToString
func MarshalWriteObjectToString(value *Object, version c.Int) *Object

// long PyMarshal_ReadLongFromFile(FILE *file)
// Return a C :c:expr:`long` from the data stream in a :c:expr:`FILE*` opened
// for reading.  Only a 32-bit value can be read in using this function,
// regardless of the native size of :c:expr:`long`.
//
// On error, sets the appropriate exception (:exc:`EOFError`) and returns
// “-1“.
//
//go:linkname MarshalReadLongFromFile C.PyMarshal_ReadLongFromFile
func MarshalReadLongFromFile(file c.FilePtr) c.Long

// int PyMarshal_ReadShortFromFile(FILE *file)
// Return a C :c:expr:`short` from the data stream in a :c:expr:`FILE*` opened
// for reading.  Only a 16-bit value can be read in using this function,
// regardless of the native size of :c:expr:`short`.
//
// On error, sets the appropriate exception (:exc:`EOFError`) and returns
// “-1“.
//
//go:linkname MarshalReadShortFromFile C.PyMarshal_ReadShortFromFile
func MarshalReadShortFromFile(file c.FilePtr) c.Int

// PyObject* PyMarshal_ReadObjectFromFile(FILE *file)
// Return a Python object from the data stream in a :c:expr:`FILE*` opened for
// reading.
//
// On error, sets the appropriate exception (:exc:`EOFError`, :exc:`ValueError`
// or :exc:`TypeError`) and returns “NULL“.
//
//go:linkname MarshalReadObjectFromFile C.PyMarshal_ReadObjectFromFile
func MarshalReadObjectFromFile(file c.FilePtr) *Object

// PyObject* PyMarshal_ReadLastObjectFromFile(FILE *file)
// Return a Python object from the data stream in a :c:expr:`FILE*` opened for
// reading.  Unlike :c:func:`PyMarshal_ReadObjectFromFile`, this function
// assumes that no further objects will be read from the file, allowing it to
// aggressively load file data into memory so that the de-serialization can
// operate from data in memory rather than reading a byte at a time from the
// file.  Only use these variant if you are certain that you won't be reading
// anything else from the file.
//
// On error, sets the appropriate exception (:exc:`EOFError`, :exc:`ValueError`
// or :exc:`TypeError`) and returns “NULL“.
//
//go:linkname MarshalReadLastObjectFromFile C.PyMarshal_ReadLastObjectFromFile
func MarshalReadLastObjectFromFile(file c.FilePtr) *Object

// PyObject* PyMarshal_ReadObjectFromString(const char *data, Py_ssize_t len)
// Return a Python object from the data stream in a byte buffer
// containing *len* bytes pointed to by *data*.
//
// On error, sets the appropriate exception (:exc:`EOFError`, :exc:`ValueError`
// or :exc:`TypeError`) and returns “NULL“.
//
//go:linkname MarshalReadObjectFromString C.PyMarshal_ReadObjectFromString
func MarshalReadObjectFromString(data *c.Char, len SSizeT) *Object
