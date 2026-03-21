package atomic

import latomic "github.com/goplus/llgo/runtime/internal/clite/sync/atomic"

func LoadAcq(ptr *uint32) uint32 {
	return latomic.Load(ptr)
}

func LoadAcq64(ptr *uint64) uint64 {
	return latomic.Load(ptr)
}

func LoadAcquintptr(ptr *uintptr) uintptr {
	return latomic.Load(ptr)
}

func Xadd(ptr *uint32, delta int32) uint32 {
	return latomic.Add(ptr, uint32(delta)) + uint32(delta)
}

func Xchg(ptr *uint32, new uint32) uint32 {
	return latomic.Exchange(ptr, new)
}

func Cas(ptr *uint32, old, new uint32) bool {
	_, ok := latomic.CompareAndExchange(ptr, old, new)
	return ok
}

func StoreRel(ptr *uint32, val uint32) {
	latomic.Store(ptr, val)
}

func StoreRel64(ptr *uint64, val uint64) {
	latomic.Store(ptr, val)
}

func StoreReluintptr(ptr *uintptr, val uintptr) {
	latomic.Store(ptr, val)
}
