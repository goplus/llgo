package main

import (
	"math/cmplx"
)

func main() {
	re := 3.0
	im := 4.0
	c := complex(re, im)
	println("abs(3+4i):", cmplx.Abs(c))
}
