package main

import (
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/math"
	"github.com/goplus/llgo/py/std"
)

func main() {
	x := math.Sqrt(py.Float(2))       // x = sqrt(2)
	std.Print(py.Str("sqrt(2) ="), x) // print("sqrt(2) =", x)
}
