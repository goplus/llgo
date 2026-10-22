//go:build llgo && arm64 && (linux || darwin || windows)

package cgo

import "testing"

func TestArm64HFAAfterRegisterExhaustion(t *testing.T) {
	for _, tc := range []struct {
		name string
		call func() float64
	}{
		{"cgo", directHFAPair},
		{"indirect", indirectHFAPair},
		{"linkname", linkedHFAPairCall},
		{"partial_fp_bank", partialHFAPair},
		{"nested_float_array_after_gap", stackedHFATriple},
		{"four_doubles", stackedHFAQuad},
		{"c_to_go_export", exportedHFA},
	} {
		t.Run(tc.name, func(t *testing.T) {
			if got := tc.call(); got != 42 {
				t.Fatalf("got %v, want 42", got)
			}
		})
	}
}
