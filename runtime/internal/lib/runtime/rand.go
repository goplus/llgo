package runtime

import (
	_ "unsafe"

	"github.com/goplus/llgo/runtime/internal/runtime/math"
)

//go:linkname fastrand C.rand
func fastrand() uint32

func rand() uint64 {
	n := uint64(fastrand())
	n += 0xa0761d6478bd642f
	hi, lo := math.Mul64(n, n^0xe7037ed1a0b428db)
	return hi ^ lo
}

// randn is a fast reduction of rand() to [0, n).
// Do not change signature: used via linkname from other packages.
func randn(n uint32) uint32 {
	return uint32((uint64(uint32(rand())) * uint64(n)) >> 32)
}
