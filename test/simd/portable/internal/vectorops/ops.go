//go:build goexperiment.simd && (amd64 || arm64 || wasm)

package vectorops

import "simd"

type Block struct {
	Vector simd.Uint32s
	Tag    int
}

func NewBlock(x uint32) Block { return Block{simd.BroadcastUint32s(x), 7} }

func (b Block) Sum() uint32 {
	xs := make([]uint32, b.Vector.Len())
	b.Vector.Store(xs)
	var sum uint32
	for _, x := range xs {
		sum += x
	}
	return sum
}

func AddN(v simd.Uint32s, n int) simd.Uint32s {
	if n == 0 {
		return v
	}
	return AddN(v.Add(simd.BroadcastUint32s(1)), n-1)
}

func Adder(v simd.Uint32s) func(simd.Uint32s) simd.Uint32s {
	return func(x simd.Uint32s) simd.Uint32s { return x.Add(v) }
}

type Holder[T any] struct{ Value T }

func Hold(v simd.Uint32s) Holder[simd.Uint32s] { return Holder[simd.Uint32s]{v} }

func Length[T interface{ Len() int }](v T) int { return v.Len() }

func Tagged[T ~int](x uint32, tag T) (uint32, T) {
	return NewBlock(x).Sum(), tag
}

type Reducer struct{}

func (Reducer) Reduce(xs []uint32) uint32 {
	return Reduce(xs)
}

func Reduce(xs []uint32) uint32 {
	var v simd.Uint32s
	for len(xs) >= v.Len() {
		v = v.Add(simd.LoadUint32s(xs))
		xs = xs[v.Len():]
	}
	total := (Block{Vector: v}).Sum()
	for _, x := range xs {
		total += x
	}
	return total
}
