package main

import (
	"github.com/goplus/llgo/_demo/cpp_fmt/foo"
	"github.com/goplus/llgo/c"
)

func main() {
	foo.F(c.Str("Hello, world!"))
}
