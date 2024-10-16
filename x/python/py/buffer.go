package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyObject_CheckBuffer(PyObject *obj)
// Return “1“ if *obj* supports the buffer interface otherwise “0“.  When “1“ is
// returned, it doesn't guarantee that :c:func:`PyObject_GetBuffer` will
// succeed.  This function always succeeds.
//
//go:linkname ObjectCheckBuffer PyObject_CheckBuffer
func ObjectCheckBuffer(obj *Object) Int

// int PyObject_GetBuffer(PyObject *exporter, Py_buffer *view, int flags)
// Send a request to *exporter* to fill in *view* as specified by  *flags*.
// If the exporter cannot provide a buffer of the exact type, it MUST raise
// :exc:`BufferError`, set “view->obj“ to “NULL“ and
// return “-1“.
//
// On success, fill in *view*, set “view->obj“ to a new reference
// to *exporter* and return 0. In the case of chained buffer providers
// that redirect requests to a single object, “view->obj“ MAY
// refer to this object instead of *exporter* (See :ref:`Buffer Object Structures <buffer-structs>`).
//
// Successful calls to :c:func:`PyObject_GetBuffer` must be paired with calls
// to :c:func:`PyBuffer_Release`, similar to :c:func:`malloc` and :c:func:`free`.
// Thus, after the consumer is done with the buffer, :c:func:`PyBuffer_Release`
// must be called exactly once.
//
//go:linkname ObjectGetBuffer PyObject_GetBuffer
func ObjectGetBuffer(exporter *Object, view *Buffer, flags Int) Int

// void PyBuffer_Release(Py_buffer *view)
// Release the buffer *view* and release the :term:`strong reference`
// (i.e. decrement the reference count) to the view's supporting object,
// “view->obj“. This function MUST be called when the buffer
// is no longer being used, otherwise reference leaks may occur.
//
// It is an error to call this function on a buffer that was not obtained via
// :c:func:`PyObject_GetBuffer`.
//
//go:linkname BufferRelease PyBuffer_Release
func BufferRelease(view *Buffer)

// Py_ssize_t PyBuffer_SizeFromFormat(const char *format)
// Return the implied :c:member:`~Py_buffer.itemsize` from :c:member:`~Py_buffer.format`.
// On error, raise an exception and return -1.
//
//go:linkname BufferSizeFromFormat PyBuffer_SizeFromFormat
func BufferSizeFromFormat(format *Char) SSizeT

// int PyBuffer_IsContiguous(const Py_buffer *view, char order)
// Return “1“ if the memory defined by the *view* is C-style (*order* is
// “'C'“) or Fortran-style (*order* is “'F'“) :term:`contiguous` or either one
// (*order* is “'A'“).  Return “0“ otherwise.  This function always succeeds.
//
//go:linkname BufferIsContiguous PyBuffer_IsContiguous
func BufferIsContiguous(view *Buffer, order Char) Int

// void* PyBuffer_GetPointer(const Py_buffer *view, const Py_ssize_t *indices)
// Get the memory area pointed to by the *indices* inside the given *view*.
// *indices* must point to an array of “view->ndim“ indices.
//
//go:linkname BufferGetPointer PyBuffer_GetPointer
func BufferGetPointer(view *Buffer, indices *SSizeT) Pointer

// int PyBuffer_FromContiguous(const Py_buffer *view, const void *buf, Py_ssize_t len, char fort)
// Copy contiguous *len* bytes from *buf* to *view*.
// *fort* can be “'C'“ or “'F'“ (for C-style or Fortran-style ordering).
// “0“ is returned on success, “-1“ on error.
//
//go:linkname BufferFromContiguous PyBuffer_FromContiguous
func BufferFromContiguous(view *Buffer, buf Pointer, len SSizeT, fort Char) Int

// int PyBuffer_ToContiguous(void *buf, const Py_buffer *src, Py_ssize_t len, char order)
// Copy *len* bytes from *src* to its contiguous representation in *buf*.
// *order* can be “'C'“ or “'F'“ or “'A'“ (for C-style or Fortran-style
// ordering or either one). “0“ is returned on success, “-1“ on error.
//
// This function fails if *len* != *src->len*.
//
//go:linkname BufferToContiguous PyBuffer_ToContiguous
func BufferToContiguous(buf Pointer, src *Buffer, len SSizeT, order Char) Int

// int PyObject_CopyData(PyObject *dest, PyObject *src)
// Copy data from *src* to *dest* buffer. Can convert between C-style and
// or Fortran-style buffers.
//
// “0“ is returned on success, “-1“ on error.
//
//go:linkname ObjectCopyData PyObject_CopyData
func ObjectCopyData(dest *Object, src *Object) Int

// void PyBuffer_FillContiguousStrides(int ndims, Py_ssize_t *shape, Py_ssize_t *strides, int itemsize, char order)
// Fill the *strides* array with byte-strides of a :term:`contiguous` (C-style if
// *order* is “'C'“ or Fortran-style if *order* is “'F'“) array of the
// given shape with the given number of bytes per element.
//
//go:linkname BufferFillContiguousStrides PyBuffer_FillContiguousStrides
func BufferFillContiguousStrides(ndims Int, shape *SSizeT, strides *SSizeT, itemsize Int, order Char)

// int PyBuffer_FillInfo(Py_buffer *view, PyObject *exporter, void *buf, Py_ssize_t len, int readonly, int flags)
// Handle buffer requests for an exporter that wants to expose *buf* of size *len*
// with writability set according to *readonly*. *buf* is interpreted as a sequence
// of unsigned bytes.
//
// The *flags* argument indicates the request type. This function always fills in
// *view* as specified by flags, unless *buf* has been designated as read-only
// and :c:macro:`PyBUF_WRITABLE` is set in *flags*.
//
// On success, set “view->obj“ to a new reference to *exporter* and
// return 0. Otherwise, raise :exc:`BufferError`, set
// “view->obj“ to “NULL“ and return “-1“;
//
// If this function is used as part of a :ref:`getbufferproc <buffer-structs>`,
// *exporter* MUST be set to the exporting object and *flags* must be passed
// unmodified. Otherwise, *exporter* MUST be “NULL“.
//
//go:linkname BufferFillInfo PyBuffer_FillInfo
func BufferFillInfo(view *Buffer, exporter *Object, buf Pointer, len SSizeT, readonly Int, flags Int) Int

// Py_buffer

type Buffer = C.Py_buffer
