package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/ffi"
)

var (
	typeInt32   = &ffi.Type{4, 4, ffi.Sint32, nil}
	typePointer = &ffi.Type{unsafe.Sizeof(0), uint16(unsafe.Alignof(0)), ffi.Pointer, nil}
)

func main() {
	var cif ffi.Cif
	status := ffi.PrepCifVar(&cif, ffi.DefaultAbi, 1, 2, typeInt32, &[]*ffi.Type{typePointer, typeInt32}[0])
	if status != ffi.OK {
		panic(status)
	}
	var ret int32
	text := c.Str("hello world: %d\n")
	var n int32 = 100
	ffi.Call(&cif, c.Func(c.Printf), unsafe.Pointer(&ret), &[]unsafe.Pointer{unsafe.Pointer(&text), unsafe.Pointer(&n)}[0])
	c.Printf(c.Str("ret: %d\n"), ret)
}
