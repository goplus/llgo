package main

import (
	"github.com/goplus/lib/c"
	"github.com/goplus/lib/cpp/std"
)

func main() {
	s := std.Str("Hello world\n")
	c.Printf(s.CStr())
	print(s.Str(), s.Size(), "\n")
}
