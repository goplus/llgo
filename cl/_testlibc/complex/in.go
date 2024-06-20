package main

import (
	"github.com/goplus/llgo/c/math/cmplx"
)

func f(c, z complex64) {
	println("abs(3+4i):", cmplx.Absf(c))
	println("real(3+4i):", real(z))
	println("imag(3+4i):", imag(z))
}

func main() {
	re := float32(3.0)
	im := float32(4.0)
	z := complex64(3 + 4i)
	c := complex(re, im)
	f(c, z)
}
