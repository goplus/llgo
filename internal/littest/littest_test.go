package littest

import (
	"os"
	"path/filepath"
	"testing"
)

func TestLoadSpecPrefersMarkedSourceOverOutLL(t *testing.T) {
	dir := t.TempDir()
	err := os.WriteFile(filepath.Join(dir, "in.go"), []byte(`// LITTEST
// CHECK: ret void
package main

func main() {}
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	err = os.WriteFile(filepath.Join(dir, "out.ll"), []byte(`; ModuleID = 'main'
define void @main() {
  ret void
}
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	spec, err := LoadSpec(dir)
	if err != nil {
		t.Fatal(err)
	}
	if spec.Mode != ModeFileCheck {
		t.Fatalf("spec.Mode = %v, want %v", spec.Mode, ModeFileCheck)
	}
	if spec.Path != filepath.Join(dir, "in.go") {
		t.Fatalf("spec.Path = %q", spec.Path)
	}
}

func TestLoadSpecRejectsMultipleMarkedSources(t *testing.T) {
	dir := t.TempDir()
	err := os.WriteFile(filepath.Join(dir, "a.go"), []byte(`// LITTEST
// CHECK: ret void
package main
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	err = os.WriteFile(filepath.Join(dir, "b.go"), []byte(`// LITTEST
// CHECK: unreachable
package main
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	_, err = LoadSpec(dir)
	if err == nil {
		t.Fatal("LoadSpec succeeded unexpectedly")
	}
}

func TestLoadSpecWorksWithoutOutLLWhenSourceChecksExist(t *testing.T) {
	dir := t.TempDir()
	err := os.WriteFile(filepath.Join(dir, "in.go"), []byte(`// LITTEST
package main

// CHECK: ret void
func main() {}
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	spec, err := LoadSpec(dir)
	if err != nil {
		t.Fatal(err)
	}
	if spec.Path != filepath.Join(dir, "in.go") {
		t.Fatalf("spec.Path = %q", spec.Path)
	}
}

func TestLoadSpecRejectsMarkedSourceWithoutDirectives(t *testing.T) {
	dir := t.TempDir()
	err := os.WriteFile(filepath.Join(dir, "in.go"), []byte(`// LITTEST
package main
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	_, err = LoadSpec(dir)
	if err == nil {
		t.Fatal("LoadSpec succeeded unexpectedly")
	}
}

func TestLoadSpecFallsBackToOutLLWithoutMarker(t *testing.T) {
	dir := t.TempDir()
	err := os.WriteFile(filepath.Join(dir, "in.go"), []byte(`// CHECK: ret void
package main
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	err = os.WriteFile(filepath.Join(dir, "out.ll"), []byte(`; ModuleID = 'main'
define void @main() {
  ret void
}
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	spec, err := LoadSpec(dir)
	if err != nil {
		t.Fatal(err)
	}
	if spec.Path != filepath.Join(dir, "out.ll") {
		t.Fatalf("spec.Path = %q", spec.Path)
	}
	if spec.Mode != ModeLiteral {
		t.Fatalf("spec.Mode = %v", spec.Mode)
	}
}

func TestLoadSpecSupportsSkipOutLL(t *testing.T) {
	dir := t.TempDir()
	err := os.WriteFile(filepath.Join(dir, "out.ll"), []byte(`;`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	spec, err := LoadSpec(dir)
	if err != nil {
		t.Fatal(err)
	}
	if spec.Mode != ModeSkip {
		t.Fatalf("spec.Mode = %v", spec.Mode)
	}
}

func TestLoadSpecRequiresMarkerOnFirstLine(t *testing.T) {
	dir := t.TempDir()
	err := os.WriteFile(filepath.Join(dir, "in.go"), []byte(`
// LITTEST
// CHECK: ret void
package main
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	err = os.WriteFile(filepath.Join(dir, "out.ll"), []byte(`; ModuleID = 'main'
define void @main() {
  ret void
}
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	spec, err := LoadSpec(dir)
	if err != nil {
		t.Fatal(err)
	}
	if spec.Path != filepath.Join(dir, "out.ll") {
		t.Fatalf("spec.Path = %q", spec.Path)
	}
}

func TestLoadSpecRequiresSlashSlashMarker(t *testing.T) {
	dir := t.TempDir()
	err := os.WriteFile(filepath.Join(dir, "in.go"), []byte(`# LITTEST
// CHECK: ret void
package main
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	err = os.WriteFile(filepath.Join(dir, "out.ll"), []byte(`; ModuleID = 'main'
define void @main() {
  ret void
}
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	spec, err := LoadSpec(dir)
	if err != nil {
		t.Fatal(err)
	}
	if spec.Path != filepath.Join(dir, "out.ll") {
		t.Fatalf("spec.Path = %q", spec.Path)
	}
}

func TestLoadSpecIgnoresNonGoFiles(t *testing.T) {
	dir := t.TempDir()
	err := os.WriteFile(filepath.Join(dir, "in.c"), []byte(`// LITTEST
// CHECK: ret void
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	err = os.WriteFile(filepath.Join(dir, "out.ll"), []byte(`; ModuleID = 'main'
define void @main() {
  ret void
}
`), 0644)
	if err != nil {
		t.Fatal(err)
	}
	spec, err := LoadSpec(dir)
	if err != nil {
		t.Fatal(err)
	}
	if spec.Path != filepath.Join(dir, "out.ll") {
		t.Fatalf("spec.Path = %q", spec.Path)
	}
}
