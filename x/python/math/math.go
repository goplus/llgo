package math

import (
	"github.com/goplus/llgo/x/python"
)

var math_ python.Module

func math() python.Module {
	if math_.Nil() {
		math_ = python.ImportModule("math")
	}
	return math_
}

func Sqrt(x python.Float) python.Float {
	return math().CallMethod("sqrt", x.Obj()).AsFloat()
}
