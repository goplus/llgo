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

func demo(a array) c.Int {
	c.Printf(c.Str("go.demo %d %d %d %d\n"), a.x, a.y, a.z, a.k)
	return a.x + a.y + a.z + a.k
}

func main() {
	gofn()
	c.Printf(c.Str("\n"))
	goclosure()
}

func gofn() {
	sig, err := ffi.NewSignature(ffi.TypeInt32, ffi.TypePointer)
	if err != nil {
		panic(err)
	}
	closure := ffi.NewClosure()
	defer closure.Free()
	err = closure.Bind(sig, func(cif *ffi.Signature, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
		ar := *(*array)(ffi.Index(args, 0))
		*(*c.Int)(ret) = demo(ar)
	}, nil)
	var ret int32
	ffi.Call(sig, c.Func(demo2), unsafe.Pointer(&ret), unsafe.Pointer(&closure.Fn))
	c.Printf(c.Str("ret: %d\n"), ret)
}

func goclosure() {
	sig, err := ffi.NewSignature(ffi.TypeInt32, ffi.TypePointer)
	if err != nil {
		panic(err)
	}
	fn := func(ar array) c.Int {
		c.Printf(c.Str("call closure %d\n"), sig.NArgs)
		return demo(ar)
	}
	closure := ffi.NewClosure()
	defer closure.Free()
	err = closure.Bind(sig, func(cif *ffi.Signature, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
		ar := *(*array)(ffi.Index(args, 0))
		fn := *(*func(array) c.Int)(userdata)
		*(*c.Int)(ret) = fn(ar)
	}, unsafe.Pointer(&fn))
	var ret int32
	ffi.Call(sig, c.Func(demo2), unsafe.Pointer(&ret), unsafe.Pointer(&closure.Fn))
	c.Printf(c.Str("ret: %d\n"), ret)
}
