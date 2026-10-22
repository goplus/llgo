//go:build llgo && !wasm

package cgo

import "testing"

func TestIndirectCVariadicCall(t *testing.T) {
	if got := fixedVariadicControl(); got != 42 {
		t.Fatalf("fixed control: got %d, want 42", got)
	}
	for _, mode := range []int32{0, 7} {
		if got := indirectVariadic(mode); got != 42 {
			t.Fatalf("indirect variadic mode %d: got %d, want 42", mode, got)
		}
	}
}
