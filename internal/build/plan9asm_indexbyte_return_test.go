//go:build !llgo
// +build !llgo

package build

import (
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/packages"
)

func llFuncBody(ll, fnSig string) string {
	start := strings.Index(ll, fnSig)
	if start < 0 {
		return ""
	}
	rest := ll[start:]
	next := strings.Index(rest[len(fnSig):], "\ndefine ")
	if next < 0 {
		return rest
	}
	return rest[:len(fnSig)+next]
}

func TestPlan9AsmIndexByteStringUsesHelperResultSlot(t *testing.T) {
	if runtime.GOARCH != "arm64" {
		t.Skip("host is not arm64")
	}
	goroot := runtime.GOROOT()
	if goroot == "" {
		t.Skip("GOROOT not available")
	}

	cfg := &packages.Config{
		Mode: packages.NeedName | packages.NeedFiles | packages.NeedSyntax | packages.NeedTypes | packages.NeedTypesSizes | packages.NeedTypesInfo | packages.NeedImports,
		Env:  os.Environ(),
	}
	pkgs, err := packages.LoadEx(nil, nil, cfg, "internal/bytealg")
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 || pkgs[0].Types == nil {
		t.Fatalf("load internal/bytealg: got %d pkgs, types=%v", len(pkgs), pkgs[0].Types)
	}
	pkg := pkgs[0]

	sfile := filepath.Join(goroot, "src", "internal", "bytealg", "indexbyte_arm64.s")
	tr, err := translatePlan9AsmFileForPkgWithOptions(pkg, sfile, runtime.GOOS, "arm64", nil, translatePlan9AsmOptions{AnnotateSource: true})
	if err != nil {
		t.Fatal(err)
	}
	body := llFuncBody(tr.LLVMIR, `define i64 @"internal/bytealg.IndexByteString"`)
	if body == "" {
		t.Fatalf("IndexByteString function not found in translated IR")
	}
	if !strings.Contains(body, `call void @"internal/bytealg.indexbytebody"`) {
		t.Fatalf("expected helper call in IndexByteString:\n%s", body)
	}
	if !strings.Contains(body, "ptrtoint ptr %fp_ret_0 to i64") {
		t.Fatalf("expected helper result slot address setup in IndexByteString:\n%s", body)
	}
	if !strings.Contains(body, "load i64, ptr %fp_ret_0") {
		t.Fatalf("expected helper result slot load in IndexByteString:\n%s", body)
	}
}
