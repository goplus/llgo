package main

import (
	"github.com/goplus/llgo/internal/runtime/c"
)

func concat(args ...string) (ret string) {
	for _, v := range args {
		ret += v
	}
	return
}

func main() {
	result := concat("Hello", " ", "World")
	c.Fprintf(c.Stderr, c.Str("Hello %s\n"), c.AllocaCStr(result))
}
