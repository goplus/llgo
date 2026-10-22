//go:build goexperiment.simd && llgo && (amd64 || arm64 || wasm)

package vectorops

import "simd"

type Embedded struct{ simd.Uint32s }

func NewEmbedded(x uint32) Embedded { return Embedded{Uint32s: simd.BroadcastUint32s(x)} }

// This receiver depends on SIMD only through a method body.
type BodyReducer struct{}

func (BodyReducer) Reduce(xs []uint32) uint32 {
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
