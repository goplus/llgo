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

func demo(a array) c.Int {
	c.Printf(c.Str("go.demo %d %d %d %d\n"), a.x, a.y, a.z, a.k)
	return a.x + a.y + a.z + a.k
}

var (
	typeInt32   = &ffi.Type{4, 4, ffi.Sint32, nil}
	typePointer = &ffi.Type{unsafe.Sizeof(0), uint16(unsafe.Alignof(0)), ffi.Pointer, nil}
)

func main() {
	gofn()
	c.Printf(c.Str("\n"))
	goclosure()
}

func gofn() {
	var cif ffi.Cif
	status := ffi.PrepCif(&cif, ffi.DefaultAbi, 1, typeInt32, &[]*ffi.Type{typePointer}[0])
	if status != ffi.OK {
		panic(status)
	}
	var fncode unsafe.Pointer
	closure := ffi.ClosureAlloc(&fncode)
	defer ffi.ClosureFree(closure)
	status = ffi.PreClosureLoc(closure, &cif, func(cif *ffi.Cif, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
		ar := *(*array)(ffi.Index(args, 0))
		*(*c.Int)(ret) = demo(ar)
	}, nil, fncode)
	if status != ffi.OK {
		panic(status)
	}
	var ret int32
	ffi.Call(&cif, c.Func(demo2), unsafe.Pointer(&ret), &[]unsafe.Pointer{unsafe.Pointer(&fncode)}[0])
	c.Printf(c.Str("ret: %d\n"), ret)
}

func goclosure() {
	var cif ffi.Cif
	status := ffi.PrepCif(&cif, ffi.DefaultAbi, 1, typeInt32, &[]*ffi.Type{typePointer}[0])
	if status != ffi.OK {
		panic(status)
	}
	fn := func(ar array) c.Int {
		c.Printf(c.Str("call closure %d\n"), cif.NArgs)
		return demo(ar)
	}
	var fncode unsafe.Pointer
	closure := ffi.ClosureAlloc(&fncode)
	defer ffi.ClosureFree(closure)
	status = ffi.PreClosureLoc(closure, &cif, func(cif *ffi.Cif, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
		ar := *(*array)(ffi.Index(args, 0))
		fn := *(*func(array) c.Int)(userdata)
		*(*c.Int)(ret) = fn(ar)
	}, unsafe.Pointer(&fn), fncode)
	if status != ffi.OK {
		panic(status)
	}
	var ret int32
	ffi.Call(&cif, c.Func(demo2), unsafe.Pointer(&ret), &[]unsafe.Pointer{unsafe.Pointer(&fncode)}[0])
	c.Printf(c.Str("ret: %d\n"), ret)
}
