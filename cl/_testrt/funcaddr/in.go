package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

//llgo:type C
type Add func(int, int) int

func add(a, b int) int {
	return a + b
}

func main() {
	var fn Add = add
	var myfn Add = func(a, b int) int {
		return a + b
	}
	println(c.Func(add) == c.Func(fn))
	println(c.Func(fn) == *(*unsafe.Pointer)(unsafe.Pointer(&fn)))
	println(c.Func(myfn) == *(*unsafe.Pointer)(unsafe.Pointer(&myfn)))
}
