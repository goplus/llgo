package maps

import (
	"internal/abi"
	"unsafe"
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

func mapKeyError(typ *abi.SwissMapType, p unsafe.Pointer) error {
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
	return "<type>"
}
