//go:build llgo && goexperiment.simd && (amd64 || arm64 || wasm)

package simd_test

import (
	"simd/archsimd"
	"strings"
	"testing"
	_ "unsafe"
)

//go:linkname simdExtendLo simd/archsimd.Uint8x16.ExtendLo8ToUint16
func simdExtendLo(x archsimd.Uint8x16) archsimd.Uint16x8

func TestUnimplementedSIMD(t *testing.T) {
	var x archsimd.Uint8x16
	method := x.ExtendLo8ToUint16
	for _, tc := range []struct {
		name   string
		call   func()
		symbol string
	}{
		{"direct", func() { x.ExtendLo8ToUint16() }, "simd/archsimd.Uint8x16.ExtendLo8ToUint16"},
		{"method value", func() { method() }, "simd/archsimd.Uint8x16.ExtendLo8ToUint16"},
		{"method expression", func() { indirectExtendLo(archsimd.Uint8x16.ExtendLo8ToUint16, x) }, "simd/archsimd.Uint8x16.ExtendLo8ToUint16"},
		{"deferred", func() { defer x.ExtendLo8ToUint16() }, "simd/archsimd.Uint8x16.ExtendLo8ToUint16"},
		{"linkname", func() { simdExtendLo(x) }, "simd/archsimd.Uint8x16.ExtendLo8ToUint16"},
	} {
		t.Run(tc.name, func(t *testing.T) {
			defer func() {
				err, ok := recover().(interface{ Error() string })
				if !ok || !strings.HasPrefix(err.Error(), "runtime error: unimplemented SIMD intrinsic: "+tc.symbol) {
					t.Fatalf("unexpected panic: %v", err)
				}
			}()
			tc.call()
			t.Fatal("unimplemented intrinsic returned")
		})
	}
	// Go helper bodies remain executable; the fallback applies to declarations.
	if x.Len() != 16 {
		t.Fatal("Go helper was replaced by the fallback")
	}
}

//go:noinline
func indirectExtendLo(f func(archsimd.Uint8x16) archsimd.Uint16x8, x archsimd.Uint8x16) archsimd.Uint16x8 {
	return f(x)
}
