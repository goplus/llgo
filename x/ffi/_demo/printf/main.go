package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/ffi"
)

func main() {
	sig, err := ffi.NewSignatureVar(ffi.TypeInt32, 1, ffi.TypePointer, ffi.TypeInt32)
	if err != nil {
		panic(err)
	}
	var ret int32
	text := c.Str("hello world: %d\n")
	var n int32 = 100
	ffi.Call(sig, c.Func(c.Printf), unsafe.Pointer(&ret), unsafe.Pointer(&text), unsafe.Pointer(&n))
	c.Printf(c.Str("ret: %d\n"), ret)
}
