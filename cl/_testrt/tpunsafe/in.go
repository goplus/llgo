package main

import (
	"unsafe"
)

type N[T any] struct {
	n1 T
	n2 T
}

type M[T any] struct {
	m0 T
	m1 int32
	m2 N[T]
}

func (m *M[T]) check(align, offset1, offset2 uintptr) {
	if v := unsafe.Alignof(m.m2); v != align {
		println("have", v, "want", align)
		panic("unsafe.Alignof error")
	}
	if v := unsafe.Offsetof(m.m2); v != offset1 {
		println("have", v, "want", offset1)
		panic("unsafe.Offsetof error")
	}
	if v := unsafe.Offsetof(m.m2.n2); v != offset2 {
		println("have", v, "want", offset2)
		panic("unsafe.Offsetof error")
	}
}

func main() {
	m1 := M[bool]{}
	m1.check(1, 8, 1)
	m2 := M[int64]{}
	m2.check(8, 16, 8)
}
