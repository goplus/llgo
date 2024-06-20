package main

import (
	"math/cmplx"
)

func f(c, z complex128) {
	println("abs(3+4i):", cmplx.Abs(c))
	println("real(3+4i):", real(z))
	println("imag(3+4i):", imag(z))
}

func main() {
	re := 3.0
	im := 4.0
	z := 3 + 4i
	c := complex(re, im)
	f(c, z)
}
