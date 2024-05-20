package main

import (
	"unsafe"
)

var a int64 = 1<<63 - 1
var b int64 = -1 << 63
var n uint64 = 1<<64 - 1

func main() {
	var s = []int{1, 2, 3, 4}
	var a = [...]int{1, 2, 3, 4}
	d := make([]byte, 4, 10)
	println(s, len(s), cap(s))
	println(d, len(d), cap(d))
	println(len(a), cap(a), cap(&a), len(&a))
	println(len([]int{1, 2, 3, 4}), len([4]int{1, 2, 3, 4}))
	println(len(s[1:]), cap(s[1:]), len(s[1:2]), cap(s[1:2]), len(s[1:2:2]), cap(s[1:2:2]))
	println(len(a[1:]), cap(a[1:]), len(a[1:2]), cap(a[1:2]), len(a[1:2:2]), cap(a[1:2:2]))

	println("hello", "hello"[1:], "hello"[1:2], len("hello"[5:]))
	println(append(s, 5, 6, 7, 8))
	data := []byte{'a', 'b', 'c'}
	data = append(data, "def"...)
	println(data)
	var i any = 100
	println(true, 0, 100, -100, uint(255), int32(-100), 0.0, 100.5, i, &i, uintptr(unsafe.Pointer(&i)))
	var dst [3]byte
	n := copy(dst[:], data)
	println(n, dst[0], dst[1], dst[2])
	n = copy(dst[1:], "ABCD")
	println(n, dst[0], dst[1], dst[2])

	fn1 := demo
	fn2 := func() {
		println("fn")
	}
	fn3 := func() {
		println(n)
	}
	println(demo, fn1, fn2, fn3)
}

func demo() {
}
