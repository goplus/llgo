package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/cpp/std"
)

func main() {
	s := std.Str("Hello world\n")
	c.Printf(s.CStr())
	print(s.Str(), s.Size(), "\n")
}
