package main

import "github.com/goplus/llgo/c"

func f(a c.Uint) c.Uint {
	a++
	return a
}

func main() {
	var a c.Uint = 100
	c.Printf(c.Str("Hello, %u\n"), f(a))
}
