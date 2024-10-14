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

// int PyLong_Check(PyObject *p)
// Return true if its argument is a :c:type:`PyLongObject` or a subtype of
// :c:type:`PyLongObject`.  This function always succeeds.
//
//go:linkname LongCheck C.PyLong_Check
func LongCheck(p *Object) c.Int

// int PyLong_CheckExact(PyObject *p)
// Return true if its argument is a :c:type:`PyLongObject`, but not a subtype of
// :c:type:`PyLongObject`.  This function always succeeds.
//
//go:linkname LongCheckExact C.PyLong_CheckExact
func LongCheckExact(p *Object) c.Int

// PyObject* PyLong_FromLong(long v)
// Return a new :c:type:`PyLongObject` object from *v*, or “NULL“ on failure.
//
// The current implementation keeps an array of integer objects for all integers
// between “-5“ and “256“. When you create an int in that range you actually
// just get back a reference to the existing object.
//
//go:linkname LongFromLong C.PyLong_FromLong
func LongFromLong(v c.Long) *Object

// PyObject* PyLong_FromUnsignedLong(unsigned long v)
// Return a new :c:type:`PyLongObject` object from a C :c:expr:`unsigned long`, or
// “NULL“ on failure.
//
//go:linkname LongFromUnsignedLong C.PyLong_FromUnsignedLong
func LongFromUnsignedLong(v c.Ulong) *Object

// PyObject* PyLong_FromSsize_t(Py_ssize_t v)
// Return a new :c:type:`PyLongObject` object from a C :c:type:`Py_ssize_t`, or
// “NULL“ on failure.
//
//go:linkname LongFromSsizeT C.PyLong_FromSsize_t
func LongFromSsizeT(v SSizeT) *Object

// PyObject* PyLong_FromSize_t(size_t v)
// Return a new :c:type:`PyLongObject` object from a C :c:type:`size_t`, or
// “NULL“ on failure.
//
//go:linkname LongFromSizeT C.PyLong_FromSize_t
func LongFromSizeT(v c.Ulong) *Object

// PyObject* PyLong_FromLongLong(long long v)
// Return a new :c:type:`PyLongObject` object from a C :c:expr:`long long`, or “NULL“
// on failure.
//
//go:linkname LongFromLongLong C.PyLong_FromLongLong
func LongFromLongLong(v c.LongLong) *Object

// PyObject* PyLong_FromUnsignedLongLong(unsigned long long v)
// Return a new :c:type:`PyLongObject` object from a C :c:expr:`unsigned long long`,
// or “NULL“ on failure.
//
//go:linkname LongFromUnsignedLongLong C.PyLong_FromUnsignedLongLong
func LongFromUnsignedLongLong(v c.UlongLong) *Object

// PyObject* PyLong_FromDouble(double v)
// Return a new :c:type:`PyLongObject` object from the integer part of *v*, or
// “NULL“ on failure.
//
//go:linkname LongFromDouble C.PyLong_FromDouble
func LongFromDouble(v c.Double) *Object

// PyObject* PyLong_FromString(const char *str, char **pend, int base)
// Return a new :c:type:`PyLongObject` based on the string value in *str*, which
// is interpreted according to the radix in *base*, or “NULL“ on failure.  If
// *pend* is non-“NULL“, *\*pend* will point to the end of *str* on success or
// to the first character that could not be processed on error.  If *base* is “0“,
// *str* is interpreted using the :ref:`integers` definition; in this case, leading
// zeros in a non-zero decimal number raises a :exc:`ValueError`.  If *base* is not
// “0“, it must be between “2“ and “36“, inclusive.  Leading and trailing
// whitespace and single underscores after a base specifier and between digits are
// ignored.  If there are no digits or *str* is not NULL-terminated following the
// digits and trailing whitespace, :exc:`ValueError` will be raised.
//
// .. seealso:: :c:func:`PyLong_AsNativeBytes()` and
// :c:func:`PyLong_FromNativeBytes()` functions can be used to convert
// a :c:type:`PyLongObject` to/from an array of bytes in base “256“.
//
//go:linkname LongFromString C.PyLong_FromString
func LongFromString(str *c.Char, pend **c.Char, base c.Int) *Object

// PyObject* PyLong_FromUnicodeObject(PyObject *u, int base)
// Convert a sequence of Unicode digits in the string *u* to a Python integer
// value.
//
//go:linkname LongFromUnicodeObject C.PyLong_FromUnicodeObject
func LongFromUnicodeObject(u *Object, base c.Int) *Object

// PyObject* PyLong_FromVoidPtr(void *p)
// Create a Python integer from the pointer *p*. The pointer value can be
// retrieved from the resulting value using :c:func:`PyLong_AsVoidPtr`.
//
//go:linkname LongFromVoidPtr C.PyLong_FromVoidPtr
func LongFromVoidPtr(p c.Pointer) *Object

// long PyLong_AsLong(PyObject *obj)
// .. index::
// single: LONG_MAX (C macro)
// single: OverflowError (built-in exception)
//
// Return a C :c:expr:`long` representation of *obj*.  If *obj* is not an
// instance of :c:type:`PyLongObject`, first call its :meth:`~object.__index__` method
// (if present) to convert it to a :c:type:`PyLongObject`.
//
// Raise :exc:`OverflowError` if the value of *obj* is out of range for a
// :c:expr:`long`.
//
// Returns “-1“ on error.  Use :c:func:`PyErr_Occurred` to disambiguate.
//
// Use :meth:`~object.__index__` if available.
//
// This function will no longer use :meth:`~object.__int__`.
//
//go:linkname LongAsLong C.PyLong_AsLong
func LongAsLong(obj *Object) c.Long

// long PyLong_AS_LONG(PyObject *obj)
// A :term:`soft deprecated` alias.
// Exactly equivalent to the preferred “PyLong_AsLong“. In particular,
// it can fail with :exc:`OverflowError` or another exception.
//
// .. deprecated:: 3.14
// The function is soft deprecated.
//
//go:linkname LongASLONG C.PyLong_AS_LONG
func LongASLONG(obj *Object) c.Long

// long PyLong_AsLongAndOverflow(PyObject *obj, int *overflow)
// Return a C :c:expr:`long` representation of *obj*.  If *obj* is not an
// instance of :c:type:`PyLongObject`, first call its :meth:`~object.__index__`
// method (if present) to convert it to a :c:type:`PyLongObject`.
//
// If the value of *obj* is greater than :c:macro:`LONG_MAX` or less than
// :c:macro:`LONG_MIN`, set *\*overflow* to “1“ or “-1“, respectively, and
// return “-1“; otherwise, set *\*overflow* to “0“.  If any other exception
// occurs set *\*overflow* to “0“ and return “-1“ as usual.
//
// Returns “-1“ on error.  Use :c:func:`PyErr_Occurred` to disambiguate.
//
// Use :meth:`~object.__index__` if available.
//
// This function will no longer use :meth:`~object.__int__`.
//
//go:linkname LongAsLongAndOverflow C.PyLong_AsLongAndOverflow
func LongAsLongAndOverflow(obj *Object, overflow *c.Int) c.Long

// long long PyLong_AsLongLong(PyObject *obj)
// .. index::
// single: OverflowError (built-in exception)
//
// Return a C :c:expr:`long long` representation of *obj*.  If *obj* is not an
// instance of :c:type:`PyLongObject`, first call its :meth:`~object.__index__` method
// (if present) to convert it to a :c:type:`PyLongObject`.
//
// Raise :exc:`OverflowError` if the value of *obj* is out of range for a
// :c:expr:`long long`.
//
// Returns “-1“ on error.  Use :c:func:`PyErr_Occurred` to disambiguate.
//
// Use :meth:`~object.__index__` if available.
//
// This function will no longer use :meth:`~object.__int__`.
//
//go:linkname LongAsLongLong C.PyLong_AsLongLong
func LongAsLongLong(obj *Object) c.LongLong

// long long PyLong_AsLongLongAndOverflow(PyObject *obj, int *overflow)
// Return a C :c:expr:`long long` representation of *obj*.  If *obj* is not an
// instance of :c:type:`PyLongObject`, first call its :meth:`~object.__index__` method
// (if present) to convert it to a :c:type:`PyLongObject`.
//
// If the value of *obj* is greater than :c:macro:`LLONG_MAX` or less than
// :c:macro:`LLONG_MIN`, set *\*overflow* to “1“ or “-1“, respectively,
// and return “-1“; otherwise, set *\*overflow* to “0“.  If any other
// exception occurs set *\*overflow* to “0“ and return “-1“ as usual.
//
// Returns “-1“ on error.  Use :c:func:`PyErr_Occurred` to disambiguate.
//
// Use :meth:`~object.__index__` if available.
//
// This function will no longer use :meth:`~object.__int__`.
//
//go:linkname LongAsLongLongAndOverflow C.PyLong_AsLongLongAndOverflow
func LongAsLongLongAndOverflow(obj *Object, overflow *c.Int) c.LongLong

// Py_ssize_t PyLong_AsSsize_t(PyObject *pylong)
// .. index::
// single: PY_SSIZE_T_MAX (C macro)
// single: OverflowError (built-in exception)
//
// Return a C :c:type:`Py_ssize_t` representation of *pylong*.  *pylong* must
// be an instance of :c:type:`PyLongObject`.
//
// Raise :exc:`OverflowError` if the value of *pylong* is out of range for a
// :c:type:`Py_ssize_t`.
//
// Returns “-1“ on error.  Use :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname LongAsSsizeT C.PyLong_AsSsize_t
func LongAsSsizeT(pylong *Object) SSizeT

// unsigned long PyLong_AsUnsignedLong(PyObject *pylong)
// .. index::
// single: ULONG_MAX (C macro)
// single: OverflowError (built-in exception)
//
// Return a C :c:expr:`unsigned long` representation of *pylong*.  *pylong*
// must be an instance of :c:type:`PyLongObject`.
//
// Raise :exc:`OverflowError` if the value of *pylong* is out of range for a
// :c:expr:`unsigned long`.
//
// Returns “(unsigned long)-1“ on error.
// Use :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname LongAsUnsignedLong C.PyLong_AsUnsignedLong
func LongAsUnsignedLong(pylong *Object) c.Ulong

// size_t PyLong_AsSize_t(PyObject *pylong)
// .. index::
// single: SIZE_MAX (C macro)
// single: OverflowError (built-in exception)
//
// Return a C :c:type:`size_t` representation of *pylong*.  *pylong* must be
// an instance of :c:type:`PyLongObject`.
//
// Raise :exc:`OverflowError` if the value of *pylong* is out of range for a
// :c:type:`size_t`.
//
// Returns “(size_t)-1“ on error.
// Use :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname LongAsSizeT C.PyLong_AsSize_t
func LongAsSizeT(pylong *Object) c.Ulong

// unsigned long long PyLong_AsUnsignedLongLong(PyObject *pylong)
// .. index::
// single: OverflowError (built-in exception)
//
// Return a C :c:expr:`unsigned long long` representation of *pylong*.  *pylong*
// must be an instance of :c:type:`PyLongObject`.
//
// Raise :exc:`OverflowError` if the value of *pylong* is out of range for an
// :c:expr:`unsigned long long`.
//
// Returns “(unsigned long long)-1“ on error.
// Use :c:func:`PyErr_Occurred` to disambiguate.
//
// A negative *pylong* now raises :exc:`OverflowError`, not :exc:`TypeError`.
//
//go:linkname LongAsUnsignedLongLong C.PyLong_AsUnsignedLongLong
func LongAsUnsignedLongLong(pylong *Object) c.UlongLong

// unsigned long PyLong_AsUnsignedLongMask(PyObject *obj)
// Return a C :c:expr:`unsigned long` representation of *obj*.  If *obj* is not
// an instance of :c:type:`PyLongObject`, first call its :meth:`~object.__index__`
// method (if present) to convert it to a :c:type:`PyLongObject`.
//
// If the value of *obj* is out of range for an :c:expr:`unsigned long`,
// return the reduction of that value modulo “ULONG_MAX + 1“.
//
// Returns “(unsigned long)-1“ on error.  Use :c:func:`PyErr_Occurred` to
// disambiguate.
//
// Use :meth:`~object.__index__` if available.
//
// This function will no longer use :meth:`~object.__int__`.
//
//go:linkname LongAsUnsignedLongMask C.PyLong_AsUnsignedLongMask
func LongAsUnsignedLongMask(obj *Object) c.Ulong

// unsigned long long PyLong_AsUnsignedLongLongMask(PyObject *obj)
// Return a C :c:expr:`unsigned long long` representation of *obj*.  If *obj*
// is not an instance of :c:type:`PyLongObject`, first call its
// :meth:`~object.__index__` method (if present) to convert it to a
// :c:type:`PyLongObject`.
//
// If the value of *obj* is out of range for an :c:expr:`unsigned long long`,
// return the reduction of that value modulo “ULLONG_MAX + 1“.
//
// Returns “(unsigned long long)-1“ on error.  Use :c:func:`PyErr_Occurred`
// to disambiguate.
//
// Use :meth:`~object.__index__` if available.
//
// This function will no longer use :meth:`~object.__int__`.
//
//go:linkname LongAsUnsignedLongLongMask C.PyLong_AsUnsignedLongLongMask
func LongAsUnsignedLongLongMask(obj *Object) c.UlongLong

// double PyLong_AsDouble(PyObject *pylong)
// Return a C :c:expr:`double` representation of *pylong*.  *pylong* must be
// an instance of :c:type:`PyLongObject`.
//
// Raise :exc:`OverflowError` if the value of *pylong* is out of range for a
// :c:expr:`double`.
//
// Returns “-1.0“ on error.  Use :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname LongAsDouble C.PyLong_AsDouble
func LongAsDouble(pylong *Object) c.Double

// void* PyLong_AsVoidPtr(PyObject *pylong)
// Convert a Python integer *pylong* to a C :c:expr:`void` pointer.
// If *pylong* cannot be converted, an :exc:`OverflowError` will be raised.  This
// is only assured to produce a usable :c:expr:`void` pointer for values created
// with :c:func:`PyLong_FromVoidPtr`.
//
// Returns “NULL“ on error.  Use :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname LongAsVoidPtr C.PyLong_AsVoidPtr
func LongAsVoidPtr(pylong *Object) c.Pointer

// Py_ssize_t PyLong_AsNativeBytes(PyObject *pylong, void* buffer, Py_ssize_t n_bytes, int flags)
// Copy the Python integer value *pylong* to a native *buffer* of size
// *n_bytes*. The *flags* can be set to “-1“ to behave similarly to a C cast,
// or to values documented below to control the behavior.
//
// Returns “-1“ with an exception raised on error.  This may happen if
// *pylong* cannot be interpreted as an integer, or if *pylong* was negative
// and the “Py_ASNATIVEBYTES_REJECT_NEGATIVE“ flag was set.
//
// Otherwise, returns the number of bytes required to store the value.
// If this is equal to or less than *n_bytes*, the entire value was copied.
// All *n_bytes* of the buffer are written: large buffers are padded with
// zeroes.
//
// If the returned value is greater than than *n_bytes*, the value was
// truncated: as many of the lowest bits of the value as could fit are written,
// and the higher bits are ignored. This matches the typical behavior
// of a C-style downcast.
//
// .. note::
//
// Overflow is not considered an error. If the returned value
// is larger than *n_bytes*, most significant bits were discarded.
//
// “0“ will never be returned.
//
// Values are always copied as two's-complement.
//
// Usage example::
//
// int32_t value;
// Py_ssize_t bytes = PyLong_AsNativeBytes(pylong, &value, sizeof(value), -1);
// if (bytes < 0) {
// // Failed. A Python exception was set with the reason.
// return NULL;
// }
// else if (bytes <= (Py_ssize_t)sizeof(value)) {
// // Success!
// }
// else {
// // Overflow occurred, but 'value' contains the truncated
// // lowest bits of pylong.
// }
//
// Passing zero to *n_bytes* will return the size of a buffer that would
// be large enough to hold the value. This may be larger than technically
// necessary, but not unreasonably so. If *n_bytes=0*, *buffer* may be
// “NULL“.
//
// .. note::
//
// Passing *n_bytes=0* to this function is not an accurate way to determine
// the bit length of the value.
//
// To get at the entire Python value of an unknown size, the function can be
// called twice: first to determine the buffer size, then to fill it::
//
// // Ask how much space we need.
// Py_ssize_t expected = PyLong_AsNativeBytes(pylong, NULL, 0, -1);
// if (expected < 0) {
// // Failed. A Python exception was set with the reason.
// return NULL;
// }
// assert(expected != 0);  // Impossible per the API definition.
// uint8_t *bignum = malloc(expected);
// if (!bignum) {
// PyErr_SetString(PyExc_MemoryError, "bignum malloc failed.");
// return NULL;
// }
// // Safely get the entire value.
// Py_ssize_t bytes = PyLong_AsNativeBytes(pylong, bignum, expected, -1);
// if (bytes < 0) {  // Exception has been set.
// free(bignum);
// return NULL;
// }
// else if (bytes > expected) {  // This should not be possible.
// PyErr_SetString(PyExc_RuntimeError,
// "Unexpected bignum truncation after a size check.");
// free(bignum);
// return NULL;
// }
// // The expected success given the above pre-check.
// // ... use bignum ...
// free(bignum);
//
// *flags* is either “-1“ (“Py_ASNATIVEBYTES_DEFAULTS“) to select defaults
// that behave most like a C cast, or a combintation of the other flags in
// the table below.
// Note that “-1“ cannot be combined with other flags.
//
// Currently, “-1“ corresponds to
// “Py_ASNATIVEBYTES_NATIVE_ENDIAN | Py_ASNATIVEBYTES_UNSIGNED_BUFFER“.
//
//go:linkname LongAsNativeBytes C.PyLong_AsNativeBytes
func LongAsNativeBytes(pylong *Object, buffer c.Pointer, nBytes SSizeT, flags c.Int) SSizeT

// int PyLong_GetSign(PyObject *obj, int *sign)
// Get the sign of the integer object *obj*.
//
// On success, set *\*sign* to the integer sign  (0, -1 or +1 for zero, negative or
// positive integer, respectively) and return 0.
//
// On failure, return -1 with an exception set.  This function always succeeds
// if *obj* is a :c:type:`PyLongObject` or its subtype.
//
//go:linkname LongGetSign C.PyLong_GetSign
func LongGetSign(obj *Object, sign *c.Int) c.Int

// PyObject* PyLong_GetInfo(void)
// On success, return a read only :term:`named tuple`, that holds
// information about Python's internal representation of integers.
// See :data:`sys.int_info` for description of individual fields.
//
// On failure, return “NULL“ with an exception set.
//
//go:linkname LongGetInfo C.PyLong_GetInfo
func LongGetInfo() *Object

// int PyUnstable_Long_IsCompact(const PyLongObject* op)
// Return 1 if *op* is compact, 0 otherwise.
//
// This function makes it possible for performance-critical code to implement
// a “fast path” for small integers. For compact values use
// :c:func:`PyUnstable_Long_CompactValue`; for others fall back to a
// :c:func:`PyLong_As* <PyLong_AsSize_t>` function or
// :c:func:`PyLong_AsNativeBytes`.
//
// The speedup is expected to be negligible for most users.
//
// Exactly what values are considered compact is an implementation detail
// and is subject to change.
//
//go:linkname UnstableLongIsCompact C.PyUnstable_Long_IsCompact
func UnstableLongIsCompact(op *LongObject) c.Int

// Py_ssize_t PyUnstable_Long_CompactValue(const PyLongObject* op)
// If *op* is compact, as determined by :c:func:`PyUnstable_Long_IsCompact`,
// return its value.
//
// Otherwise, the return value is undefined.
//
//go:linkname UnstableLongCompactValue C.PyUnstable_Long_CompactValue
func UnstableLongCompactValue(op *LongObject) SSizeT

// PyLongObject
// This subtype of :c:type:`PyObject` represents a Python integer object.
type LongObject = C.PyLongObject

// PyTypeObject PyLong_Type
// This instance of :c:type:`PyTypeObject` represents the Python integer type.
// This is the same object as :class:`int` in the Python layer.
func LongType() TypeObject {
	return *(*TypeObject)(c.Pointer(&C.PyLong_Type))
}
