//go:build llgo
// +build llgo

package gotest

import _ "unsafe"

import (
	"reflect"
	"testing"

	"github.com/goplus/lib/c"
)

//go:linkname directiveSqrt C.sqrt
func directiveSqrt(x c.Double) c.Double

//llgo:link directiveAbs C.abs
func directiveAbs(x c.Int) c.Int { return 0 }

// llgo:link directiveAbsSpaced C.abs
func directiveAbsSpaced(x c.Int) c.Int { return 0 }

type directiveNoInterface struct{}

//go:nointerface
func (directiveNoInterface) Hidden() {}

func (directiveNoInterface) Visible() {}

//llgo:skip directiveSkippedBad
type directiveSkipAnchor struct{}

//go:linkname directiveSkippedMissing C.llgo_missing_directive_skip
func directiveSkippedMissing()

func directiveSkippedBad() {
	directiveSkippedMissing()
}

func TestLLGoDirectiveLinknameForms(t *testing.T) {
	if got := float64(directiveSqrt(9)); got != 3 {
		t.Fatalf("go:linkname sqrt = %v, want 3", got)
	}
	if got := int(directiveAbs(-4)); got != 4 {
		t.Fatalf("llgo:link abs = %d, want 4", got)
	}
	if got := int(directiveAbsSpaced(-5)); got != 5 {
		t.Fatalf("spaced llgo:link abs = %d, want 5", got)
	}
}

func TestLLGoDirectiveNoInterface(t *testing.T) {
	typ := reflect.TypeOf(directiveNoInterface{})
	if _, ok := typ.MethodByName("Hidden"); ok {
		t.Fatal("go:nointerface method Hidden was present in runtime method set")
	}
	if _, ok := typ.MethodByName("Visible"); !ok {
		t.Fatal("ordinary method Visible was missing from runtime method set")
	}
}
