package python

import "github.com/goplus/llgo/py"

type Complex struct {
	Object
}

func NewComplex(obj *py.Object) Complex {
	return Complex{NewObject(obj)}
}

func MakeComplex(f complex128) Complex {
	return NewComplex(py.ComplexFromDoubles(real(f), imag(f)))
}

func (c Complex) Complex128() complex128 {
	real := c.obj.ComplexRealAsDouble()
	imag := c.obj.ComplexImagAsDouble()
	return complex(real, imag)
}

func (c Complex) Real() float64 {
	return c.obj.ComplexRealAsDouble()
}

func (c Complex) Imag() float64 {
	return c.obj.ComplexImagAsDouble()
}
