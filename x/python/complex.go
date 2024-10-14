package python

import "github.com/goplus/llgo/x/python/py"

type Complex struct {
	Object
}

func newComplex(obj *py.Object) Complex {
	return Complex{newObject(obj)}
}

func MakeComplex(f complex128) Complex {
	return newComplex(py.ComplexFromDoubles(real(f), imag(f)))
}

func (c Complex) Complex128() complex128 {
	real := py.ComplexRealAsDouble(c.obj)
	imag := py.ComplexImagAsDouble(c.obj)
	return complex(real, imag)
}

func (c Complex) Real() float64 {
	return py.ComplexRealAsDouble(c.obj)
}

func (c Complex) Imag() float64 {
	return py.ComplexImagAsDouble(c.obj)
}
