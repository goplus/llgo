package atomic

import latomic "github.com/goplus/llgo/runtime/internal/clite/sync/atomic"

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
