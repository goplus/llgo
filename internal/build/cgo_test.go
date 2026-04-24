//go:build !llgo
// +build !llgo

package build

import (
	"fmt"
	"reflect"
	"strings"
	"sync"
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

func TestPkgConfigCacheReusesResults(t *testing.T) {
	oldOutput := pkgConfigOutput
	pkgConfigCache = sync.Map{}
	calls := 0
	pkgConfigOutput = func(arg ...string) ([]byte, error) {
		calls++
		if len(arg) != 2 || arg[1] != "python3-embed" {
			return nil, fmt.Errorf("unexpected pkg-config args: %v", arg)
		}
		switch arg[0] {
		case "--libs":
			return []byte("-L/usr/lib -lpython3\n"), nil
		case "--cflags":
			return []byte("-I/usr/include/python3\n"), nil
		default:
			return nil, fmt.Errorf("unexpected pkg-config mode: %v", arg[0])
		}
	}
	t.Cleanup(func() {
		pkgConfigCache = sync.Map{}
		pkgConfigOutput = oldOutput
	})

	for i := 0; i < 2; i++ {
		decls, err := parseCgoDecl("#cgo pkg-config: python3-embed")
		if err != nil {
			t.Fatalf("parseCgoDecl pkg-config failed: %v", err)
		}
		want := []cgoDecl{{cflags: []string{"-I/usr/include/python3"}, ldflags: []string{"-L/usr/lib", "-lpython3"}}}
		if !reflect.DeepEqual(decls, want) {
			t.Fatalf("parseCgoDecl pkg-config = %#v, want %#v", decls, want)
		}
	}
	if calls != 2 {
		t.Fatalf("pkg-config output called %d times, want 2", calls)
	}
}

func TestCollectCgoSymbolsStripsPackagePrefix(t *testing.T) {
	externs := []string{
		"command-line-arguments._cgo_96608f8de8c8_Cfunc_fputs",
		"_cgo_96608f8de8c8_Cfunc_puts",
		"demo._cgo_123456789abc_C2func_errno",
		"demo.__cgo_callback",
	}

	got := collectCgoSymbols(externs)
	want := map[string]string{
		"_cgo_96608f8de8c8_Cfunc__Cmalloc": "_Cmalloc",
		"_cgo_96608f8de8c8_Cfunc_fputs":    "fputs",
		"_cgo_96608f8de8c8_Cfunc_puts":     "puts",
		"_cgo_123456789abc_C2func_errno":   "errno",
		"demo.__cgo_callback":              "__cgo_callback",
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("collectCgoSymbols = %#v, want %#v", got, want)
	}
}
