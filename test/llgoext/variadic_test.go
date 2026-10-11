//go:build llgo

package llgoext

import (
	"testing"
	"unsafe"
)

func TestLinknameCVariadicCall(t *testing.T) {
	if got := linkedVariadicFixed(7, 20, 22); got != 42 {
		t.Fatalf("fixed control: got %d, want 42", got)
	}
	if got := linkedVariadic(0); got != 42 {
		t.Fatalf("empty direct C tail: got %d, want 42", got)
	}
	if got := linkedVariadic(7, int32(20), float64(22), int64(-9), unsafe.Pointer(nil)); got != 42 {
		t.Fatalf("mixed direct C tail: got %d, want 42", got)
	}
}

func TestLinknameIndirectCVariadicCall(t *testing.T) {
	for _, test := range []struct {
		name     string
		function Variadic
	}{
		{"converted-linkname", Variadic(linkedVariadic)},
		{"returned-C-pointer", linkedVariadicAddress()},
	} {
		t.Run(test.name, func(t *testing.T) {
			if test.function == nil {
				t.Fatal("nil C function pointer")
			}
			if got := test.function(0); got != 42 {
				t.Fatalf("empty indirect C tail: got %d, want 42", got)
			}
			if got := test.function(7, int32(20), float64(22), int64(-9), unsafe.Pointer(nil)); got != 42 {
				t.Fatalf("mixed indirect C tail: got %d, want 42", got)
			}
		})
	}
}
