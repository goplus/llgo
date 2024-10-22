package ffi

import (
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/ffi/ffi"
)

type Type = ffi.Type

type Signature = ffi.Cif

type Abi c.Uint

type Error c.Uint

const (
	OK Error = iota
	BAD_TYPEDEF
	BAD_ABI
	BAD_ARGTYPE
)

func (s Error) Error() string {
	switch s {
	case OK:
		return "ok"
	case BAD_TYPEDEF:
		return "bad type def"
	case BAD_ABI:
		return "bad ABI"
	case BAD_ARGTYPE:
		return "bad argument type"
	}
	return fmt.Sprintf("invalid status: %v", int(s))
}

func NewSignature(ret *Type, args ...*Type) (*Signature, error) {
	var cif ffi.Cif
	var atype **Type
	if len(args) > 0 {
		atype = &args[0]
	}
	status := ffi.PrepCif(&cif, c.Uint(DefaultAbi), c.Uint(len(args)), ret, atype)
	if status == 0 {
		return &cif, nil
	}
	return nil, Error(status)
}

func NewSignatureVar(ret *Type, fixed int, args ...*Type) (*Signature, error) {
	var cif ffi.Cif
	var atype **Type
	if len(args) > 0 {
		atype = &args[0]
	}
	status := ffi.PrepCifVar(&cif, c.Uint(DefaultAbi), c.Uint(fixed), c.Uint(len(args)), ret, atype)
	if status == 0 {
		return &cif, nil
	}
	return nil, Error(status)
}

func Call(cif *Signature, fn unsafe.Pointer, ret unsafe.Pointer, args ...unsafe.Pointer) {
	var avalues *unsafe.Pointer
	if len(args) > 0 {
		avalues = &args[0]
	}
	ffi.Call(cif, fn, ret, avalues)
}

type Closure struct {
	ptr unsafe.Pointer
	Fn  unsafe.Pointer
}

func NewClosure() *Closure {
	c := &Closure{}
	c.ptr = ffi.ClosureAlloc(&c.Fn)
	return c
}

func (c *Closure) Free() {
	if c != nil && c.ptr != nil {
		ffi.ClosureFree(c.ptr)
		c.ptr = nil
	}
}

func (c *Closure) Bind(cif *Signature, fn ffi.ClosureFunc, userdata unsafe.Pointer) error {
	status := ffi.PreClosureLoc(c.ptr, cif, fn, userdata, c.Fn)
	if status == 0 {
		return nil
	}
	return Error(status)
}

func add(ptr unsafe.Pointer, offset uintptr) unsafe.Pointer {
	return unsafe.Pointer(uintptr(ptr) + offset)
}

func Index(args *unsafe.Pointer, i uintptr) unsafe.Pointer {
	return (*(*unsafe.Pointer)(add(unsafe.Pointer(args), i*unsafe.Sizeof(0))))
}
