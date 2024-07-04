package main

import (
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/numpy"
	"github.com/goplus/llgo/py/std"
)

func main() {
	a := py.List(
		py.List(1.0, 2.0, 3.0),
		py.List(4.0, 5.0, 6.0),
		py.List(7.0, 8.0, 9.0),
	)
	b := py.List(
		py.List(9.0, 8.0, 7.0),
		py.List(6.0, 5.0, 4.0),
		py.List(3.0, 2.0, 1.0),
	)
	x := numpy.Add(a, b)
	std.Print(py.Str("a+b ="), x)
}
