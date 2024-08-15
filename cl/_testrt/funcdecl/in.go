package main

import (
	"unsafe"
)

func main() {
	println("hello")
	check(demo)
}

func check(fn func()) {
	var a any = demo
	var b any = fn
	fn1 := a.(func())
	fn2 := b.(func())
	println(a, b, fn, fn1, fn2, demo)
	println(closurePtr(a) == closurePtr(b))
}

func closurePtr(a any) unsafe.Pointer {
	return (*rtype)(unsafe.Pointer(&a)).ptr.fn
}

type rtype struct {
	typ unsafe.Pointer
	ptr *struct {
		fn  unsafe.Pointer
		env unsafe.Pointer
	}
}

func demo() {
	println("demo")
}
