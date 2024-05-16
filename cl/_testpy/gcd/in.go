package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/math"
)

func main() {
	x := math.Gcd(py.Long(60), py.Long(20), py.Long(25))
	c.Printf(c.Str("gcd(60, 20, 25) = %d\n"), x.Long())
}
