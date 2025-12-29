package main

import (
	"bytes"
	"fmt"
	"sync/atomic"
	"unsafe"
)

func main() {
	testGeneric()
	testNamed1()
	testNamed2()
	testNamed3()
	testAnonymous1()
	testAnonymous2()
	testAnonymous3()
	testAnonymous4()
	testAnonymous5()
	testAnonymous6()
	testAnonymous7()
	testAnonymous8()
	testAnonymousBuffer()
}

func testNamed1() {
	var a I = &T{100}
	if a.Demo1() != 100 {
		panic("testNamed1 error")
	}
}

func testNamed2() {
	var a I = T{100}
	if a.Demo1() != 100 {
		panic("testNamed2 error")
	}
}

func testNamed3() {
	var a I2 = &T{100}
	if a.Demo2() != 100 {
		panic("testNamed4 error")
	}
}

type Pointer[T any] struct {
	// Mention *T in a field to disallow conversion between Pointer types.
	// See go.dev/issue/56603 for more details.
	// Use *T, not T, to avoid spurious recursive type definition errors.
	_ [0]*T
	v unsafe.Pointer
}

// Load atomically loads and returns the value stored in x.
func (x *Pointer[T]) Load() *T { return (*T)(atomic.LoadPointer(&x.v)) }

// Store atomically stores val into x.
func (x *Pointer[T]) Store(val *T) { atomic.StorePointer(&x.v, unsafe.Pointer(val)) }

type IP interface {
	Store(*any)
	Load() *any
}

func testGeneric() {
	var p IP = &Pointer[any]{}
	p.Store(func() *any {
		var a any = 100
		return &a
	}())
	if (*p.Load()).(int) != 100 {
		panic("testGeneric error")
	}
}

func testAnonymous1() {
	var s I = &struct {
		m int
		*T
	}{10, &T{100}}
	if s.Demo1() != 100 {
		panic("testAnonymous1 error")
	}
}

func testAnonymous2() {
	var s I = struct {
		m int
		*T
	}{10, &T{100}}
	if s.Demo1() != 100 {
		panic("testAnonymous2 error")
	}
}

func testAnonymous3() {
	var s I = struct {
		m int
		T
	}{10, T{100}}
	if s.Demo1() != 100 {
		panic("testAnonymous3 error")
	}
}

func testAnonymous4() {
	var s I = &struct {
		m int
		T
	}{10, T{100}}
	if s.Demo1() != 100 {
		panic("testAnonymous4 error")
	}
}

func testAnonymous5() {
	var s I2 = &struct {
		m int
		T
	}{10, T{100}}
	if s.Demo2() != 100 {
		panic("testAnonymous5 error")
	}
}

func testAnonymous6() {
	var s I2 = struct {
		m int
		*T
	}{10, &T{100}}
	if s.Demo2() != 100 {
		panic("testAnonymous6 error")
	}
}

func testAnonymous7() {
	var s interface {
		Demo1() int
		Demo2() int
	} = struct {
		m int
		*T
	}{10, &T{100}}
	if s.Demo1() != 100 {
		panic("testAnonymous7 error")
	}
	if s.Demo2() != 100 {
		panic("testAnonymous7 error")
	}
}

func testAnonymous8() {
	var s interface {
		Demo1() int
		Demo2() int
		demo3() int
	} = struct {
		m int
		*T
	}{10, &T{100}}
	if s.Demo1() != 100 {
		panic("testAnonymous8 error")
	}
	if s.Demo2() != 100 {
		panic("testAnonymous8 error")
	}
	if s.demo3() != 100 {
		panic("testAnonymous8 error")
	}
}

func testAnonymousBuffer() {
	var s fmt.Stringer = &struct {
		m int
		*bytes.Buffer
	}{10, bytes.NewBufferString("hello")}
	if s.String() != "hello" {
		panic("testAnonymousBuffer error")
	}
}

type T struct {
	n int
}

func (t T) Demo1() int {
	return t.n
}

func (t *T) Demo2() int {
	return t.n
}

func (t *T) demo3() int {
	return t.n
}

type I interface {
	Demo1() int
}

type I2 interface {
	Demo2() int
}
