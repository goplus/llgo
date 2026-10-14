//go:build llgo && amd64 && (linux || darwin)

package cgo

import "testing"

func TestAggregateAfterRegisterExhaustion(t *testing.T) {
	for _, tc := range []struct {
		name string
		call func() float64
	}{
		{"cgo_float_pair", directSysVFloatPair},
		{"indirect_float_pair", indirectSysVFloatPair},
		{"linkname_float_pair", linkedSysVFloatPairCall},
		{"mixed_gp_rollback", rollbackSysVMixedGP},
		{"mixed_sse_rollback", rollbackSysVMixedFP},
	} {
		t.Run(tc.name, func(t *testing.T) {
			if got := tc.call(); got != 42 {
				t.Fatalf("got %v, want 42", got)
			}
		})
	}
	if got := partialSysVIntegerPair(); got != 42 {
		t.Fatalf("partially available integer registers: got %v, want 42", got)
	}
}
