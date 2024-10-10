package python

import "github.com/goplus/llgo/py"

type Float struct {
	Object
}

func NewFloat(obj *py.Object) Float {
	return Float{NewObject(obj)}
}

func MakeFloat(f float64) Float {
	return NewFloat(py.Float(f))
}

func (f Float) Float64() float64 {
	return f.obj.Float64()
}

func (f Float) IsInteger() Bool {
	fn := Cast[Func](f.GetAttrString("is_integer"))
	return Cast[Bool](fn.CallNoArgs())
}
