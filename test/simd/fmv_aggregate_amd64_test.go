//go:build goexperiment.simd && amd64

package simd_test

import (
	"simd/archsimd"
	"testing"

	"github.com/xgo-dev/llgo/test/simd/internal/vectorcall"
)

//go:noinline
func fmvAggregate(data []float32, label string, x vectorcall.Block, mutate func()) (vectorcall.Block, int) {
	x.Label = label
	x.Count += len(data)
	if archsimd.X86.AVX2() {
		return vectorcall.UpdateBlock(x, mutate)
	}
	mutate()
	x.Values[0] = x.Values[0].Sub(x.Values[1])
	return x, -1
}

var fmvAggregateEntry = fmvAggregate
var fmvAggregateInitial, fmvAggregateInitialCount = fmvAggregate([]float32{1, 2}, "init", vectorcall.Block{}, func() {})

//go:noinline
func fmvArray(x [2]archsimd.Float32x4, _ struct{}) [2]archsimd.Float32x4 {
	if archsimd.X86.AVX2() {
		return vectorcall.AddArray(x)
	}
	x[0] = x[0].Sub(x[1])
	return x
}

//go:noinline
func fmvPair(label string) (float64, int) {
	if archsimd.X86.AVX2() {
		return 1.5, len(label)
	}
	return 2.5, -1
}

//go:noinline
func fmvClosure(delta int) func([]float32, string) (int, string) {
	return func(data []float32, label string) (int, string) {
		if archsimd.X86.AVX2() {
			return len(data) + delta, label
		}
		return delta, label
	}
}

func TestSIMDFMVAggregates(t *testing.T) {
	fast := archsimd.X86.AVX2()
	initialCount, resultCount, lane := 2, -1, float32(7)
	if fast {
		initialCount, resultCount, lane = 3, 3, 13
	}
	if fmvAggregateInitial.Label != "init" || fmvAggregateInitial.Count != initialCount || fmvAggregateInitialCount != resultCount {
		t.Fatalf("aggregate initialization: %+v, %d", fmvAggregateInitial, fmvAggregateInitialCount)
	}
	data := []float32{1, 2}
	for _, call := range []func([]float32, string, vectorcall.Block, func()) (vectorcall.Block, int){fmvAggregate, fmvAggregateEntry} {
		original := vectorcall.Block{Values: [2]archsimd.Float32x4{archsimd.BroadcastFloat32x4(10), archsimd.BroadcastFloat32x4(3)}}
		mutated := false
		mutate := func() {
			mutated = true
			original.Values[0] = archsimd.BroadcastFloat32x4(100)
			original.Count = 99
		}
		got, count := call(data, "aggregate", original, mutate)
		if !mutated || original.Count != 99 || got.Count != initialCount || got.Label != "aggregate" || count != resultCount {
			t.Fatalf("aggregate copy/result: original=%+v got=%+v count=%d mutated=%v", original, got, count, mutated)
		}
		checkAggregateLanes(t, got.Values[0], lane)
		checkAggregateLanes(t, got.Values[1], 3)
		// Assignment back to the argument must preserve its value until return.
		original = vectorcall.Block{Values: [2]archsimd.Float32x4{archsimd.BroadcastFloat32x4(10), archsimd.BroadcastFloat32x4(3)}}
		original, count = call(data, "alias", original, func() {})
		checkAggregateLanes(t, original.Values[0], lane)
		if original.Label != "alias" || count != resultCount {
			t.Fatalf("overlapping input/result: %+v, %d", original, count)
		}
	}
	x := [2]archsimd.Float32x4{archsimd.BroadcastFloat32x4(10), archsimd.BroadcastFloat32x4(3)}
	y := fmvArray(x, struct{}{})
	checkAggregateLanes(t, y[0], lane)
	checkAggregateLanes(t, x[0], 10)
	value, count := fmvPair("pair")
	wantValue, wantCount := 2.5, -1
	if fast {
		wantValue, wantCount = 1.5, 4
	}
	if value != wantValue || count != wantCount {
		t.Fatalf("register results: %g, %d; want %g, %d", value, count, wantValue, wantCount)
	}
	closure := fmvClosure(7)
	n, label := closure(data, "closure")
	want := 7
	if fast {
		want += len(data)
	}
	if n != want || label != "closure" {
		t.Fatalf("closure results: %d, %q", n, label)
	}
}

func checkAggregateLanes(t *testing.T, value archsimd.Float32x4, want float32) {
	t.Helper()
	var lanes [4]float32
	value.StoreArray(&lanes)
	for _, got := range lanes {
		if got != want {
			t.Fatalf("aggregate lanes %v, want %g", lanes, want)
		}
	}
}
