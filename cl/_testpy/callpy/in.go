package main

import (
	"github.com/goplus/lib/c"
	"github.com/goplus/lib/py"
	"github.com/goplus/lib/py/math"
	"github.com/goplus/lib/py/os"
)

func main() {
	x := math.Sqrt(py.Float(2))
	wd := os.Getcwd()
	c.Printf(c.Str("sqrt(2) = %.6f\n"), x.Float64())
	c.Printf(c.Str("cwd ok = %d\n"), int(wd.IsTrue()))
}
