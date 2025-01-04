package main

import (
	"unsafe"
)

type Func func(*int)

//llgo:type C
type CFunc func(*int)

//llgo:type C
type Callback[T any] func(*T)

func main() {
	var fn1 Func = func(v *int) {
		println(*v)
	}
	var fn2 CFunc = func(v *int) {
		println(*v)
	}
	var fn3 Callback[int] = func(v *int) {
		println(*v)
	}
	println(unsafe.Sizeof(fn1), unsafe.Sizeof(fn2), unsafe.Sizeof(fn3))
}
