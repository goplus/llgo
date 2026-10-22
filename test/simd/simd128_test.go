//go:build goexperiment.simd && (amd64 || arm64 || wasm)

package simd_test

import (
	"simd/archsimd"
	"testing"
	"unsafe"
)

//go:noinline
func add(x, y archsimd.Float32x4) archsimd.Float32x4 { return x.Add(y) }

//go:noinline
func lane(x archsimd.Float32x4, i uint8) float32 { return x.GetElem(i) }

//go:noinline
func indirect(f func(archsimd.Float32x4, archsimd.Float32x4) archsimd.Float32x4, x, y archsimd.Float32x4) archsimd.Float32x4 {
	return f(x, y)
}

func TestFloatArithmeticAndCalls(t *testing.T) {
	var x, y archsimd.Float32x4
	x = x.SetElem(0, 1.5).SetElem(3, -2)
	y = y.SetElem(0, 2.5).SetElem(3, 5)
	z := add(x, y)
	if lane(z, 0) != 4 || lane(z, 1) != 0 || lane(z, 3) != 3 {
		t.Fatal("float add")
	}
	viaExpr := indirect(archsimd.Float32x4.Add, x, y)
	if viaExpr.GetElem(0) != 4 {
		t.Fatal("method expression")
	}
	go z.Add(y)
	done := make(chan float32, 1)
	go func(f func(uint8) float32) { done <- f(0) }(z.GetElem)
	if <-done != 4 {
		t.Fatal("goroutine method value")
	}
	sub := z.Sub
	z = sub(y)
	if lane(z, 0) != 1.5 || lane(z, 3) != -2 {
		t.Fatal("method value")
	}
	var d archsimd.Float64x2
	d = d.SetElem(0, -1.25).SetElem(1, 2.5)
	d = d.Add(d)
	if d.GetElem(0) != -2.5 || d.GetElem(1) != 5 {
		t.Fatal("float64 lanes")
	}
}

func TestIntegerArithmeticAndBits(t *testing.T) {
	var a, b archsimd.Uint64x2
	a = a.SetElem(0, ^uint64(0)).SetElem(1, 7)
	b = b.SetElem(0, 1).SetElem(1, 3)
	c := a.Add(b)
	if c.GetElem(0) != 0 || c.GetElem(1) != 10 {
		t.Fatal("integer wrap")
	}
	c = a.Xor(b)
	if c.GetElem(0) != ^uint64(1) || c.GetElem(1) != 4 {
		t.Fatal("xor")
	}
	c = a.And(b).Or(b)
	if c.GetElem(0) != 1 || c.GetElem(1) != 3 {
		t.Fatal("and/or")
	}
	var small archsimd.Int8x16
	for i := uint8(0); i < 16; i++ {
		small = small.SetElem(i, int8(i)+120)
	}
	small = small.Add(small)
	for i := uint8(0); i < 16; i++ {
		want := int8(i) + 120
		if got := small.GetElem(i); got != want+want {
			t.Fatalf("lane %d: got %d, want %d", i, got, want+want)
		}
	}
}

func TestLaneBounds(t *testing.T) {
	var z archsimd.Float32x4
	for _, deferred := range []bool{false, true} {
		name := "direct"
		if deferred {
			name = "deferred"
		}
		t.Run(name, func(t *testing.T) {
			defer func() {
				err, ok := recover().(interface{ Error() string })
				if !ok || err.Error() != "runtime error: out-of-range immediate for simd intrinsic" {
					t.Fatalf("unexpected recovered error: %v", err)
				}
			}()
			if deferred {
				defer z.GetElem(255)
				return
			}
			lane(z, 4)
		})
	}
}

//go:noinline
func vectorIdentity(x archsimd.Float32x4) archsimd.Float32x4 { return x }

//go:noinline
func vectorPair(x archsimd.Float32x4, n int) (archsimd.Float32x4, int) {
	for i := 0; i < n; i++ {
		x = x.Add(x)
	}
	return x, n
}

type vectorRecord struct {
	Prefix byte
	Value  archsimd.Float32x4
	Suffix byte
}

type storedVector archsimd.Float32x4

//go:noinline
func vectorConvert(x storedVector) archsimd.Float32x4 { return archsimd.Float32x4(x) }

//go:noinline
func vectorAndPointer(x archsimd.Float32x4, p *byte) (archsimd.Float32x4, *byte) { return x, p }

var vectorGlobal vectorRecord

func TestVectorValuesAndStorage(t *testing.T) {
	var x archsimd.Float32x4
	x = x.SetElem(0, 3).SetElem(3, -2)
	x, n := vectorPair(vectorIdentity(vectorConvert(storedVector(x))), 3)
	if x.GetElem(0) != 24 || x.GetElem(3) != -16 || n != 3 {
		t.Fatal("loop or multiple results")
	}
	records := []vectorRecord{{Prefix: 17, Value: x, Suffix: 29}, {Prefix: 31}}
	vectorGlobal = records[0]
	returned, ptr := vectorAndPointer(x, &records[0].Prefix)
	if *ptr != 17 || returned.GetElem(0) != 24 {
		t.Fatal("vector and pointer results")
	}
	a := [2]archsimd.Float32x4{x, x.Sub(x)}
	if vectorGlobal.Value.GetElem(3) != -16 || a[0].GetElem(0) != 24 || a[1].GetElem(0) != 0 {
		t.Fatal("aggregate storage")
	}
	lanes := (*[4]float32)(unsafe.Pointer(&records[0].Value))
	lanes[1] = 7
	if records[0].Value.GetElem(1) != 7 || records[0].Prefix != 17 || records[0].Suffix != 29 || records[1].Prefix != 31 {
		t.Fatal("memory layout")
	}
}
