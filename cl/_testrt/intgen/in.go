package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func genInts(n int, gen func() c.Int) []c.Int {
	a := make([]c.Int, n)
	for i := range a {
		a[i] = gen()
	}
	return a
}

func main() {
	initVal := c.Int(1)
	a := genInts(5, c.Rand)
	for _, v := range a {
		c.Printf(c.Str("%d\n"), v)
	}
	b := genInts(5, func() c.Int {
		initVal *= 2
		return initVal
	})
	for _, v := range b {
		c.Printf(c.Str("%d\n"), v)
	}
}
