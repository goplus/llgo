//go:build goexperiment.simd && llgo && amd64

package simd_test

import (
	"simd/archsimd"
	"testing"
	"unsafe"
)

func TestSIMDBridgeMaskedStore(t *testing.T) {
	values := [4]uint32{0x12345678, 0x87654321, 0, ^uint32(0)}
	x := archsimd.LoadUint32x4Array(&values)
	for mask := uint8(0); mask < 16; mask++ {
		dst := [6]uint32{99, 99, 99, 99, 99, 99}
		x.StoreArrayMasked((*[4]uint32)(unsafe.Pointer(&dst[1])), archsimd.Mask32x4FromBits(mask))
		for i, got := range dst {
			want := uint32(99)
			if i > 0 && i < 5 && mask>>(i-1)&1 != 0 {
				want = values[i-1]
			}
			if got != want {
				t.Fatalf("masked store mask=%04b lane=%d: got %x, want %x", mask, i, got, want)
			}
		}
	}
	// An inactive mask must not dereference a nil pointer.
	x.StoreArrayMasked(nil, archsimd.Mask32x4{})
	// Hardware tests the sign bit even when a mask is constructed by unsafe.
	raw := [4]int32{1, -2147483648, 2147483647, -1}
	noncanonical := *(*archsimd.Mask32x4)(unsafe.Pointer(&raw))
	dst := [4]uint32{99, 99, 99, 99}
	x.StoreArrayMasked(&dst, noncanonical)
	if dst != [4]uint32{99, values[1], 99, values[3]} {
		t.Fatalf("masked store ignored sign-bit semantics: %x", dst)
	}
}

func TestSIMDBridgeCarrylessMixedHalves(t *testing.T) {
	a := [2]uint64{0x0123456789abcdef, 0xfedcba9876543210}
	b := [2]uint64{0xffff0000ffff0000, 0x0000ffff0000ffff}
	x, y := archsimd.LoadUint64x2Array(&a), archsimd.LoadUint64x2Array(&b)
	for _, tc := range []struct {
		value archsimd.Uint64x2
		x, y  uint64
	}{
		{x.CarrylessMultiplyOddEven(y), a[1], b[0]},
		{x.CarrylessMultiplyEvenOdd(y), a[0], b[1]},
	} {
		lo, hi := carrylessReference(tc.x, tc.y)
		if tc.value.GetElem(0) != lo || tc.value.GetElem(1) != hi {
			t.Fatal("carryless multiply selected the wrong halves")
		}
	}
}

func TestSIMDBridgeMaskedStoreTypes(t *testing.T) {
	mask32, mask64 := archsimd.Mask32x4FromBits(5), archsimd.Mask64x2FromBits(2)
	i32 := [4]int32{99, 99, 99, 99}
	archsimd.BroadcastInt32x4(-123).StoreArrayMasked(&i32, mask32)
	if i32 != [4]int32{-123, 99, -123, 99} {
		t.Fatal(i32)
	}
	f32 := [4]float32{99, 99, 99, 99}
	archsimd.BroadcastFloat32x4(1.5).StoreArrayMasked(&f32, mask32)
	if f32 != [4]float32{1.5, 99, 1.5, 99} {
		t.Fatal(f32)
	}
	i64 := [2]int64{99, 99}
	archsimd.BroadcastInt64x2(-1<<60).StoreArrayMasked(&i64, mask64)
	if i64 != [2]int64{99, -1 << 60} {
		t.Fatal(i64)
	}
	u64 := [2]uint64{99, 99}
	archsimd.BroadcastUint64x2(1<<63).StoreArrayMasked(&u64, mask64)
	if u64 != [2]uint64{99, 1 << 63} {
		t.Fatal(u64)
	}
	f64 := [2]float64{99, 99}
	archsimd.BroadcastFloat64x2(1.5).StoreArrayMasked(&f64, mask64)
	if f64 != [2]float64{99, 1.5} {
		t.Fatal(f64)
	}
	// Exercise the materialized intrinsic body through a function value.
	store := archsimd.BroadcastUint64x2(7).StoreArrayMasked
	store(&u64, archsimd.Mask64x2FromBits(1))
	if u64 != [2]uint64{7, 1 << 63} {
		t.Fatal(u64)
	}
}
