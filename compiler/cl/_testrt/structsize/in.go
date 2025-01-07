package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

type Foo struct {
	A byte
	B uint8
	C uint16
	D byte
	E [8]int8
}

func main() {
	c.Printf(c.Str("%d"), unsafe.Sizeof(Foo{}))
}
