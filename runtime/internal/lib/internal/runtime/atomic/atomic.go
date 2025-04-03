package atomic

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/lib/sync/atomic"
)

func casPointer(ptr *unsafe.Pointer, old, new unsafe.Pointer) bool {
	return atomic.CompareAndSwapPointer(ptr, old, new)
}

func storePointer(ptr *unsafe.Pointer, new unsafe.Pointer) {
	atomic.StorePointer(ptr, new)
}

func StorepNoWB(ptr unsafe.Pointer, val unsafe.Pointer) {
	atomic.StorePointer((*unsafe.Pointer)(ptr), val)
}
