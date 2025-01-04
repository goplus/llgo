package main

import (
	"unsafe"
)

func main() {
	a := unsafe.Pointer(uintptr(100))
	println(a)
}
