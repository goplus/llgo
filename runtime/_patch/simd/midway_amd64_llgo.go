//go:build goexperiment.simd && amd64

package simd

import "simd/archsimd"

// Midway currently emits the emulated and 128-bit representations. Retain the
// official effective-AVX eligibility check, but do not select a wider variant
// that this compiler has not generated. Explicit wider requests are rejected
// by the standard simd initialization policy.
// arm64 and wasm retain their upstream hooks: NEON and Wasm SIMD128 report
// exactly 128 bits (arm64 also preserves its PMULL eligibility policy).
// Any future upstream width change needs matching Midway representations;
// checkMidwayWidth rejects unsupported selections at the query boundary.
func archMaxVectorSize() (size, allFeatureSize int) {
	if archsimd.X86.AVX() {
		return 128, 128
	}
	return 0, 0
}
