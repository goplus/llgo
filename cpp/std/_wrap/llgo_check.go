package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/cpp/std"
)

func main() {
	c.Printf(c.Str("sizeof(std::string) = %lu\n"), unsafe.Sizeof(std.String{}))
}
