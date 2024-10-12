package python

import "github.com/goplus/llgo/py"

type Float struct {
	Object
}

func newFloat(obj *py.Object) Float {
	return Float{newObject(obj)}
}

func MakeFloat(f float64) Float {
	return newFloat(py.Float(f))
}

func (f Float) Float64() float64 {
	return f.obj.Float64()
}

func (f Float) IsInteger() Bool {
	fn := Cast[Func](f.GetAttr("is_integer"))
	return Cast[Bool](fn.callNoArgs())
}
