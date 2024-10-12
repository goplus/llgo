package math

import (
	math "github.com/goplus/llgo/py/math"
	"github.com/goplus/llgo/x/python"
)

func Sqrt(x python.Float) python.Float {
	return python.FromPy(math.Sqrt(x.Obj())).AsFloat()
}
