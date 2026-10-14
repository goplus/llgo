//go:build goexperiment.simd && amd64

package simd

import "simd/archsimd"

// Midway currently emits the emulated and 128-bit representations. Retain the
// official effective-AVX eligibility check, but do not select a wider variant
// that this compiler has not generated. Explicit wider requests are rejected
// by the standard simd initialization policy.
func archMaxVectorSize() (size, allFeatureSize int) {
	if archsimd.X86.AVX() {
		return 128, 128
	}
	return 0, 0
}
