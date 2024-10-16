package py

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// PyObject *PyComplex_FromDoubles(double real, double imag)
// Return value: New reference. Part of the Stable ABI.
// Return a new PyComplexObject object from real and imag. Return NULL with an exception set on error.
//
// llgo:link ComplexFromDoubles C.PyComplex_FromDoubles
func ComplexFromDoubles(real, imag c.Double) *Object

// double PyComplex_RealAsDouble(PyObject *op)¶
// Part of the Stable ABI.
// Return the real part of op as a C double.
// If op is not a Python complex number object but has a __complex__() method, this method will first be called to convert op to a Python complex number object. If __complex__() is not defined then it falls back to call PyFloat_AsDouble() and returns its result.
// Upon failure, this method returns -1.0 with an exception set, so one should call PyErr_Occurred() to check for errors.
// llgo:link (*Object).ComplexRealAsDouble C.PyComplex_RealAsDouble
func (o *Object) ComplexRealAsDouble() c.Double { return 0 }

// double PyComplex_ImagAsDouble(PyObject *op)
// Part of the Stable ABI.
// Return the imaginary part of op as a C double.
// If op is not a Python complex number object but has a __complex__() method, this method will first be called to convert op to a Python complex number object. If __complex__() is not defined then it falls back to call PyFloat_AsDouble() and returns 0.0 on success.
// Upon failure, this method returns -1.0 with an exception set, so one should call PyErr_Occurred() to check for errors.
// llgo:link (*Object).ComplexImagAsDouble C.PyComplex_ImagAsDouble
func (o *Object) ComplexImagAsDouble() c.Double { return 0 }
