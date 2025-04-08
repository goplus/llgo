package maps

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
)

func rand() uint64 {
	panic("not implemented")
}

func fatal(s string) {
	panic("fatal: " + s)
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
	panic("not implemented")
}

func typedmemclr(typ *abi.Type, ptr unsafe.Pointer) {
	panic("not implemented")
}

func newobject(typ *abi.Type) unsafe.Pointer {
	panic("not implemented")
}

func newarray(typ *abi.Type, n int) unsafe.Pointer {
	panic("not implemented")
}
