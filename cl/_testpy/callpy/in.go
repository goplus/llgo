package main

import (
	"github.com/goplus/lib/c"
	"github.com/goplus/lib/py"
	"github.com/goplus/lib/py/math"
	"github.com/goplus/lib/py/os"
	"github.com/goplus/lib/py/std"
)

func main() {
	x := math.Sqrt(py.Float(2))
	wd := os.Getcwd()
	c.Printf(c.Str("sqrt(2) = %f\n"), x.Float64())
	std.Print(py.Str("cwd ="), wd)
}
