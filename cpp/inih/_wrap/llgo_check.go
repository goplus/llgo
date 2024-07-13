package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/cpp/inih"
)

const (
	LLGoCFlags = "$(pkg-config --cflags INIReader)"
)

func main() {
	c.Printf(c.Str("sizeof(Reader) = %lu\n"), unsafe.Sizeof(inih.Reader{}))
}
