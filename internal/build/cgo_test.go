//go:build !llgo
// +build !llgo

package build

import (
	"reflect"
	"strings"
	"testing"
)

func TestParseCgoDeclFlags(t *testing.T) {
	tests := []struct {
		name        string
		line        string
		want        []cgoDecl
		wantErrText string
	}{
		{
			name: "CPPFLAGS with tag",
			line: "#cgo linux CPPFLAGS: -I/usr/lib/llvm-19/include -D_GNU_SOURCE",
			want: []cgoDecl{
				{
					tag:    "linux",
					cflags: []string{"-I/usr/lib/llvm-19/include", "-D_GNU_SOURCE"},
				},
			},
		},
		{
			name: "CFLAGS without tag",
			line: "#cgo CFLAGS: -I/usr/include/python3.12",
			want: []cgoDecl{
				{
					cflags: []string{"-I/usr/include/python3.12"},
				},
			},
		},
		{
			name:        "unsupported flag returns error",
			line:        "#cgo CXXFLAGS: -O2",
			wantErrText: "unsupported cgo flag type",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := parseCgoDecl(tt.line)
			if tt.wantErrText != "" {
				if err == nil {
					t.Fatalf("parseCgoDecl expected error containing %q, got nil", tt.wantErrText)
				}
				if !strings.Contains(err.Error(), tt.wantErrText) {
					t.Fatalf("parseCgoDecl error = %q, want contains %q", err.Error(), tt.wantErrText)
				}
				return
			}
			if err != nil {
				t.Fatalf("parseCgoDecl returned error: %v", err)
			}
			if !reflect.DeepEqual(got, tt.want) {
				t.Fatalf("parseCgoDecl = %#v, want %#v", got, tt.want)
			}
		})
	}
}

func TestCollectCgoSymbolsStripsPackagePrefix(t *testing.T) {
	externs := []string{
		"command-line-arguments._cgo_96608f8de8c8_Cfunc_fputs",
		"demo._cgo_123456789abc_C2func_errno",
		"demo.__cgo_callback",
	}

	got := collectCgoSymbols(externs)
	want := map[string]string{
		"_cgo_96608f8de8c8_Cfunc__Cmalloc": "_Cmalloc",
		"_cgo_96608f8de8c8_Cfunc_fputs":    "fputs",
		"_cgo_123456789abc_C2func_errno":   "errno",
		"demo.__cgo_callback":              "__cgo_callback",
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("collectCgoSymbols = %#v, want %#v", got, want)
	}
}
