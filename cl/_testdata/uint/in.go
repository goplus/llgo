package main

import "github.com/goplus/lib/c"

func f(a c.Uint) c.Uint {
	a++
	return a
}

func main() {
	var a c.Uint = 100
	c.Printf(c.Str("Hello, %u\n"), f(a))
}
