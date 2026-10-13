//go:build goexperiment.simd && (arm64 || wasm || (llgo && amd64))

package simd_test

import (
	"math/bits"
	"simd/archsimd"
	"testing"
)

// Official amd64 helpers require AVX512. LLGo also supports these operations
// at GOAMD64=v1; check its legalization against scalar references.
func TestSIMDBridgeRotate(t *testing.T) {
	values := [2]uint64{0x8123456789abcdef, 0xfedcba9876543210}
	v64 := archsimd.LoadUint64x2Array(&values)
	v32, v16 := v64.ReshapeToUint32s(), v64.ReshapeToUint16s()
	for _, shift := range []uint64{0, 1, 15, 16, 17, 31, 32, 33, 63, 64, 65, 255, 256, 1 << 32, ^uint64(0)} {
		var left64, right64 [2]uint64
		v64.RotateAllLeft(shift).StoreArray(&left64)
		v64.RotateAllRight(shift).StoreArray(&right64)
		for i, x := range values {
			if left64[i] != bits.RotateLeft64(x, int(shift&63)) || right64[i] != bits.RotateLeft64(x, -int(shift&63)) {
				t.Fatalf("64-bit rotate: shift=%d lane=%d", shift, i)
			}
		}
		var input32, left32, right32 [4]uint32
		v32.StoreArray(&input32)
		v32.RotateAllLeft(shift).StoreArray(&left32)
		v32.RotateAllRight(shift).StoreArray(&right32)
		for i, x := range input32 {
			if left32[i] != bits.RotateLeft32(x, int(shift&31)) || right32[i] != bits.RotateLeft32(x, -int(shift&31)) {
				t.Fatalf("32-bit rotate: shift=%d lane=%d", shift, i)
			}
		}
		var input16, left16, right16 [8]uint16
		v16.StoreArray(&input16)
		v16.RotateAllLeft(shift).StoreArray(&left16)
		v16.RotateAllRight(shift).StoreArray(&right16)
		for i, x := range input16 {
			if left16[i] != bits.RotateLeft16(x, int(shift&15)) || right16[i] != bits.RotateLeft16(x, -int(shift&15)) {
				t.Fatalf("16-bit rotate: shift=%d lane=%d", shift, i)
			}
		}
	}
}

func TestSIMDBridgePartialStore(t *testing.T) {
	for n := 0; n <= 5; n++ {
		dst := [7]uint32{99, 99, 99, 99, 99, 99, 99}
		v := archsimd.LoadUint32x4Array(&[4]uint32{1, 2, 3, 4})
		count := v.StorePart(dst[1 : 1+n])
		want := min(n, 4)
		if count != want {
			t.Fatalf("StorePart(%d) = %d, want %d", n, count, want)
		}
		for i, got := range dst {
			expected := uint32(99)
			if i >= 1 && i <= want {
				expected = uint32(i)
			}
			if got != expected {
				t.Fatalf("StorePart(%d) changed lane %d to %d, want %d", n, i, got, expected)
			}
		}
	}
}
