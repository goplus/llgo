//go:build llgo

package maps

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
)

//go:linkname runtime_fastrand64 github.com/goplus/llgo/runtime/internal/runtime.fastrand64
func runtime_fastrand64() uint64

//go:linkname runtime_fatal github.com/goplus/llgo/runtime/internal/runtime.fatal
func runtime_fatal(s string)

//go:linkname runtime_typedmemmove github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove
func runtime_typedmemmove(typ *abi.Type, dst, src unsafe.Pointer)

//go:linkname runtime_typedmemclr github.com/goplus/llgo/runtime/internal/runtime.Typedmemclr
func runtime_typedmemclr(typ *abi.Type, ptr unsafe.Pointer)

//go:linkname runtime_newobject github.com/goplus/llgo/runtime/internal/runtime.newobject
func runtime_newobject(typ *abi.Type) unsafe.Pointer

//go:linkname runtime_newarray github.com/goplus/llgo/runtime/internal/runtime.newarray
func runtime_newarray(typ *abi.Type, n int) unsafe.Pointer

func rand() uint64 {
	return runtime_fastrand64()
}

func fatal(s string) {
	runtime_fatal(s)
}

type Type = abi.Type

type SwissMapType struct {
	Type
	Key   *Type
	Elem  *Type
	Group *Type // internal type representing a slot group
	// function for hashing keys (ptr to key, seed) -> hash
	Hasher    func(unsafe.Pointer, uintptr) uintptr
	GroupSize uintptr // == Group.Size_
	SlotSize  uintptr // size of key/elem slot
	ElemOff   uintptr // offset of elem in key/elem slot
	Flags     uint32
}

func mapKeyError(typ *SwissMapType, p unsafe.Pointer) error {
	return nil
}

func typedmemmove(typ *abi.Type, dst, src unsafe.Pointer) {
	runtime_typedmemmove(typ, dst, src)
}

func typedmemclr(typ *abi.Type, ptr unsafe.Pointer) {
	runtime_typedmemclr(typ, ptr)
}

func newobject(typ *abi.Type) unsafe.Pointer {
	return runtime_newobject(typ)
}

func newarray(typ *abi.Type, n int) unsafe.Pointer {
	return runtime_newarray(typ, n)
}

func typeString(typ *abi.Type) string {
	if typ == nil {
		return "<nil>"
	}
	return typ.String()
}
