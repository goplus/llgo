package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func callback(f func()) {
	f()
}

func main() {
	callback(func() {
		c.Printf(c.Str("Hello, callback\n"))
	})
}
