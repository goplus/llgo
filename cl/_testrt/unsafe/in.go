package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

//llgo:type C
type T func()

type M struct {
	fn T
	v  int
}

type N struct {
	fn func()
	v  int
}

func main() {
	if unsafe.Sizeof(*(*T)(nil)) != unsafe.Sizeof(0) {
		panic("error")
	}
	if unsafe.Sizeof(*(*M)(nil)) != unsafe.Sizeof([2]int{}) {
		panic("error")
	}
	// TODO(lijie): inconsistent with golang
	if unsafe.Sizeof(*(*N)(nil)) != unsafe.Sizeof([3]int{}) {
		panic("error")
	}

	if unsafe.Alignof(*(*T)(nil)) != unsafe.Alignof(0) {
		panic("error")
	}
	if unsafe.Alignof(*(*M)(nil)) != unsafe.Alignof([2]int{}) {
		panic("error")
	}
	if unsafe.Alignof(*(*N)(nil)) != unsafe.Alignof([3]int{}) {
		panic("error")
	}

	if unsafe.Offsetof(M{}.fn) != 0 {
		panic("error")
	}
	if unsafe.Offsetof(M{}.v) != unsafe.Sizeof(int(0)) {
		panic("error")
	}
	if unsafe.Offsetof(N{}.fn) != 0 {
		panic("error")
	}
	// TODO(lijie): inconsistent with golang
	if unsafe.Offsetof(N{}.v) != unsafe.Sizeof([2]int{}) {
		panic("error")
	}

	s := unsafe.String((*byte)(unsafe.Pointer(c.Str("abc"))), 3)
	if s != "abc" {
		panic("error")
	}

	p := unsafe.StringData(s)
	arr := (*[3]byte)(unsafe.Pointer(p))
	if arr[0] != 'a' || arr[1] != 'b' || arr[2] != 'c' {
		panic("error")
	}

	intArr := [2]int{1, 2}
	pi := &intArr[0]
	intSlice := unsafe.Slice(pi, 2)
	if intSlice[0] != 1 || intSlice[1] != 2 {
		panic("error")
	}

	pi = unsafe.SliceData(intSlice)
	if *pi != 1 {
		panic("error")
	}

	if uintptr(unsafe.Add(unsafe.Pointer(nil), 1)) != 1 {
		panic("error")
	}

}
