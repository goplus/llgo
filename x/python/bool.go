package python

import "github.com/goplus/llgo/x/python/py"

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

var trueObj Object
var falseObj Object

func True() Bool {
	if trueObj.Nil() {
		trueObj = MainModule().Dict().GetString("True")
	}
	return trueObj.AsBool()
}

func False() Bool {
	if falseObj.Nil() {
		falseObj = MainModule().Dict().GetString("False")
	}
	return falseObj.AsBool()
}

func (b Bool) Bool() bool {
	return py.ObjectIsTrue(b.obj) != 0
}
