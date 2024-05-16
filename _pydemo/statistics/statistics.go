package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/statistics"
)

func main() {
	list := py.List(1.0, 2.0, 3.0, 4.0, 4.0)
	mean := statistics.Mean(list)
	c.Printf(c.Str("mean(1, 2, 3, 4, 4) = %f\n"), mean.Float64())
}
