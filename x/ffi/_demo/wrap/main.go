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

//go:linkname demo4call C.demo4
func demo4call(fn unsafe.Pointer) c.Int

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
	c.Printf(c.Str("\n"))
	call()
}

func wrap() {
	fn := ffi.WrapFunc(callback2, func(ret unsafe.Pointer, args []unsafe.Pointer) {
		*(*c.Int)(ret) = callback2(*(*array)(args[0]))
	})
	ret := demo2wrap(fn)
	c.Printf(c.Str("ret: %d\n"), ret)
}

func wrapNoRet() {
	fn := ffi.WrapFunc(callback3, func(ret unsafe.Pointer, args []unsafe.Pointer) {
		callback3(*(*array)(args[0]), *(**c.Int)(args[1]))
	})
	ret := demo3wrap(fn)
	c.Printf(c.Str("ret: %d\n"), ret)
}

func call() {
	var n c.Int = 1
	fn := ffi.MakeFunc(func(a *array) c.Int {
		c.Printf(c.Str("go.closure %d %d %d %d\n"), a.x, a.y, a.z, a.k)
		return a.x + a.y + a.z + a.k + n
	})
	ret := demo4call(fn)
	c.Printf(c.Str("ret: %d\n"), ret)
}
