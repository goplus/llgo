package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/ffi"
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

var (
	typeInt32   = &ffi.Type{4, 4, ffi.Sint32, nil}
	typePointer = &ffi.Type{unsafe.Sizeof(0), uint16(unsafe.Alignof(0)), ffi.Pointer, nil}
)

func main() {
	cdemo1()
	cdemo2()
}

func cdemo1() {
	var cif ffi.Cif
	tarray := &ffi.Type{0, 0, ffi.Struct, &[]*ffi.Type{typeInt32, typeInt32, typeInt32, typeInt32, nil}[0]}
	status := ffi.PrepCif(&cif, ffi.DefaultAbi, 1, typeInt32, &[]*ffi.Type{tarray}[0])
	if status != ffi.OK {
		panic(status)
	}
	ar := array{1, 2, 3, 4}
	var ret int32
	ffi.Call(&cif, c.Func(demo1), unsafe.Pointer(&ret), &[]unsafe.Pointer{unsafe.Pointer(&ar)}[0])
	c.Printf(c.Str("ret: %d\n"), ret)
}

func cdemo2() {
	var cif ffi.Cif
	status := ffi.PrepCif(&cif, ffi.DefaultAbi, 1, typeInt32, &[]*ffi.Type{typePointer}[0])
	if status != ffi.OK {
		panic(status)
	}
	var ret int32
	fn := c.Func(demo1)
	ffi.Call(&cif, c.Func(demo2), unsafe.Pointer(&ret), &[]unsafe.Pointer{unsafe.Pointer(&fn)}[0])
	c.Printf(c.Str("ret: %d\n"), ret)
}
