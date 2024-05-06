package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func main() {
	func(n1, n2 int) {
		c.Printf(c.Str("%d %d\n"), n1, n2)
	}(100, 200)

	fn := func(n1, n2 int) {
		c.Printf(c.Str("%d %d\n"), n1, n2)
	}
	fn(100, 200)
}
