package python

import "github.com/goplus/llgo/x/python/py"

type Float struct {
	Object
}

func newFloat(obj *py.Object) Float {
	return Float{newObject(obj)}
}

func MakeFloat(f float64) Float {
	return newFloat(py.FloatFromDouble(f))
}

func (f Float) Float64() float64 {
	return py.FloatAsDouble(f.obj)
}

func (f Float) IsInteger() Bool {
	fn := Cast[Func](f.GetAttr("is_integer"))
	return Cast[Bool](fn.callNoArgs())
}
