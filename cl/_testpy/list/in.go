package main

import (
	"github.com/goplus/lib/py"
	"github.com/goplus/lib/py/math"
	"github.com/goplus/lib/py/std"
)

func main() {
	x := py.List(true, false, 1, float32(2.1), 3.1, uint(4), 1+2i, complex64(3+4i), "hello", []byte("world"))
	y := py.List(std.Abs, std.Print, math.Pi)
	std.Print(x, y)
}
