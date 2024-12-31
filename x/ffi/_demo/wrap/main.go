package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/ffi"
)

const (
	LLGoPackage = "link"
	LLGoFiles   = "../_wrap/wrap.c"
)

//go:linkname demo2wrap C.demo2
func demo2wrap(fn unsafe.Pointer) c.Int

//go:linkname demo3wrap C.demo3
func demo3wrap(fn unsafe.Pointer) c.Int

//llgo:type C
type array struct {
	x c.Int
	y c.Int
	z c.Int
	k c.Int
}

func callback2(a array) c.Int {
	c.Printf(c.Str("go.callback2 %d %d %d %d\n"), a.x, a.y, a.z, a.k)
	return a.x + a.y + a.z + a.k
}

func callback3(a array, r *c.Int) {
	c.Printf(c.Str("go.callback3 %d %d %d %d\n"), a.x, a.y, a.z, a.k)
	*r = a.x + a.y + a.z + a.k
}

func main() {
	wrap()
	c.Printf(c.Str("\n"))
	wrapNoRet()
}

func wrap() {
	fn := ffi.WrapFunc(callback2, func(a *array, r *c.Int) {
		*r = callback2(*a)
	})
	ret := demo2wrap(fn)
	c.Printf(c.Str("ret: %d\n"), ret)
}

func wrapNoRet() {
	fn := ffi.WrapFunc(callback3, func(a *array, r **c.Int) {
		callback3(*a, *r)
	})
	ret := demo3wrap(fn)
	c.Printf(c.Str("ret: %d\n"), ret)
}
