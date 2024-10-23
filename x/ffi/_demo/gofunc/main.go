package main

import (
	"unsafe"

	"github.com/goplus/llgo/x/ffi"
)

type array struct {
	x int
	y int
	z int
	k int
}

type Func func(ar array, i interface{}, s string, slice []int) (int, float64)

func demo(p1 array, p2 interface{}, p3 string, p4 []int) (int, float64) {
	println(p1.x, p1.y, p1.z, p1.k)
	println(p2)
	println(p3)
	println(p4)
	for _, v := range p4 {
		println(v)
	}
	return 200, 3.14
}

func main() {
	sig, err := ffi.NewSignature(ffi.StructOf(ffi.TypeInt, ffi.TypeFloat64),
		ffi.StructOf(ffi.TypeInt, ffi.TypeInt, ffi.TypeInt, ffi.TypeInt),
		ffi.TypeInterface, ffi.TypeString, ffi.TypeSlice)
	if err != nil {
		panic(err)
	}
	fn := demo
	closure := ffi.NewClosure()
	defer closure.Free()
	err = closure.Bind(sig, func(cif *ffi.Signature, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer) {
		p1 := *(*array)(ffi.Index(args, 0))
		p2 := *(*any)(ffi.Index(args, 1))
		p3 := *(*string)(ffi.Index(args, 2))
		p4 := *(*[]int)(ffi.Index(args, 3))
		fn := *(*Func)(userdata)
		p := (*struct {
			i int
			f float64
		})(ret)
		p.i, p.f = fn(p1, p2, p3, p4)
	}, unsafe.Pointer(&fn))
	var ret struct {
		i int
		f float64
	}
	p1 := array{1, 2, 3, 4}
	var p2 any = 100
	p3 := "hello world"
	p4 := []int{100, 200, 300}
	ffi.Call(sig, closure.Fn, unsafe.Pointer(&ret),
		unsafe.Pointer(&p1), unsafe.Pointer(&p2), unsafe.Pointer(&p3), unsafe.Pointer(&p4))
	println("ret:", ret.i, ret.f)
}
