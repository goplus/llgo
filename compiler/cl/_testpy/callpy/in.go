package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/math"
	"github.com/goplus/llgo/py/os"
	"github.com/goplus/llgo/py/std"
)

func main() {
	x := math.Sqrt(py.Float(2))
	wd := os.Getcwd()
	c.Printf(c.Str("sqrt(2) = %f\n"), x.Float64())
	std.Print(py.Str("cwd ="), wd)
}
