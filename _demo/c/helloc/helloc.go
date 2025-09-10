package main

import (
	"unsafe"

	"github.com/goplus/lib/c"
)

func main() {
	c.Printf(c.Str("Hello world by c.Printf\n"))
	c.Printf(c.Str("%ld\n"), unsafe.Sizeof(int(0)))
	c.Printf(c.Str("%ld\n"), unsafe.Sizeof(uintptr(0)))
	// var v any = int(0)
	// c.Printf(c.Str("%ld\n"), unsafe.Sizeof(v))
}
