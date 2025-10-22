package runtime

import (
	"sync/atomic"
	"unsafe"
)

const (
	randMultiplier = 6364136223846793005
	randIncrement  = 1442695040888963407
)

var randState uint64

func init() {
	seed := uint64(uintptr(unsafe.Pointer(&randState))) ^ randIncrement
	if seed == 0 {
		seed = randIncrement
	}
	randState = seed
}

//go:linkname rand
func rand() uint64 {
	for {
		old := atomic.LoadUint64(&randState)
		new := old*randMultiplier + randIncrement
		if new == 0 {
			new = randIncrement
		}
		if atomic.CompareAndSwapUint64(&randState, old, new) {
			return new
		}
	}
}
