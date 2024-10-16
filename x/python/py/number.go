package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyNumber_Check(PyObject *o)
// Returns “1“ if the object *o* provides numeric protocols, and false otherwise.
// This function always succeeds.
//
// Returns “1“ if *o* is an index integer.
//
//go:linkname NumberCheck PyNumber_Check
func NumberCheck(o *Object) Int

// PyObject* PyNumber_Add(PyObject *o1, PyObject *o2)
// Returns the result of adding *o1* and *o2*, or “NULL“ on failure.  This is the
// equivalent of the Python expression “o1 + o2“.
//
//go:linkname NumberAdd PyNumber_Add
func NumberAdd(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_Subtract(PyObject *o1, PyObject *o2)
// Returns the result of subtracting *o2* from *o1*, or “NULL“ on failure.  This is
// the equivalent of the Python expression “o1 - o2“.
//
//go:linkname NumberSubtract PyNumber_Subtract
func NumberSubtract(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_Multiply(PyObject *o1, PyObject *o2)
// Returns the result of multiplying *o1* and *o2*, or “NULL“ on failure.  This is
// the equivalent of the Python expression “o1 * o2“.
//
//go:linkname NumberMultiply PyNumber_Multiply
func NumberMultiply(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_MatrixMultiply(PyObject *o1, PyObject *o2)
// Returns the result of matrix multiplication on *o1* and *o2*, or “NULL“ on
// failure.  This is the equivalent of the Python expression “o1 @ o2“.
//
//go:linkname NumberMatrixMultiply PyNumber_MatrixMultiply
func NumberMatrixMultiply(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_FloorDivide(PyObject *o1, PyObject *o2)
// Return the floor of *o1* divided by *o2*, or “NULL“ on failure.  This is
// the equivalent of the Python expression “o1 // o2“.
//
//go:linkname NumberFloorDivide PyNumber_FloorDivide
func NumberFloorDivide(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_TrueDivide(PyObject *o1, PyObject *o2)
// Return a reasonable approximation for the mathematical value of *o1* divided by
// *o2*, or “NULL“ on failure.  The return value is "approximate" because binary
// floating-point numbers are approximate; it is not possible to represent all real
// numbers in base two.  This function can return a floating-point value when
// passed two integers.  This is the equivalent of the Python expression “o1 / o2“.
//
//go:linkname NumberTrueDivide PyNumber_TrueDivide
func NumberTrueDivide(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_Remainder(PyObject *o1, PyObject *o2)
// Returns the remainder of dividing *o1* by *o2*, or “NULL“ on failure.  This is
// the equivalent of the Python expression “o1 % o2“.
//
//go:linkname NumberRemainder PyNumber_Remainder
func NumberRemainder(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_Divmod(PyObject *o1, PyObject *o2)
// .. index:: pair: built-in function; divmod
//
// See the built-in function :func:`divmod`. Returns “NULL“ on failure.  This is
// the equivalent of the Python expression “divmod(o1, o2)“.
//
//go:linkname NumberDivmod PyNumber_Divmod
func NumberDivmod(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_Power(PyObject *o1, PyObject *o2, PyObject *o3)
// .. index:: pair: built-in function; pow
//
// See the built-in function :func:`pow`. Returns “NULL“ on failure.  This is the
// equivalent of the Python expression “pow(o1, o2, o3)“, where *o3* is optional.
// If *o3* is to be ignored, pass :c:data:`Py_None` in its place (passing “NULL“ for
// *o3* would cause an illegal memory access).
//
//go:linkname NumberPower PyNumber_Power
func NumberPower(o1 *Object, o2 *Object, o3 *Object) *Object

// PyObject* PyNumber_Negative(PyObject *o)
// Returns the negation of *o* on success, or “NULL“ on failure. This is the
// equivalent of the Python expression “-o“.
//
//go:linkname NumberNegative PyNumber_Negative
func NumberNegative(o *Object) *Object

// PyObject* PyNumber_Positive(PyObject *o)
// Returns *o* on success, or “NULL“ on failure.  This is the equivalent of the
// Python expression “+o“.
//
//go:linkname NumberPositive PyNumber_Positive
func NumberPositive(o *Object) *Object

// PyObject* PyNumber_Absolute(PyObject *o)
// .. index:: pair: built-in function; abs
//
// Returns the absolute value of *o*, or “NULL“ on failure.  This is the equivalent
// of the Python expression “abs(o)“.
//
//go:linkname NumberAbsolute PyNumber_Absolute
func NumberAbsolute(o *Object) *Object

// PyObject* PyNumber_Invert(PyObject *o)
// Returns the bitwise negation of *o* on success, or “NULL“ on failure.  This is
// the equivalent of the Python expression “~o“.
//
//go:linkname NumberInvert PyNumber_Invert
func NumberInvert(o *Object) *Object

// PyObject* PyNumber_Lshift(PyObject *o1, PyObject *o2)
// Returns the result of left shifting *o1* by *o2* on success, or “NULL“ on
// failure.  This is the equivalent of the Python expression “o1 << o2“.
//
//go:linkname NumberLshift PyNumber_Lshift
func NumberLshift(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_Rshift(PyObject *o1, PyObject *o2)
// Returns the result of right shifting *o1* by *o2* on success, or “NULL“ on
// failure.  This is the equivalent of the Python expression “o1 >> o2“.
//
//go:linkname NumberRshift PyNumber_Rshift
func NumberRshift(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_And(PyObject *o1, PyObject *o2)
// Returns the "bitwise and" of *o1* and *o2* on success and “NULL“ on failure.
// This is the equivalent of the Python expression “o1 & o2“.
//
//go:linkname NumberAnd PyNumber_And
func NumberAnd(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_Xor(PyObject *o1, PyObject *o2)
// Returns the "bitwise exclusive or" of *o1* by *o2* on success, or “NULL“ on
// failure.  This is the equivalent of the Python expression “o1 ^ o2“.
//
//go:linkname NumberXor PyNumber_Xor
func NumberXor(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_Or(PyObject *o1, PyObject *o2)
// Returns the "bitwise or" of *o1* and *o2* on success, or “NULL“ on failure.
// This is the equivalent of the Python expression “o1 | o2“.
//
//go:linkname NumberOr PyNumber_Or
func NumberOr(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceAdd(PyObject *o1, PyObject *o2)
// Returns the result of adding *o1* and *o2*, or “NULL“ on failure.  The operation
// is done *in-place* when *o1* supports it.  This is the equivalent of the Python
// statement “o1 += o2“.
//
//go:linkname NumberInPlaceAdd PyNumber_InPlaceAdd
func NumberInPlaceAdd(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceSubtract(PyObject *o1, PyObject *o2)
// Returns the result of subtracting *o2* from *o1*, or “NULL“ on failure.  The
// operation is done *in-place* when *o1* supports it.  This is the equivalent of
// the Python statement “o1 -= o2“.
//
//go:linkname NumberInPlaceSubtract PyNumber_InPlaceSubtract
func NumberInPlaceSubtract(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceMultiply(PyObject *o1, PyObject *o2)
// Returns the result of multiplying *o1* and *o2*, or “NULL“ on failure.  The
// operation is done *in-place* when *o1* supports it.  This is the equivalent of
// the Python statement “o1 *= o2“.
//
//go:linkname NumberInPlaceMultiply PyNumber_InPlaceMultiply
func NumberInPlaceMultiply(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceMatrixMultiply(PyObject *o1, PyObject *o2)
// Returns the result of matrix multiplication on *o1* and *o2*, or “NULL“ on
// failure.  The operation is done *in-place* when *o1* supports it.  This is
// the equivalent of the Python statement “o1 @= o2“.
//
//go:linkname NumberInPlaceMatrixMultiply PyNumber_InPlaceMatrixMultiply
func NumberInPlaceMatrixMultiply(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceFloorDivide(PyObject *o1, PyObject *o2)
// Returns the mathematical floor of dividing *o1* by *o2*, or “NULL“ on failure.
// The operation is done *in-place* when *o1* supports it.  This is the equivalent
// of the Python statement “o1 //= o2“.
//
//go:linkname NumberInPlaceFloorDivide PyNumber_InPlaceFloorDivide
func NumberInPlaceFloorDivide(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceTrueDivide(PyObject *o1, PyObject *o2)
// Return a reasonable approximation for the mathematical value of *o1* divided by
// *o2*, or “NULL“ on failure.  The return value is "approximate" because binary
// floating-point numbers are approximate; it is not possible to represent all real
// numbers in base two.  This function can return a floating-point value when
// passed two integers.  The operation is done *in-place* when *o1* supports it.
// This is the equivalent of the Python statement “o1 /= o2“.
//
//go:linkname NumberInPlaceTrueDivide PyNumber_InPlaceTrueDivide
func NumberInPlaceTrueDivide(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceRemainder(PyObject *o1, PyObject *o2)
// Returns the remainder of dividing *o1* by *o2*, or “NULL“ on failure.  The
// operation is done *in-place* when *o1* supports it.  This is the equivalent of
// the Python statement “o1 %= o2“.
//
//go:linkname NumberInPlaceRemainder PyNumber_InPlaceRemainder
func NumberInPlaceRemainder(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlacePower(PyObject *o1, PyObject *o2, PyObject *o3)
// .. index:: pair: built-in function; pow
//
// See the built-in function :func:`pow`. Returns “NULL“ on failure.  The operation
// is done *in-place* when *o1* supports it.  This is the equivalent of the Python
// statement “o1 **= o2“ when o3 is :c:data:`Py_None`, or an in-place variant of
// “pow(o1, o2, o3)“ otherwise. If *o3* is to be ignored, pass :c:data:`Py_None`
// in its place (passing “NULL“ for *o3* would cause an illegal memory access).
//
//go:linkname NumberInPlacePower PyNumber_InPlacePower
func NumberInPlacePower(o1 *Object, o2 *Object, o3 *Object) *Object

// PyObject* PyNumber_InPlaceLshift(PyObject *o1, PyObject *o2)
// Returns the result of left shifting *o1* by *o2* on success, or “NULL“ on
// failure.  The operation is done *in-place* when *o1* supports it.  This is the
// equivalent of the Python statement “o1 <<= o2“.
//
//go:linkname NumberInPlaceLshift PyNumber_InPlaceLshift
func NumberInPlaceLshift(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceRshift(PyObject *o1, PyObject *o2)
// Returns the result of right shifting *o1* by *o2* on success, or “NULL“ on
// failure.  The operation is done *in-place* when *o1* supports it.  This is the
// equivalent of the Python statement “o1 >>= o2“.
//
//go:linkname NumberInPlaceRshift PyNumber_InPlaceRshift
func NumberInPlaceRshift(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceAnd(PyObject *o1, PyObject *o2)
// Returns the "bitwise and" of *o1* and *o2* on success and “NULL“ on failure. The
// operation is done *in-place* when *o1* supports it.  This is the equivalent of
// the Python statement “o1 &= o2“.
//
//go:linkname NumberInPlaceAnd PyNumber_InPlaceAnd
func NumberInPlaceAnd(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceXor(PyObject *o1, PyObject *o2)
// Returns the "bitwise exclusive or" of *o1* by *o2* on success, or “NULL“ on
// failure.  The operation is done *in-place* when *o1* supports it.  This is the
// equivalent of the Python statement “o1 ^= o2“.
//
//go:linkname NumberInPlaceXor PyNumber_InPlaceXor
func NumberInPlaceXor(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_InPlaceOr(PyObject *o1, PyObject *o2)
// Returns the "bitwise or" of *o1* and *o2* on success, or “NULL“ on failure.  The
// operation is done *in-place* when *o1* supports it.  This is the equivalent of
// the Python statement “o1 |= o2“.
//
//go:linkname NumberInPlaceOr PyNumber_InPlaceOr
func NumberInPlaceOr(o1 *Object, o2 *Object) *Object

// PyObject* PyNumber_Long(PyObject *o)
// .. index:: pair: built-in function; int
//
// Returns the *o* converted to an integer object on success, or “NULL“ on
// failure.  This is the equivalent of the Python expression “int(o)“.
//
//go:linkname NumberLong PyNumber_Long
func NumberLong(o *Object) *Object

// PyObject* PyNumber_Float(PyObject *o)
// .. index:: pair: built-in function; float
//
// Returns the *o* converted to a float object on success, or “NULL“ on failure.
// This is the equivalent of the Python expression “float(o)“.
//
//go:linkname NumberFloat PyNumber_Float
func NumberFloat(o *Object) *Object

// PyObject* PyNumber_Index(PyObject *o)
// Returns the *o* converted to a Python int on success or “NULL“ with a
// :exc:`TypeError` exception raised on failure.
//
// The result always has exact type :class:`int`.  Previously, the result
// could have been an instance of a subclass of “int“.
//
//go:linkname NumberIndex PyNumber_Index
func NumberIndex(o *Object) *Object

// PyObject* PyNumber_ToBase(PyObject *n, int base)
// Returns the integer *n* converted to base *base* as a string.  The *base*
// argument must be one of 2, 8, 10, or 16.  For base 2, 8, or 16, the
// returned string is prefixed with a base marker of “'0b'“, “'0o'“, or
// “'0x'“, respectively.  If *n* is not a Python int, it is converted with
// :c:func:`PyNumber_Index` first.
//
//go:linkname NumberToBase PyNumber_ToBase
func NumberToBase(n *Object, base Int) *Object

// Py_ssize_t PyNumber_AsSsize_t(PyObject *o, PyObject *exc)
// Returns *o* converted to a :c:type:`Py_ssize_t` value if *o* can be interpreted as an
// integer.  If the call fails, an exception is raised and “-1“ is returned.
//
// If *o* can be converted to a Python int but the attempt to
// convert to a :c:type:`Py_ssize_t` value would raise an :exc:`OverflowError`, then the
// *exc* argument is the type of exception that will be raised (usually
// :exc:`IndexError` or :exc:`OverflowError`).  If *exc* is “NULL“, then the
// exception is cleared and the value is clipped to “PY_SSIZE_T_MIN“ for a negative
// integer or “PY_SSIZE_T_MAX“ for a positive integer.
//
//go:linkname NumberAsSsizeT PyNumber_AsSsize_t
func NumberAsSsizeT(o *Object, exc *Object) SSizeT

// int PyIndex_Check(PyObject *o)
// Returns “1“ if *o* is an index integer (has the “nb_index“ slot of the
// “tp_as_number“ structure filled in), and “0“ otherwise.
// This function always succeeds.
//
//go:linkname IndexCheck PyIndex_Check
func IndexCheck(o *Object) Int
