//go:build !llgo

package build

import (
	"bytes"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"

	"golang.org/x/tools/go/packages"
)

const sampleReadelf = `Sections [
  Section {
    Index: 0
    Name: __text (5F)
    Segment: __TEXT (5F)
    Address: 0x1000
    Size: 0x20
  }
  Section {
    Index: 1
    Name: __data
    Segment: __DATA
    Address: 0x2000
    Size: 0x10
  }
  Section {
    Index: 2
    Name: __common
    Segment: __DATA
    Address: 0x3000
    Size: 0x8
  }
]
Symbols [
  Symbol {
    Name: _main.main
    Section: __text (0x1)
    Value: 0x1000
  }
  Symbol {
    Name: _runtime.init
    Section: __text (0x1)
    Value: 0x1010
  }
  Symbol {
    Name: _main.dataVar
    Section: __data (0x2)
    Value: 0x2000
  }
  Symbol {
    Name: _runtime.dataVar
    Section: __data (0x2)
    Value: 0x2008
  }
  Symbol {
    Name: _runtime.bssVar
    Section: __common (0x3)
    Value: 0x3000
  }
]
`

func TestParseReadelfOutput(t *testing.T) {
	parsed, err := parseReadelfOutput(strings.NewReader(sampleReadelf))
	if err != nil {
		t.Fatalf("parseReadelfOutput: %v", err)
	}
	report := buildSizeReport("fake.bin", parsed, nil, "")
	if report == nil {
		t.Fatal("expected report")
	}
	modules := report.Modules
	if len(modules) == 0 {
		t.Fatal("expected modules in report")
	}
	mainMod, ok := modules["main"]
	if !ok {
		t.Fatalf("expected main module, got %v", modules)
	}
	if mainMod.Code != 0x10 {
		t.Fatalf("unexpected main code size: %d", mainMod.Code)
	}
	if mainMod.Data != 0x8 {
		t.Fatalf("unexpected main data size: %d", mainMod.Data)
	}
	runtimeMod := modules["runtime"]
	if runtimeMod.Code != 0x10 {
		t.Fatalf("unexpected runtime code size: %d", runtimeMod.Code)
	}
	if runtimeMod.Data != 0x8 {
		t.Fatalf("unexpected runtime data size: %d", runtimeMod.Data)
	}
	if runtimeMod.BSS != 0x8 {
		t.Fatalf("unexpected runtime bss size: %d", runtimeMod.BSS)
	}
	if report.Total.Flash() != 0x10+0x10+0x8+0x8 {
		t.Fatalf("unexpected flash total: %d", report.Total.Flash())
	}
	if report.Total.RAM() != 0x8+0x8+0x8 {
		t.Fatalf("unexpected ram total: %d", report.Total.RAM())
	}
}

func TestParseReadelfRealBinary(t *testing.T) {
	path := os.Getenv("LLGO_SIZE_REPORT_BIN")
	if path == "" {
		return
	}
	absPath, err := filepath.Abs(path)
	if err != nil {
		t.Fatalf("abs path: %v", err)
	}
	cmd := exec.Command("llvm-readelf", "--all", absPath)
	var buf bytes.Buffer
	cmd.Stdout = &buf
	cmd.Stderr = os.Stderr
	if err := cmd.Run(); err != nil {
		t.Fatalf("llvm-readelf failed: %v", err)
	}
	parsed, err := parseReadelfOutput(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("parseReadelfOutput(real): %v", err)
	}
	if len(parsed.sections) == 0 {
		t.Fatal("expected sections in real binary")
	}
	report := buildSizeReport(absPath, parsed, nil, "")
	if len(report.Modules) == 0 {
		t.Fatalf("expected modules for %s", path)
	}
}

func TestNameResolver(t *testing.T) {
	pkgs := []Package{
		&aPackage{Package: &packages.Package{PkgPath: "github.com/foo/bar", Module: &packages.Module{Path: "github.com/foo"}}},
	}
	symbol := "_github.com/foo/bar.Type.method"
	if got := newNameResolver("package", pkgs).resolve(symbol); got != "github.com/foo/bar" {
		t.Fatalf("package level want github.com/foo/bar, got %q", got)
	}
	if got := newNameResolver("module", pkgs).resolve(symbol); got != "github.com/foo" {
		t.Fatalf("module level want github.com/foo, got %q", got)
	}
	full := newNameResolver("full", pkgs).resolve(symbol)
	if full != "github.com/foo/bar.Type" {
		t.Fatalf("full level unexpected: %q", full)
	}
	if got := newNameResolver("package", nil).resolve("_llgo_stub.foo"); got != "llgo-stubs" {
		t.Fatalf("llgo default grouping failed: %q", got)
	}
}
