package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func main() {
	fn1 := func(n1, n2 int) {
		c.Printf(c.Str("%d %d\n"), n1, n2)
	}
	fn2 := func() {
		fn1(100, 200)
	}
	fn2()
}
