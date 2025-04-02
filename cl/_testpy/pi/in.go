package main

import (
	"github.com/goplus/lib/c"
	"github.com/goplus/lib/py/math"
)

func main() {
	c.Printf(c.Str("pi = %f\n"), math.Pi.Float64())
}
