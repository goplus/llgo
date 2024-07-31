package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/openssl"
)

func newInt(n openssl.BN_ULONG) *openssl.BIGNUM {
	ret := openssl.BNNew()
	ret.SetWord(n)
	return ret
}

func main() {
	ctx := openssl.BN_CTXNew()
	defer ctx.Free()

	// Initialize two big ints with the first two numbers in the sequence.
	a := newInt(0)
	b := newInt(1)
	defer a.Free()
	defer b.Free()

	// Initialize limit as 10^99, the smallest integer with 100 digits.
	v10, v99 := newInt(10), newInt(99)
	defer v10.Free()
	defer v99.Free()

	limit := openssl.BNNew()
	defer limit.Free()

	limit.Exp(v10, v99, ctx)

	// Loop while a is smaller than 1e100.
	for a.Cmp(limit) < 0 {
		// Compute the next Fibonacci number, storing it in a.
		a.Add(a, b)
		// Swap a and b so that b is the next number in the sequence.
		a, b = b, a
	}
	cstr := a.CStr()
	c.Printf(c.Str("%s\n"), cstr) // 100-digit Fibonacci number
	openssl.FreeCStr(cstr)
}
