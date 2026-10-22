package math

import (
	"math"
	"math/big"
	"math/rand"
	"testing"
)

func TestFMA64(t *testing.T) {
	check := func(x, y, z float64) {
		t.Helper()
		got, want := FMA64(x, y, z), math.FMA(x, y, z)
		if math.Float64bits(got) != math.Float64bits(want) && !(math.IsNaN(got) && math.IsNaN(want)) {
			t.Fatalf("FMA64(%x,%x,%x) = %x, want %x", x, y, z, got, want)
		}
	}
	edges := []float64{0, math.Copysign(0, -1), 1, -1, 2, 1 + 0x1p-52, 1 - 0x1p-52, math.MaxFloat64, -math.MaxFloat64, math.SmallestNonzeroFloat64, 0x1p-1022, math.Inf(1), math.Inf(-1), math.NaN()}
	for _, x := range edges {
		for _, y := range edges {
			for _, z := range edges {
				check(x, y, z)
			}
		}
	}
	rng := rand.New(rand.NewSource(1))
	for i := 0; i < 100000; i++ {
		check(math.Float64frombits(rng.Uint64()), math.Float64frombits(rng.Uint64()), math.Float64frombits(rng.Uint64()))
	}
}

func TestFMA32(t *testing.T) {
	check := func(x, y, z float32) {
		t.Helper()
		got := FMA32(x, y, z)
		var want float32
		finite := func(v float32) bool { return !math.IsNaN(float64(v)) && !math.IsInf(float64(v), 0) }
		if !finite(x) || !finite(y) || !finite(z) || x == 0 || y == 0 || z == 0 {
			want = float32(math.FMA(float64(x), float64(y), float64(z)))
		} else {
			// More than the entire float32 exponent span, including the exact product.
			exact := new(big.Float).SetPrec(1024).Mul(big.NewFloat(float64(x)), big.NewFloat(float64(y)))
			exact.Add(exact, big.NewFloat(float64(z)))
			want, _ = exact.Float32()
		}
		if math.Float32bits(got) != math.Float32bits(want) && !(math.IsNaN(float64(got)) && math.IsNaN(float64(want))) {
			t.Fatalf("FMA32(%x,%x,%x) = %x, want %x", x, y, z, got, want)
		}
	}
	edges := []float32{0, float32(math.Copysign(0, -1)), 1, -1, 2, 1 + 0x1p-23, 1 - 0x1p-23, math.MaxFloat32, -math.MaxFloat32, math.SmallestNonzeroFloat32, 0x1p-126, float32(math.Inf(1)), float32(math.Inf(-1)), float32(math.NaN())}
	for _, x := range edges {
		for _, y := range edges {
			for _, z := range edges {
				check(x, y, z)
			}
		}
	}
	// A tiny addend moves an exact product off a float32 midpoint. Rounding
	// through float64 without retaining the residual would choose the wrong tie.
	for _, sign := range []float32{-1, 1} {
		check(sign*(1+0x1p-23), 1.5, -sign*math.SmallestNonzeroFloat32)
		check(sign*(1+0x1p-23), 1.5, sign*math.SmallestNonzeroFloat32)
	}
	rng := rand.New(rand.NewSource(2))
	for i := 0; i < 20000; i++ {
		check(math.Float32frombits(rng.Uint32()), math.Float32frombits(rng.Uint32()), math.Float32frombits(rng.Uint32()))
	}
}
