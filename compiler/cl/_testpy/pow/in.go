package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/math"
)

func main() {
	x := math.Pow(py.Float(2), py.Float(3))
	c.Printf(c.Str("pow(2, 3) = %f\n"), x.Float64())
}
