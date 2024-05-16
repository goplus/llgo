package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py/math"
)

func main() {
	c.Printf(c.Str("pi = %f\n"), math.Pi.Float64())
}
