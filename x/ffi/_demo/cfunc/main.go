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

//llgo:type C
type Callback func(array) c.Int

//go:linkname demo1 C.demo1
func demo1(array) c.Int

//go:linkname demo2 C.demo2
func demo2(fn Callback) c.Int

//llgo:type C
type array struct {
	x c.Int
	y c.Int
	z c.Int
	k c.Int
}

func main() {
	cdemo1()
	cdemo2()
}

func cdemo1() {
	sig, err := ffi.NewSignature(ffi.TypeInt32, ffi.StructOf(ffi.TypeInt32, ffi.TypeInt32, ffi.TypeInt32, ffi.TypeInt32))
	if err != nil {
		panic(err)
	}
	ar := array{1, 2, 3, 4}
	var ret int32
	ffi.Call(sig, c.Func(demo1), unsafe.Pointer(&ret), unsafe.Pointer(&ar))
	c.Printf(c.Str("ret: %d\n"), ret)
}

func cdemo2() {
	sig, err := ffi.NewSignature(ffi.TypeInt32, ffi.TypePointer)
	if err != nil {
		panic(err)
	}
	var ret int32
	fn := c.Func(demo1)
	ffi.Call(sig, c.Func(demo2), unsafe.Pointer(&ret), unsafe.Pointer(&fn))
	c.Printf(c.Str("ret: %d\n"), ret)
}
