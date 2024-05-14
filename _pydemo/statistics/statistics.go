package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/statistics"
)

func main() {
	list := py.NewList(5)
	list.ListSetItem(0, py.Float(1.0))
	list.ListSetItem(1, py.Float(2.0))
	list.ListSetItem(2, py.Float(3.0))
	list.ListSetItem(3, py.Float(4.0))
	list.ListSetItem(4, py.Float(4.0))
	mean := statistics.Mean(list)
	c.Printf(c.Str("mean(1, 2, 3, 4, 4) = %f\n"), mean.Float64())
}
