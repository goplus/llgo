//go:build goexperiment.simd && (amd64 || arm64 || wasm)

package simd_test

import (
	"math"
	"runtime"
	"simd/archsimd"
	"testing"
)

func TestSIMDBridgeAverage(t *testing.T) {
	// All byte pairs, including overflow and odd sums. Average rounds up.
	for a := 0; a < 256; a++ {
		x := archsimd.BroadcastUint8x16(uint8(a))
		for b := 0; b < 256; b += 16 {
			var values [16]uint8
			for i := range values {
				values[i] = uint8(b + i)
			}
			var got [16]uint8
			x.Average(archsimd.LoadUint8x16Array(&values)).StoreArray(&got)
			for i, v := range got {
				if want := uint8((a + b + i + 1) / 2); v != want {
					t.Fatalf("average(%d, %d) = %d, want %d", a, b+i, v, want)
				}
			}
		}
	}
	a := [8]uint16{0, 1, 65535, 65535, 32768, 32767, 2, 65000}
	b := [8]uint16{65535, 0, 65535, 65534, 32767, 32767, 3, 1000}
	var got [8]uint16
	x := archsimd.LoadUint16x8Array(&a)
	average := x.Average
	average(archsimd.LoadUint16x8Array(&b)).StoreArray(&got)
	for i, v := range got {
		if want := uint16((uint32(a[i]) + uint32(b[i]) + 1) / 2); v != want {
			t.Fatalf("word average lane %d = %d, want %d", i, v, want)
		}
	}
}

func carrylessReference(x, y uint64) (lo, hi uint64) {
	for bit := uint(0); bit < 64; bit++ {
		if y>>bit&1 != 0 {
			lo ^= x << bit
			if bit != 0 {
				hi ^= x >> (64 - bit)
			}
		}
	}
	return
}

func TestSIMDBridgeCarrylessMultiply(t *testing.T) {
	values := []uint64{0, 1, 3, ^uint64(0), 0x8000000000000000, 0x0123456789abcdef, 0xfedcba9876543210}
	for i := uint(0); i < 64; i++ {
		values = append(values, 1<<i)
	}
	for i, a := range values {
		b := values[(i*17+3)%len(values)]
		x := archsimd.LoadUint64x2Array(&[2]uint64{a, ^a})
		y := archsimd.LoadUint64x2Array(&[2]uint64{b, ^b})
		checkCarryless(t, x.CarrylessMultiplyEven(y), a, b)

	}
}

func TestSIMDBridgeMulAdd(t *testing.T) {
	for _, tc := range []struct{ x, y, z, fused float64 }{
		{1 + 0x1p-52, 1 - 0x1p-52, -1, -0x1p-104},
		{math.MaxFloat64, 2, -math.MaxFloat64, math.MaxFloat64},
		{0x1p-1022, 0x1p-52, 0, math.SmallestNonzeroFloat64},
		{math.Copysign(0, -1), 1, math.Copysign(0, -1), math.Copysign(0, -1)},
		{0, math.Inf(1), 1, math.NaN()},
		{math.Inf(1), 1, math.Inf(-1), math.NaN()},
	} {
		got := archsimd.BroadcastFloat64x2(tc.x).MulAdd(archsimd.BroadcastFloat64x2(tc.y), archsimd.BroadcastFloat64x2(tc.z))
		want := tc.fused
		if runtime.GOARCH == "wasm" {
			// The official wasm helper specifies separate multiply and add.
			want = float64(tc.x*tc.y) + tc.z
		}
		for i := uint8(0); i < 2; i++ {
			v := got.GetElem(i)
			if math.Float64bits(v) != math.Float64bits(want) && !(math.IsNaN(v) && math.IsNaN(want)) {
				t.Fatalf("float64 MulAdd(%g,%g,%g) = %g, want %g", tc.x, tc.y, tc.z, v, want)
			}
		}
	}
	for _, tc := range []struct{ x, y, z, fused float32 }{
		{1 + 0x1p-23, 1 - 0x1p-23, -1, -0x1p-46},
		{math.MaxFloat32, 2, -math.MaxFloat32, math.MaxFloat32},
		{1 + 0x1p-23, 1.5, -math.SmallestNonzeroFloat32, 1.5 + 0x1p-23},
		{1 + 0x1p-23, 1.5, math.SmallestNonzeroFloat32, 1.5 + 0x1p-22},
		{-1 - 0x1p-23, 1.5, math.SmallestNonzeroFloat32, -1.5 - 0x1p-23},
		{-1 - 0x1p-23, 1.5, -math.SmallestNonzeroFloat32, -1.5 - 0x1p-22},
		{0x1p-126, 0x1p-23, 0, math.SmallestNonzeroFloat32},
		{float32(math.Copysign(0, -1)), 1, float32(math.Copysign(0, -1)), float32(math.Copysign(0, -1))},
	} {
		got := archsimd.BroadcastFloat32x4(tc.x).MulAdd(archsimd.BroadcastFloat32x4(tc.y), archsimd.BroadcastFloat32x4(tc.z))
		want := tc.fused
		if runtime.GOARCH == "wasm" {
			want = float32(tc.x*tc.y) + tc.z
		}
		for i := uint8(0); i < 4; i++ {
			if v := got.GetElem(i); math.Float32bits(v) != math.Float32bits(want) {
				t.Fatalf("float32 MulAdd(%g,%g,%g) = %g, want %g", tc.x, tc.y, tc.z, v, want)
			}
		}
	}
}

func checkCarryless(t *testing.T, product archsimd.Uint64x2, x, y uint64) {
	t.Helper()
	lo, hi := carrylessReference(x, y)
	var got [2]uint64
	product.StoreArray(&got)
	if got != [2]uint64{lo, hi} {
		t.Fatalf("carryless(%x, %x) = %x, want [%x %x]", x, y, got, lo, hi)
	}
}
