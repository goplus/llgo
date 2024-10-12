package python

import "github.com/goplus/llgo/py"

type Bool struct {
	Object
}

func newBool(obj *py.Object) Bool {
	return Bool{newObject(obj)}
}

func MakeBool(b bool) Bool {
	if b {
		return True()
	}
	return False()
}

func True() Bool {
	return newBool(py.True())
}

func False() Bool {
	return newBool(py.False())
}

func (b Bool) Bool() bool {
	return b.obj.IsTrue() != 0
}
