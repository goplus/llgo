//go:build goexperiment.simd && (amd64 || arm64 || wasm)

package vectorcall

import "simd/archsimd"

// Block exercises nested vectors alongside pointer-bearing fields.
type Block struct {
	Values [2]archsimd.Float32x4
	Count  int
	Label  string
}

//go:noinline
func UpdateBlock(x Block, mutate func()) (Block, int) {
	// The caller's original may change while this value copy is in use.
	mutate()
	x.Values[0] = x.Values[0].Add(x.Values[1])
	x.Count++
	return x, x.Count
}

//go:noinline
func AddArray(x [2]archsimd.Float32x4) [2]archsimd.Float32x4 {
	x[0] = x[0].Add(x[1])
	return x
}
