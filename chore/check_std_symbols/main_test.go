package main

import (
	"fmt"
	"path/filepath"
	"runtime"
	"testing"
)

func TestPkgSpecsSetShorthand(t *testing.T) {
	fmt.Printf("[TestPkgSpecsSetShorthand] start GOOS=%s GOARCH=%s filepath.Separator=%q\n", runtime.GOOS, runtime.GOARCH, string(filepath.Separator))

	var specs pkgSpecs
	input := "cmp"
	fmt.Printf("[TestPkgSpecsSetShorthand] before Set input=%q specs=%#v\n", input, specs)
	if err := specs.Set(input); err != nil {
		fmt.Printf("[TestPkgSpecsSetShorthand] Set error input=%q err=%v\n", input, err)
		t.Fatalf("Set returned error: %v", err)
	}
	fmt.Printf("[TestPkgSpecsSetShorthand] after Set len=%d specs=%#v\n", len(specs), specs)

	if len(specs) != 1 {
		fmt.Printf("[TestPkgSpecsSetShorthand] unexpected len input=%q got=%d specs=%#v\n", input, len(specs), specs)
		t.Fatalf("expected 1 spec, got %d", len(specs))
	}

	fmt.Printf("[TestPkgSpecsSetShorthand] checking pkgPath got=%q\n", specs[0].pkgPath)
	if specs[0].pkgPath != "cmp" {
		t.Fatalf("pkgPath mismatch: %q", specs[0].pkgPath)
	}

	want := filepath.Join("test", "std", "cmp")
	fmt.Printf("[TestPkgSpecsSetShorthand] checking testDir got=%q want=%q\n", specs[0].testDir, want)
	if specs[0].testDir != want {
		t.Fatalf("testDir mismatch: got %q want %q", specs[0].testDir, want)
	}

	fmt.Printf("[TestPkgSpecsSetShorthand] end final spec=%#v\n", specs[0])
}

func TestPkgSpecsSetExplicit(t *testing.T) {
	fmt.Printf("[TestPkgSpecsSetExplicit] start GOOS=%s GOARCH=%s filepath.Separator=%q\n", runtime.GOOS, runtime.GOARCH, string(filepath.Separator))

	var specs pkgSpecs
	input := "cmp=test/std/cmp"
	fmt.Printf("[TestPkgSpecsSetExplicit] before Set input=%q specs=%#v\n", input, specs)
	if err := specs.Set(input); err != nil {
		fmt.Printf("[TestPkgSpecsSetExplicit] Set error input=%q err=%v\n", input, err)
		t.Fatalf("Set returned error: %v", err)
	}
	fmt.Printf("[TestPkgSpecsSetExplicit] after Set len=%d specs=%#v\n", len(specs), specs)

	if len(specs) != 1 {
		fmt.Printf("[TestPkgSpecsSetExplicit] unexpected len input=%q got=%d specs=%#v\n", input, len(specs), specs)
		t.Fatalf("expected 1 spec, got %d", len(specs))
	}

	fmt.Printf("[TestPkgSpecsSetExplicit] checking pkgPath got=%q\n", specs[0].pkgPath)
	if specs[0].pkgPath != "cmp" {
		t.Fatalf("pkgPath mismatch: %q", specs[0].pkgPath)
	}

	fmt.Printf("[TestPkgSpecsSetExplicit] checking testDir got=%q want=%q\n", specs[0].testDir, "test/std/cmp")
	if specs[0].testDir != "test/std/cmp" {
		t.Fatalf("testDir mismatch: %q", specs[0].testDir)
	}

	fmt.Printf("[TestPkgSpecsSetExplicit] end final spec=%#v\n", specs[0])
}
