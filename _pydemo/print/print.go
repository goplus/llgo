package main

import (
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/std"
)

func main() {
	x := py.Float(3.14)
	std.Print(x)
}
