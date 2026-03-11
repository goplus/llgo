//go:build !llgo
// +build !llgo

package ssa_test

import (
	"strings"
	"testing"

	"github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/ssa/ssatest"
)

func TestRegisterCurrentFuncMetadataEmitsCalls(t *testing.T) {
	prog := ssatest.NewProgram(t, nil)
	pkg := prog.NewPackage("foo", "foo")
	fn := pkg.NewFunc("fn", ssa.NoArgsNoRet, ssa.InGo)
	b := fn.MakeBody(1)
	b.SetBlock(fn.Block(0))
	b.RegisterCurrentFuncMetadata("foo.fn", "/tmp/foo.go", 12)
	b.Return()

	ir := pkg.String()
	for _, needle := range []string{
		"runtime/internal/runtime.RegisterFuncMetadataFull",
		"/tmp/foo.go",
		"foo.fn",
	} {
		if !strings.Contains(ir, needle) {
			t.Fatalf("generated IR missing %q:\n%s", needle, ir)
		}
	}
}

func TestRegisterCurrentFuncMetadataSkipsInvalidInput(t *testing.T) {
	tests := []struct {
		name string
		fn   func(ssa.Builder)
	}{
		{name: "empty name", fn: func(b ssa.Builder) { b.RegisterCurrentFuncMetadata("", "/tmp/foo.go", 12) }},
		{name: "empty file", fn: func(b ssa.Builder) { b.RegisterCurrentFuncMetadata("foo.fn", "", 12) }},
		{name: "non positive line", fn: func(b ssa.Builder) { b.RegisterCurrentFuncMetadata("foo.fn", "/tmp/foo.go", 0) }},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			prog := ssatest.NewProgram(t, nil)
			pkg := prog.NewPackage("foo", "foo")
			fn := pkg.NewFunc("fn", ssa.NoArgsNoRet, ssa.InGo)
			b := fn.MakeBody(1)
			b.SetBlock(fn.Block(0))
			tt.fn(b)
			b.Return()

			ir := pkg.String()
			if strings.Contains(ir, "RegisterFuncMetadata") {
				t.Fatalf("generated IR unexpectedly contains metadata registration:\n%s", ir)
			}
		})
	}
}
