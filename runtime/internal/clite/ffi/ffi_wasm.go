package ffi

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

func PrepCif(cif *Cif, abi c.Uint, nargs c.Uint, rtype *Type, atype **Type) c.Uint {
	panic("not implemented")
}

func PrepCifVar(cif *Cif, abi c.Uint, nfixedargs c.Uint, ntotalargs c.Uint, rtype *Type, atype **Type) c.Uint {
	panic("not implemented")
}

func Call(cif *Cif, fn unsafe.Pointer, rvalue unsafe.Pointer, avalue *unsafe.Pointer) {
	panic("not implemented")
}

func ClosureAlloc(code *unsafe.Pointer) unsafe.Pointer {
	panic("not implemented")
}

func ClosureFree(unsafe.Pointer) {
	panic("not implemented")
}

func PreClosureLoc(closure unsafe.Pointer, cif *Cif, fn ClosureFunc, userdata unsafe.Pointer, codeloc unsafe.Pointer) c.Uint {
	panic("not implemented")
}
