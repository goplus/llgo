package runtime

import "unsafe"

// internal/bytealg in llgo calls into this runtime helper through the
// runtime/internal/lib alt package mirror.
//
//go:linkname bytealg_MakeNoZero runtime.bytealg_MakeNoZero
func bytealg_MakeNoZero(n int) []byte {
	if n < 0 || uintptr(n) > maxAlloc {
		panicmakeslicelen()
	}
	capacity := roundupsize(uintptr(n))
	p := AllocU(capacity)
	b := unsafe.Slice((*byte)(p), int(capacity))
	return b[:n]
}
