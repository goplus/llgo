package math

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const (
	LLGoPackage = "py.math"
)

//go:linkname Sqrt py.sqrt
func Sqrt(x *py.Object) *py.Object
