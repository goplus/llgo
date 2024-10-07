package math

import (
	math "github.com/goplus/llgo/py/math"
	"github.com/goplus/llgo/x/python"
)

func Sqrt(x python.PyFloat) python.PyFloat {
	return python.NewFloat(math.Sqrt(x.Obj()))
}
