package main

import (
	"unsafe"
)

//llgo:type C
type T func()

type M struct {
	v  int
	fn T
}

type N struct {
	v  int
	fn func()
}

func main() {
	if unsafe.Sizeof(*(*T)(nil)) != unsafe.Sizeof(0) {
		panic("error")
	}
	if unsafe.Sizeof(*(*M)(nil)) != unsafe.Sizeof([2]int{}) {
		panic("error")
	}
	if unsafe.Sizeof(*(*N)(nil)) != unsafe.Sizeof([3]int{}) {
		panic("error")
	}
}
