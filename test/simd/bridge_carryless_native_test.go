//go:build goexperiment.simd && (amd64 || arm64)

package simd_test

import (
	"simd/archsimd"
	"testing"
)

// Native odd-lane helpers exercise the newly lowered private primitives.
// The wasm Go helper has a separate upstream regression reproducer in testdata.
func TestSIMDBridgeCarrylessOdd(t *testing.T) {
	values := []uint64{0, 1, 3, ^uint64(0), 0x8000000000000000, 0x0123456789abcdef}
	for i := uint(0); i < 64; i++ {
		values = append(values, 1<<i)
	}
	for i, x := range values {
		y := values[(i*17+3)%len(values)]
		a := archsimd.LoadUint64x2Array(&[2]uint64{^x, x})
		b := archsimd.LoadUint64x2Array(&[2]uint64{^y, y})
		checkCarryless(t, a.CarrylessMultiplyOdd(b), x, y)
	}
}
