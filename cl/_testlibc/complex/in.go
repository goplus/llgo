package main

import (
	"github.com/goplus/llgo/c/math/cmplx"
)

func main() {
	re := float32(3.0)
	im := float32(4.0)
	c := complex(re, im)
	println("abs(3+4i):", cmplx.Absf(c))
}
