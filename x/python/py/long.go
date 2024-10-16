package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyLong_Check(PyObject *p)
// Return true if its argument is a :c:type:`PyLongObject` or a subtype of
// :c:type:`PyLongObject`.  This function always succeeds.
//
//go:linkname LongCheck PyLong_Check
func LongCheck(p *Object) Int

// int PyLong_CheckExact(PyObject *p)
// Return true if its argument is a :c:type:`PyLongObject`, but not a subtype of
// :c:type:`PyLongObject`.  This function always succeeds.
//
//go:linkname LongCheckExact PyLong_CheckExact
func LongCheckExact(p *Object) Int

// PyObject* PyLong_FromLong(long v)
// Return a new :c:type:`PyLongObject` object from *v*, or “NULL“ on failure.
//
// The current implementation keeps an array of integer objects for all integers
// between “-5“ and “256“. When you create an int in that range you actually
// just get back a reference to the existing object.
//
//go:linkname LongFromLong PyLong_FromLong
func LongFromLong(v Long) *Object

// PyObject* PyLong_FromUnsignedLong(unsigned long v)
// Return a new :c:type:`PyLongObject` object from a C :c:expr:`unsigned long`, or
// “NULL“ on failure.
//
//go:linkname LongFromUnsignedLong PyLong_FromUnsignedLong
func LongFromUnsignedLong(v Ulong) *Object

// PyObject* PyLong_FromSsize_t(Py_ssize_t v)
// Return a new :c:type:`PyLongObject` object from a C :c:type:`Py_ssize_t`, or
// “NULL“ on failure.
//
//go:linkname LongFromSsizeT PyLong_FromSsize_t
func LongFromSsizeT(v SSizeT) *Object

// PyObject* PyLong_FromSize_t(size_t v)
// Return a new :c:type:`PyLongObject` object from a C :c:type:`size_t`, or
// “NULL“ on failure.
//
//go:linkname LongFromSizeT PyLong_FromSize_t
func LongFromSizeT(v Ulong) *Object

// PyObject* PyLong_FromLongLong(long long v)
// Return a new :c:type:`PyLongObject` object from a C :c:expr:`long long`, or “NULL“
// on failure.
//
//go:linkname LongFromLongLong PyLong_FromLongLong
func LongFromLongLong(v LongLong) *Object

// PyObject* PyLong_FromUnsignedLongLong(unsigned long long v)
// Return a new :c:type:`PyLongObject` object from a C :c:expr:`unsigned long long`,
// or “NULL“ on failure.
//
//go:linkname LongFromUnsignedLongLong PyLong_FromUnsignedLongLong
func LongFromUnsignedLongLong(v UlongLong) *Object

// PyObject* PyLong_FromDouble(double v)
// Return a new :c:type:`PyLongObject` object from the integer part of *v*, or
// “NULL“ on failure.
//
//go:linkname LongFromDouble PyLong_FromDouble
func LongFromDouble(v Double) *Object

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
// .. seealso:: Python methods :meth:`int.to_bytes` and :meth:`int.from_bytes`
// to convert a :c:type:`PyLongObject` to/from an array of bytes in base
// “256“. You can call those from C using :c:func:`PyObject_CallMethod`.
//
//go:linkname LongFromString PyLong_FromString
func LongFromString(str *Char, pend **Char, base Int) *Object

// PyObject* PyLong_FromUnicodeObject(PyObject *u, int base)
// Convert a sequence of Unicode digits in the string *u* to a Python integer
// value.
//
//go:linkname LongFromUnicodeObject PyLong_FromUnicodeObject
func LongFromUnicodeObject(u *Object, base Int) *Object

// PyObject* PyLong_FromVoidPtr(void *p)
// Create a Python integer from the pointer *p*. The pointer value can be
// retrieved from the resulting value using :c:func:`PyLong_AsVoidPtr`.
//
// .. XXX alias PyLong_AS_LONG (for now)
//
//go:linkname LongFromVoidPtr PyLong_FromVoidPtr
func LongFromVoidPtr(p Pointer) *Object

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
//go:linkname LongAsLong PyLong_AsLong
func LongAsLong(obj *Object) Long

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
//go:linkname LongAsLongAndOverflow PyLong_AsLongAndOverflow
func LongAsLongAndOverflow(obj *Object, overflow *Int) Long

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
//go:linkname LongAsLongLong PyLong_AsLongLong
func LongAsLongLong(obj *Object) LongLong

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
//go:linkname LongAsLongLongAndOverflow PyLong_AsLongLongAndOverflow
func LongAsLongLongAndOverflow(obj *Object, overflow *Int) LongLong

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
//go:linkname LongAsSsizeT PyLong_AsSsize_t
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
//go:linkname LongAsUnsignedLong PyLong_AsUnsignedLong
func LongAsUnsignedLong(pylong *Object) Ulong

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
//go:linkname LongAsSizeT PyLong_AsSize_t
func LongAsSizeT(pylong *Object) Ulong

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
//go:linkname LongAsUnsignedLongLong PyLong_AsUnsignedLongLong
func LongAsUnsignedLongLong(pylong *Object) UlongLong

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
//go:linkname LongAsUnsignedLongMask PyLong_AsUnsignedLongMask
func LongAsUnsignedLongMask(obj *Object) Ulong

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
//go:linkname LongAsUnsignedLongLongMask PyLong_AsUnsignedLongLongMask
func LongAsUnsignedLongLongMask(obj *Object) UlongLong

// double PyLong_AsDouble(PyObject *pylong)
// Return a C :c:expr:`double` representation of *pylong*.  *pylong* must be
// an instance of :c:type:`PyLongObject`.
//
// Raise :exc:`OverflowError` if the value of *pylong* is out of range for a
// :c:expr:`double`.
//
// Returns “-1.0“ on error.  Use :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname LongAsDouble PyLong_AsDouble
func LongAsDouble(pylong *Object) Double

// void* PyLong_AsVoidPtr(PyObject *pylong)
// Convert a Python integer *pylong* to a C :c:expr:`void` pointer.
// If *pylong* cannot be converted, an :exc:`OverflowError` will be raised.  This
// is only assured to produce a usable :c:expr:`void` pointer for values created
// with :c:func:`PyLong_FromVoidPtr`.
//
// Returns “NULL“ on error.  Use :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname LongAsVoidPtr PyLong_AsVoidPtr
func LongAsVoidPtr(pylong *Object) Pointer

// PyObject* PyLong_GetInfo(void)
// On success, return a read only :term:`named tuple`, that holds
// information about Python's internal representation of integers.
// See :data:`sys.int_info` for description of individual fields.
//
// On failure, return “NULL“ with an exception set.
//
//go:linkname LongGetInfo PyLong_GetInfo
func LongGetInfo() *Object

// int PyUnstable_Long_IsCompact(const PyLongObject* op)
// Return 1 if *op* is compact, 0 otherwise.
//
// This function makes it possible for performance-critical code to implement
// a “fast path” for small integers. For compact values use
// :c:func:`PyUnstable_Long_CompactValue`; for others fall back to a
// :c:func:`PyLong_As* <PyLong_AsSize_t>` function or
// :c:func:`calling <PyObject_CallMethod>` :meth:`int.to_bytes`.
//
// The speedup is expected to be negligible for most users.
//
// Exactly what values are considered compact is an implementation detail
// and is subject to change.
//
//go:linkname UnstableLongIsCompact PyUnstable_Long_IsCompact
func UnstableLongIsCompact(op *LongObject) Int

// Py_ssize_t PyUnstable_Long_CompactValue(const PyLongObject* op)
// If *op* is compact, as determined by :c:func:`PyUnstable_Long_IsCompact`,
// return its value.
//
// Otherwise, the return value is undefined.
//
//go:linkname UnstableLongCompactValue PyUnstable_Long_CompactValue
func UnstableLongCompactValue(op *LongObject) SSizeT

// PyLongObject
// This subtype of :c:type:`PyObject` represents a Python integer object.
type LongObject = C.PyLongObject

// PyTypeObject PyLong_Type
// This instance of :c:type:`PyTypeObject` represents the Python integer type.
// This is the same object as :class:`int` in the Python layer.
func LongType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyLong_Type))
}
