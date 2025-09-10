package main

import (
	"github.com/goplus/lib/py"
	"github.com/goplus/lib/py/std"
	"github.com/goplus/lib/py/torch"
)

func main() {
	data := py.List(
		py.List(1.0, 2.0),
		py.List(3.0, 4.0),
	)
	x := torch.Tensor(data)
	std.Print(x)
}
