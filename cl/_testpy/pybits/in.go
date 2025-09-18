package main

import (
	"github.com/goplus/llgo/cl/_testpy/pybits/bits"
)

func main() {
	v := bits.NewBits(100)
	println(v.Long())
	println(v.BitLength().Long())
}
