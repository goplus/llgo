package main

import (
	"github.com/goplus/llgo/c"
)

func main() {
	func(n1, n2 int) {
		c.Printf(c.Str("%d %d\n"), n1, n2)
	}(100, 200)
	fn1 := func(n1, n2 int) {
		c.Printf(c.Str("%d %d\n"), n1, n2)
	}
	fn2 := func() {
		fn1(100, 200)
	}
	fn2()
}
