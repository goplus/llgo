package build

import (
	"reflect"
	"testing"

	"github.com/goplus/llgo/internal/crosscompile"
)

func TestUseCompilerDriverMapFlags(t *testing.T) {
	tests := []struct {
		name   string
		linker string
		cc     string
		want   bool
	}{
		{name: "empty defaults to clang", linker: "", cc: "", want: true},
		{name: "clang linker", linker: "clang++", cc: "", want: true},
		{name: "gcc linker", linker: "riscv32-unknown-elf-gcc", cc: "", want: true},
		{name: "cc linker", linker: "cc", cc: "", want: true},
		{name: "ld lld linker", linker: "ld.lld", cc: "", want: false},
		{name: "wasm ld linker", linker: "wasm-ld", cc: "", want: false},
		{name: "derive from cc", linker: "", cc: "clang++", want: true},
		{name: "derive ld from cc", linker: "", cc: "ld.lld", want: false},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := useCompilerDriverMapFlags(tt.linker, tt.cc)
			if got != tt.want {
				t.Fatalf("useCompilerDriverMapFlags(%q, %q) = %v, want %v", tt.linker, tt.cc, got, tt.want)
			}
		})
	}
}

func TestResolveLinkMapArgs(t *testing.T) {
	tests := []struct {
		name       string
		outputPath string
		linkMap    string
		linker     string
		cc         string
		wantFile   string
		wantArgs   []string
	}{
		{
			name:       "disabled when empty",
			outputPath: "/tmp/app.elf",
			linkMap:    "",
			linker:     "ld.lld",
			wantFile:   "",
			wantArgs:   nil,
		},
		{
			name:       "explicit file with linker backend",
			outputPath: "/tmp/app.elf",
			linkMap:    "debug.map",
			linker:     "ld.lld",
			wantFile:   "debug.map",
			wantArgs:   []string{"-Map=debug.map"},
		},
		{
			name:       "explicit file with compiler driver",
			outputPath: "/tmp/app.elf",
			linkMap:    "debug.map",
			linker:     "",
			cc:         "clang++",
			wantFile:   "debug.map",
			wantArgs:   []string{"-Xlinker", "-Map=debug.map"},
		},
		{
			name:       "auto from output extension",
			outputPath: "/tmp/app.elf",
			linkMap:    "auto",
			linker:     "ld.lld",
			wantFile:   "/tmp/app.map",
			wantArgs:   []string{"-Map=/tmp/app.map"},
		},
		{
			name:       "auto without output extension",
			outputPath: "/tmp/app",
			linkMap:    "auto",
			linker:     "ld.lld",
			wantFile:   "/tmp/app.map",
			wantArgs:   []string{"-Map=/tmp/app.map"},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			ctx := &context{
				buildConf: &Config{
					LinkMapFile: tt.linkMap,
				},
				crossCompile: crosscompile.Export{
					Linker: tt.linker,
					CC:     tt.cc,
				},
			}
			gotFile, gotArgs := ctx.resolveLinkMapArgs(tt.outputPath)
			if gotFile != tt.wantFile {
				t.Fatalf("resolveLinkMapArgs() file = %q, want %q", gotFile, tt.wantFile)
			}
			if !reflect.DeepEqual(gotArgs, tt.wantArgs) {
				t.Fatalf("resolveLinkMapArgs() args = %#v, want %#v", gotArgs, tt.wantArgs)
			}
		})
	}
}
