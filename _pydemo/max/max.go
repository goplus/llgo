package main

import (
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/std"
)

func main() {
	x := std.Max(py.Float(3.0), py.Float(9.0), py.Float(23.0), py.Float(100.0))
	std.Print(x)

	// y := py.List(3.0, 9.0, 23.0, 100.0)
	// ymax := std.Max(std.Iter(y))
	// std.Print(ymax)
}
