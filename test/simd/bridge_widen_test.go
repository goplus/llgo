//go:build goexperiment.simd && (arm64 || wasm)

package simd_test

import (
	"simd/archsimd"
	"testing"
)

func TestSIMDBridgeMulWidenLo(t *testing.T) {
	a := [4]uint32{0xffffffff, 0x80000000, 17, 19}
	b := [4]uint32{0xffffffff, 3, 23, 29}
	var got [2]uint64
	archsimd.LoadUint32x4Array(&a).MulWidenLo(archsimd.LoadUint32x4Array(&b)).StoreArray(&got)
	for i := range got {
		if want := uint64(a[i]) * uint64(b[i]); got[i] != want {
			t.Fatalf("widened uint32 product lane %d = %x, want %x", i, got[i], want)
		}
	}
	sa := [4]int32{-2147483648, -1, 17, 19}
	sb := [4]int32{-2147483648, 2147483647, 23, 29}
	var signed [2]int64
	archsimd.LoadInt32x4Array(&sa).MulWidenLo(archsimd.LoadInt32x4Array(&sb)).StoreArray(&signed)
	for i := range signed {
		if want := int64(sa[i]) * int64(sb[i]); signed[i] != want {
			t.Fatalf("widened int32 product lane %d = %d, want %d", i, signed[i], want)
		}
	}
	var bytes [16]int8
	for i := range bytes {
		bytes[i] = int8(i - 128)
	}
	var words [8]int16
	v := archsimd.LoadInt8x16Array(&bytes)
	v.MulWidenLo(v).StoreArray(&words)
	for i, got := range words {
		if want := int16(bytes[i]) * int16(bytes[i]); got != want {
			t.Fatalf("widened int8 product lane %d = %d, want %d", i, got, want)
		}
	}
}
