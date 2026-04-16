//go:build llgo && !go1.26
// +build llgo,!go1.26

package test

import "testing"

func TestBuiltinPrintLegacyFloatFormat(t *testing.T) {
	got := runBuiltinPrintProbe(t)
	want := "" +
		"+1.000000e+07\n" +
		"(+1.000000e+07-1.000000e+07i)\n" +
		"(+1.500000e+00+0.000000e+00i)\n" +
		"NaN\n" +
		"+Inf\n" +
		"-Inf\n" +
		"(+1.000000e+00NaNi)\n" +
		"(+1.000000e+00+Infi)\n" +
		"(+1.000000e+00-Infi)\n"
	if got != want {
		t.Fatalf("builtin print output mismatch:\n got %q\nwant %q", got, want)
	}
}
