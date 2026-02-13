package build

import (
	"reflect"
	"testing"
)

func TestParseCgoDeclCPPFLAGS(t *testing.T) {
	decls, err := parseCgoDecl("#cgo linux CPPFLAGS: -I/usr/lib/llvm-19/include -D_GNU_SOURCE")
	if err != nil {
		t.Fatalf("parseCgoDecl returned error: %v", err)
	}
	if len(decls) != 1 {
		t.Fatalf("parseCgoDecl returned %d decls, want 1", len(decls))
	}
	if decls[0].tag != "linux" {
		t.Fatalf("tag = %q, want %q", decls[0].tag, "linux")
	}
	if got, want := decls[0].cflags, []string{"-I/usr/lib/llvm-19/include", "-D_GNU_SOURCE"}; !reflect.DeepEqual(got, want) {
		t.Fatalf("cflags = %v, want %v", got, want)
	}
	if len(decls[0].ldflags) != 0 {
		t.Fatalf("ldflags = %v, want empty", decls[0].ldflags)
	}
}

func TestParseCgoDeclCFLAGS(t *testing.T) {
	decls, err := parseCgoDecl("#cgo CFLAGS: -I/usr/include/python3.12")
	if err != nil {
		t.Fatalf("parseCgoDecl returned error: %v", err)
	}
	if len(decls) != 1 {
		t.Fatalf("parseCgoDecl returned %d decls, want 1", len(decls))
	}
	if decls[0].tag != "" {
		t.Fatalf("tag = %q, want empty", decls[0].tag)
	}
	if got, want := decls[0].cflags, []string{"-I/usr/include/python3.12"}; !reflect.DeepEqual(got, want) {
		t.Fatalf("cflags = %v, want %v", got, want)
	}
}
