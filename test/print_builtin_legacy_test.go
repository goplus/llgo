//go:build llgo && !go1.26
// +build llgo,!go1.26

package test

import "testing"

func TestBuiltinPrintLegacyFloatFormat(t *testing.T) {
	got := runBuiltinPrintProbe(t)
	want := "" +
		"+1.000000e+007\n" +
		"(+1.000000e+007-1.000000e+007i)\n" +
		"(+1.500000e+000+0.000000e+000i)\n"
	if got != want {
		t.Fatalf("builtin print output mismatch:\n got %q\nwant %q", got, want)
	}
}
