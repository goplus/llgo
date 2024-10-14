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

// Py_complex _Py_c_sum(Py_complex left, Py_complex right)
// Return the sum of two complex numbers, using the C :c:type:`Py_complex`
// representation.
//
//go:linkname CSum C._Py_c_sum
func CSum(left Complex, right Complex) Complex

// Py_complex _Py_c_diff(Py_complex left, Py_complex right)
// Return the difference between two complex numbers, using the C
// :c:type:`Py_complex` representation.
//
//go:linkname CDiff C._Py_c_diff
func CDiff(left Complex, right Complex) Complex

// Py_complex _Py_c_neg(Py_complex num)
// Return the negation of the complex number *num*, using the C
// :c:type:`Py_complex` representation.
//
//go:linkname CNeg C._Py_c_neg
func CNeg(num Complex) Complex

// Py_complex _Py_c_prod(Py_complex left, Py_complex right)
// Return the product of two complex numbers, using the C :c:type:`Py_complex`
// representation.
//
//go:linkname CProd C._Py_c_prod
func CProd(left Complex, right Complex) Complex

// Py_complex _Py_c_quot(Py_complex dividend, Py_complex divisor)
// Return the quotient of two complex numbers, using the C :c:type:`Py_complex`
// representation.
//
// If *divisor* is null, this method returns zero and sets
// :c:data:`errno` to :c:macro:`!EDOM`.
//
//go:linkname CQuot C._Py_c_quot
func CQuot(dividend Complex, divisor Complex) Complex

// Py_complex _Py_c_pow(Py_complex num, Py_complex exp)
// Return the exponentiation of *num* by *exp*, using the C :c:type:`Py_complex`
// representation.
//
// If *num* is null and *exp* is not a positive real number,
// this method returns zero and sets :c:data:`errno` to :c:macro:`!EDOM`.
//
// Set :c:data:`errno` to :c:macro:`!ERANGE` on overflows.
//
// Complex Numbers as Python Objects
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
//
//go:linkname CPow C._Py_c_pow
func CPow(num Complex, exp Complex) Complex

// int PyComplex_Check(PyObject *p)
// Return true if its argument is a :c:type:`PyComplexObject` or a subtype of
// :c:type:`PyComplexObject`.  This function always succeeds.
//
//go:linkname ComplexCheck C.PyComplex_Check
func ComplexCheck(p *Object) c.Int

// int PyComplex_CheckExact(PyObject *p)
// Return true if its argument is a :c:type:`PyComplexObject`, but not a subtype of
// :c:type:`PyComplexObject`.  This function always succeeds.
//
//go:linkname ComplexCheckExact C.PyComplex_CheckExact
func ComplexCheckExact(p *Object) c.Int

// PyObject* PyComplex_FromCComplex(Py_complex v)
// Create a new Python complex number object from a C :c:type:`Py_complex` value.
// Return “NULL“ with an exception set on error.
//
//go:linkname ComplexFromCComplex C.PyComplex_FromCComplex
func ComplexFromCComplex(v Complex) *Object

// PyObject* PyComplex_FromDoubles(double real, double imag)
// Return a new :c:type:`PyComplexObject` object from *real* and *imag*.
// Return “NULL“ with an exception set on error.
//
//go:linkname ComplexFromDoubles C.PyComplex_FromDoubles
func ComplexFromDoubles(real c.Double, imag c.Double) *Object

// double PyComplex_RealAsDouble(PyObject *op)
// Return the real part of *op* as a C :c:expr:`double`.
//
// If *op* is not a Python complex number object but has a
// :meth:`~object.__complex__` method, this method will first be called to
// convert *op* to a Python complex number object.  If :meth:`!__complex__` is
// not defined then it falls back to call :c:func:`PyFloat_AsDouble` and
// returns its result.
//
// Upon failure, this method returns “-1.0“ with an exception set, so one
// should call :c:func:`PyErr_Occurred` to check for errors.
//
// Use :meth:`~object.__complex__` if available.
//
//go:linkname ComplexRealAsDouble C.PyComplex_RealAsDouble
func ComplexRealAsDouble(op *Object) c.Double

// double PyComplex_ImagAsDouble(PyObject *op)
// Return the imaginary part of *op* as a C :c:expr:`double`.
//
// If *op* is not a Python complex number object but has a
// :meth:`~object.__complex__` method, this method will first be called to
// convert *op* to a Python complex number object.  If :meth:`!__complex__` is
// not defined then it falls back to call :c:func:`PyFloat_AsDouble` and
// returns “0.0“ on success.
//
// Upon failure, this method returns “-1.0“ with an exception set, so one
// should call :c:func:`PyErr_Occurred` to check for errors.
//
// Use :meth:`~object.__complex__` if available.
//
//go:linkname ComplexImagAsDouble C.PyComplex_ImagAsDouble
func ComplexImagAsDouble(op *Object) c.Double

// Py_complex PyComplex_AsCComplex(PyObject *op)
// Return the :c:type:`Py_complex` value of the complex number *op*.
//
// If *op* is not a Python complex number object but has a :meth:`~object.__complex__`
// method, this method will first be called to convert *op* to a Python complex
// number object.  If :meth:`!__complex__` is not defined then it falls back to
// :meth:`~object.__float__`.  If :meth:`!__float__` is not defined then it falls back
// to :meth:`~object.__index__`.
//
// Upon failure, this method returns :c:type:`Py_complex`
// with :c:member:`~Py_complex.real` set to “-1.0“ and with an exception set, so one
// should call :c:func:`PyErr_Occurred` to check for errors.
//
// Use :meth:`~object.__index__` if available.
//
//go:linkname ComplexAsCComplex C.PyComplex_AsCComplex
func ComplexAsCComplex(op *Object) Complex

// Py_complex
// The C structure which corresponds to the value portion of a Python complex
// number object.  Most of the functions for dealing with complex number objects
// use structures of this type as input or output values, as appropriate.
type Complex = C.Py_complex

// PyComplexObject
// This subtype of :c:type:`PyObject` represents a Python complex number object.
type ComplexObject = C.PyComplexObject

// PyTypeObject PyComplex_Type
// This instance of :c:type:`PyTypeObject` represents the Python complex number
// type. It is the same object as :class:`complex` in the Python layer.
func ComplexType() TypeObject {
	return *(*TypeObject)(c.Pointer(&C.PyComplex_Type))
}
