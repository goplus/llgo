package packages

import (
	"go/token"
	"path/filepath"
	"strings"
	"testing"
)

func TestLoadExDeduperKeepsTestVariantsIsolated(t *testing.T) {
	runtimeDir := filepath.Clean(filepath.Join("..", "..", "runtime"))
	mode := NeedName | NeedFiles | NeedCompiledGoFiles | NeedImports | NeedTypes | NeedTypesSizes | NeedSyntax | NeedTypesInfo
	dedup := NewDeduper()

	testCfg := &Config{
		Dir:   runtimeDir,
		Fset:  token.NewFileSet(),
		Mode:  mode | NeedForTest,
		Tests: true,
	}
	if _, err := LoadEx(dedup, nil, testCfg, "./internal/runtime"); err != nil {
		t.Fatalf("load test variant: %v", err)
	}

	plainCfg := &Config{
		Dir:   runtimeDir,
		Fset:  token.NewFileSet(),
		Mode:  mode,
		Tests: false,
	}
	pkgs, err := LoadEx(dedup, nil, plainCfg, "./internal/runtime")
	if err != nil {
		t.Fatalf("load plain variant: %v", err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("plain load returned %d packages, want 1", len(pkgs))
	}
	if got := pkgs[0].Types.Path(); got != "github.com/goplus/llgo/runtime/internal/runtime" {
		t.Fatalf("plain load types path = %q", got)
	}

	for _, file := range pkgs[0].Syntax {
		name := plainCfg.Fset.Position(file.Package).Filename
		if strings.HasSuffix(name, "_test.go") {
			t.Fatalf("plain load reused test syntax file %s", name)
		}
	}
}

func TestLoadExTestVariantGetsDistinctTypesPath(t *testing.T) {
	runtimeDir := filepath.Clean(filepath.Join("..", "..", "runtime"))
	mode := NeedName | NeedFiles | NeedCompiledGoFiles | NeedImports | NeedTypes | NeedTypesSizes | NeedSyntax | NeedTypesInfo | NeedForTest
	cfg := &Config{
		Dir:   runtimeDir,
		Fset:  token.NewFileSet(),
		Mode:  mode,
		Tests: true,
	}
	pkgs, err := LoadEx(NewDeduper(), nil, cfg, "./internal/runtime")
	if err != nil {
		t.Fatalf("load test variants: %v", err)
	}
	var found bool
	for _, pkg := range pkgs {
		if pkg.ForTest == "github.com/goplus/llgo/runtime/internal/runtime" {
			found = true
			if !strings.Contains(pkg.Types.Path(), "runtime.test") {
				t.Fatalf("test variant types path %q does not encode test identity", pkg.Types.Path())
			}
		}
	}
	if !found {
		t.Fatal("test variant package not found")
	}
}
