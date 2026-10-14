//go:build goexperiment.simd && arm64

package simd_test

import (
	"simd/archsimd"
	"testing"
)

func TestSIMDBridgeSignedAverage(t *testing.T) {
	for _, a := range []int32{-2147483648, -2147483647, -3, -2, -1, 0, 1, 2, 2147483646, 2147483647} {
		for _, b := range []int32{-2147483648, -3, -2, -1, 0, 1, 2, 2147483647} {
			want := int32((int64(a) + int64(b) + 1) >> 1)
			v := archsimd.BroadcastInt32x4(a).Average(archsimd.BroadcastInt32x4(b))
			for i := uint8(0); i < 4; i++ {
				if got := v.GetElem(i); got != want {
					t.Fatalf("signed average(%d,%d) = %d, want %d", a, b, got, want)
				}
			}
		}
	}
}
