//go:build wasm

package ffi

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

func PrepCif(cif *Cif, abi c.Uint, nargs c.Uint, rtype *Type, atype **Type) c.Uint {
	return BAD_ABI
}

func PrepCifVar(cif *Cif, abi c.Uint, nfixedargs c.Uint, ntotalargs c.Uint, rtype *Type, atype **Type) c.Uint {
	return BAD_ABI
}

func Call(cif *Cif, fn unsafe.Pointer, rvalue unsafe.Pointer, avalue *unsafe.Pointer) {
	panic("libffi is unsupported on wasm")
}

func ClosureAlloc(code *unsafe.Pointer) unsafe.Pointer {
	if code != nil {
		*code = nil
	}
	return nil
}

func ClosureFree(unsafe.Pointer) {}

func PreClosureLoc(closure unsafe.Pointer, cif *Cif, fn ClosureFunc, userdata unsafe.Pointer, codeloc unsafe.Pointer) c.Uint {
	return BAD_ABI
}
