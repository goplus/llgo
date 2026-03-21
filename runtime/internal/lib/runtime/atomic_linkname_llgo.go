package runtime

import (
	latomic "github.com/goplus/llgo/runtime/internal/clite/sync/atomic"
	_ "unsafe"
)

//go:linkname internal_runtime_atomic_Xadd internal/runtime/atomic.Xadd
func internal_runtime_atomic_Xadd(ptr *uint32, delta int32) uint32 {
	return latomic.Add(ptr, uint32(delta)) + uint32(delta)
}

//go:linkname internal_runtime_atomic_Xadd64 internal/runtime/atomic.Xadd64
func internal_runtime_atomic_Xadd64(ptr *uint64, delta int64) uint64 {
	return latomic.Add(ptr, uint64(delta)) + uint64(delta)
}

//go:linkname internal_runtime_atomic_Xchg internal/runtime/atomic.Xchg
func internal_runtime_atomic_Xchg(ptr *uint32, new uint32) uint32 {
	return latomic.Exchange(ptr, new)
}

//go:linkname internal_runtime_atomic_Cas internal/runtime/atomic.Cas
func internal_runtime_atomic_Cas(ptr *uint32, old, new uint32) bool {
	_, ok := latomic.CompareAndExchange(ptr, old, new)
	return ok
}

//go:linkname internal_runtime_atomic_Cas64 internal/runtime/atomic.Cas64
func internal_runtime_atomic_Cas64(ptr *uint64, old, new uint64) bool {
	_, ok := latomic.CompareAndExchange(ptr, old, new)
	return ok
}

//go:linkname internal_runtime_atomic_LoadAcquintptr internal/runtime/atomic.LoadAcquintptr
func internal_runtime_atomic_LoadAcquintptr(ptr *uintptr) uintptr {
	return latomic.Load(ptr)
}

//go:linkname runtime_internal_atomic_LoadAcquintptr runtime/internal/atomic.LoadAcquintptr
func runtime_internal_atomic_LoadAcquintptr(ptr *uintptr) uintptr {
	return latomic.Load(ptr)
}

//go:linkname internal_runtime_atomic_StoreReluintptr internal/runtime/atomic.StoreReluintptr
func internal_runtime_atomic_StoreReluintptr(ptr *uintptr, val uintptr) {
	latomic.Store(ptr, val)
}

//go:linkname runtime_internal_atomic_StoreReluintptr runtime/internal/atomic.StoreReluintptr
func runtime_internal_atomic_StoreReluintptr(ptr *uintptr, val uintptr) {
	latomic.Store(ptr, val)
}
