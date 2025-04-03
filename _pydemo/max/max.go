package main

import (
	"github.com/goplus/lib/py"
	"github.com/goplus/lib/py/std"
)

func main() {
	x := std.Max(py.Float(3.0), py.Float(9.0), py.Float(23.0), py.Float(100.0))
	std.Print(x)

	list := py.List(3.0, 9.0, 23.0, 100.0)
	y := std.Max(std.Iter(list))
	std.Print(y)
}
