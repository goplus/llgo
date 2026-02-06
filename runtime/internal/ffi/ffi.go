package ffi

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/ffi"
)

type Type = ffi.Type

type Signature = ffi.Cif

type Error int

func (s Error) Error() string {
	switch s {
	case ffi.OK:
		return "ok"
	case ffi.BAD_TYPEDEF:
		return "bad type def"
	case ffi.BAD_ABI:
		return "bad ABI"
	case ffi.BAD_ARGTYPE:
		return "bad argument type"
	}
	return "invalid status"
}

// signatureData keeps the arg type array alive for the lifetime of the cif.
//
// libffi's ffi_prep_cif stores pointers to the rtype and the arg_types array
// inside the cif, so both must remain valid for as long as the signature is
// used. We keep a Go slice to the arg type array reachable from the same heap
// object as the cif to avoid relying on escape analysis details.
type signatureData struct {
	cif      Signature
	argTypes []*Type
}

func NewSignature(ret *Type, args ...*Type) (*Signature, error) {
	var atype **Type
	sd := &signatureData{}
	if len(args) > 0 {
		sd.argTypes = make([]*Type, len(args))
		copy(sd.argTypes, args)
		atype = &sd.argTypes[0]
	}
	status := ffi.PrepCif(&sd.cif, ffi.DefaultAbi, c.Uint(len(args)), ret, atype)
	if status == ffi.OK {
		return &sd.cif, nil
	}
	return nil, Error(status)
}

func NewSignatureVar(ret *Type, fixed int, args ...*Type) (*Signature, error) {
	var atype **Type
	sd := &signatureData{}
	if len(args) > 0 {
		sd.argTypes = make([]*Type, len(args))
		copy(sd.argTypes, args)
		atype = &sd.argTypes[0]
	}
	status := ffi.PrepCifVar(&sd.cif, ffi.DefaultAbi, c.Uint(fixed), c.Uint(len(args)), ret, atype)
	if status == ffi.OK {
		return &sd.cif, nil
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
	if status == ffi.OK {
		return nil
	}
	return Error(status)
}

func Index(args *unsafe.Pointer, i uintptr) unsafe.Pointer {
	return ffi.Index(args, i)
}
