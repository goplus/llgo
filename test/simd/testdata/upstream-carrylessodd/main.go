//go:build goexperiment.simd

// Reproduces a Go 1.27 wasm archsimd helper bug under both Go and LLGo.
package main

import "simd/archsimd"

func main() {
	x := archsimd.LoadUint64x2Array(&[2]uint64{0, ^uint64(0)})
	y := archsimd.Uint64x2{}
	var got [2]uint64
	x.CarrylessMultiplyOdd(y).StoreArray(&got)
	if got != [2]uint64{} {
		panic("upstream CarrylessMultiplyOdd: multiplying by zero returned a nonzero product")
	}
}
