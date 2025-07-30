package main

import (
	"unsafe"

	"github.com/goplus/lib/py"
	"github.com/goplus/lib/py/math"
	"github.com/goplus/lib/py/std"
)

func main() {
	v := 100
	x := py.List(true, false, 1, float32(2.1), 3.1, uint(4), 1+2i, complex64(3+4i),
		"hello", []byte("world"), [...]byte{1, 2, 3}, [...]byte{}, &v, unsafe.Pointer(&v))
	y := py.List(std.Abs, std.Print, math.Pi)
	std.Print(x, y)
}
