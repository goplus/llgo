package python

import "github.com/goplus/llgo/py"

type Bool struct {
	Object
}

func NewBool(obj *py.Object) Bool {
	return Bool{NewObject(obj)}
}

func True() Bool {
	return NewBool(py.True())
}

func False() Bool {
	return NewBool(py.False())
}

func (b Bool) Bool() bool {
	return b.obj.IsTrue() != 0
}
