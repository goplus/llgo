package main

import (
	"github.com/goplus/llgo/c"
)

func callback(msg *c.Char, f func(*c.Char)) {
	f(msg)
}

func print(msg *c.Char) {
	c.Printf(msg)
}

func main() {
	callback(c.Str("Hello\n"), print)
	callback(c.Str("callback\n"), print)
}
