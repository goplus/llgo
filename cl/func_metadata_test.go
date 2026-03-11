//go:build !llgo
// +build !llgo

package cl

import (
	"go/token"
	"go/types"
	"path/filepath"
	"runtime"
	"testing"

	"github.com/goplus/llgo/internal/env"
)

func TestEnableFuncMetadata(t *testing.T) {
	old := enableFuncMetadata
	defer func() { enableFuncMetadata = old }()

	EnableFuncMetadata(true)
	if !enableFuncMetadata {
		t.Fatal("EnableFuncMetadata(true) did not enable metadata")
	}
	EnableFuncMetadata(false)
	if enableFuncMetadata {
		t.Fatal("EnableFuncMetadata(false) did not disable metadata")
	}
}

func TestShouldRegisterFuncMetadata(t *testing.T) {
	old := enableFuncMetadata
	defer func() { enableFuncMetadata = old }()

	userPkg := types.NewPackage("example.com/demo", "demo")
	runtimePkg := types.NewPackage(env.LLGoRuntimePkg, "runtime")

	gorootFile := filepath.Join(runtime.GOROOT(), "src", "fmt", "print.go")
	userFile := filepath.Join(string(filepath.Separator), "tmp", "demo.go")

	tests := []struct {
		name string
		ctx  *context
		pos  token.Position
		on   bool
		want bool
	}{
		{name: "disabled", ctx: &context{goTyps: userPkg}, pos: token.Position{Filename: userFile, Line: 7}, on: false, want: false},
		{name: "empty filename", ctx: &context{goTyps: userPkg}, pos: token.Position{Line: 7}, on: true, want: false},
		{name: "non positive line", ctx: &context{goTyps: userPkg}, pos: token.Position{Filename: userFile}, on: true, want: false},
		{name: "runtime package excluded", ctx: &context{goTyps: runtimePkg}, pos: token.Position{Filename: userFile, Line: 7}, on: true, want: false},
		{name: "goroot file excluded", ctx: &context{goTyps: userPkg}, pos: token.Position{Filename: gorootFile, Line: 7}, on: true, want: false},
		{name: "user file accepted", ctx: &context{goTyps: userPkg}, pos: token.Position{Filename: userFile, Line: 7}, on: true, want: true},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			EnableFuncMetadata(tt.on)
			if got := tt.ctx.shouldRegisterFuncMetadata(tt.pos); got != tt.want {
				t.Fatalf("shouldRegisterFuncMetadata(%+v) = %v, want %v", tt.pos, got, tt.want)
			}
		})
	}
}
