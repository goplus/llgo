//go:build !llgo
// +build !llgo

package plan9asm

import (
	"math"
	"strings"
	"testing"
)

func TestFormatLLVMFloat64LiteralFinite(t *testing.T) {
	cases := []float64{
		0,
		-0,
		1,
		-2,
		0.5,
		-0.25,
		1024,
		-1024,
	}
	for _, v := range cases {
		s := formatLLVMFloat64Literal(v)
		i := strings.IndexByte(s, 'e')
		if i >= 0 {
			if !strings.Contains(s[:i], ".") {
				t.Fatalf("literal %q for %v has no decimal point before exponent", s, v)
			}
			continue
		}
		if !strings.Contains(s, ".") {
			t.Fatalf("literal %q for %v has no decimal point", s, v)
		}
	}
}

func TestFormatLLVMFloat64LiteralSpecial(t *testing.T) {
	cases := []float64{math.Inf(1), math.Inf(-1), math.NaN()}
	for _, v := range cases {
		s := formatLLVMFloat64Literal(v)
		if !strings.HasPrefix(s, "0x") {
			t.Fatalf("special literal %q is not hex", s)
		}
	}
}
