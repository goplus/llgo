package main

import (
	"unsafe"
)

func main() {
	var s *int
	var lens uint32
	sl := unsafe.Slice(s, lens)
	slen := len(sl)
	println(slen)
	if slen > 0 {
		println("len > 0")
	}
}
