package main

import (
	"fmt"
	"go/build"
	"runtime"
	"strings"
)

func main() {
	fmt.Println("=== Testing go/build package with llgo ===")
	fmt.Println()

	// Test 1: runtime.Compiler
	fmt.Printf("1. runtime.Compiler = %q\n", runtime.Compiler)
	if runtime.Compiler != "llgo" {
		panic(fmt.Sprintf("expected runtime.Compiler to be \"llgo\", got %q", runtime.Compiler))
	}

	// Test 2: build.Default.Compiler
	ctx := build.Default
	fmt.Printf("2. build.Default.Compiler = %q\n", ctx.Compiler)
	if ctx.Compiler != "gc" {
		panic(fmt.Sprintf("expected build.Default.Compiler to be \"gc\", got %q", ctx.Compiler))
	}

	// Test 3: ToolTags
	if len(ctx.ToolTags) == 0 {
		panic("expected build.Default.ToolTags to be non-empty")
	}
	fmt.Printf("3. build.Default.ToolTags = %v\n", ctx.ToolTags)

	// Test 4: ReleaseTags
	if len(ctx.ReleaseTags) == 0 {
		panic("expected build.Default.ReleaseTags to be non-empty")
	}
	fmt.Printf("4. build.Default.ReleaseTags count = %d\n", len(ctx.ReleaseTags))
	fmt.Printf("   First: %s, Last: %s\n", ctx.ReleaseTags[0], ctx.ReleaseTags[len(ctx.ReleaseTags)-1])

	// Test 5: GOARCH and GOOS
	fmt.Printf("5. build.Default.GOARCH = %q (runtime: %q)\n", ctx.GOARCH, runtime.GOARCH)
	if ctx.GOARCH != runtime.GOARCH {
		panic(fmt.Sprintf("GOARCH mismatch: build=%q, runtime=%q", ctx.GOARCH, runtime.GOARCH))
	}
	fmt.Printf("6. build.Default.GOOS = %q (runtime: %q)\n", ctx.GOOS, runtime.GOOS)
	if ctx.GOOS != runtime.GOOS {
		panic(fmt.Sprintf("GOOS mismatch: build=%q, runtime=%q", ctx.GOOS, runtime.GOOS))
	}

	// Test 6: GOROOT
	fmt.Printf("7. build.Default.GOROOT = %q\n", ctx.GOROOT)
	if ctx.GOROOT == "" {
		panic("expected GOROOT to be non-empty")
	}

	// Test 7: GOPATH
	fmt.Printf("8. build.Default.GOPATH = %q\n", ctx.GOPATH)

	// Test 8: CgoEnabled
	fmt.Printf("9. build.Default.CgoEnabled = %v\n", ctx.CgoEnabled)

	// Test 9: Import package
	pkg, err := build.Import("fmt", "", build.FindOnly)
	if err != nil {
		panic(fmt.Sprintf("failed to import fmt: %v", err))
	}
	fmt.Printf("10. Import \"fmt\":\n")
	fmt.Printf("    ImportPath: %s\n", pkg.ImportPath)
	fmt.Printf("    Dir: %s\n", pkg.Dir)

	// Test 10: Import another standard library package
	pkg2, err := build.Import("strings", "", build.FindOnly)
	if err != nil {
		panic(fmt.Sprintf("failed to import strings: %v", err))
	}
	fmt.Printf("11. Import \"strings\":\n")
	fmt.Printf("    ImportPath: %s\n", pkg2.ImportPath)
	fmt.Printf("    Dir: %s\n", pkg2.Dir)

	// Test 11: Check release tags contain expected versions
	hasGo118 := false
	hasGo120 := false
	for _, tag := range ctx.ReleaseTags {
		if tag == "go1.18" {
			hasGo118 = true
		}
		if tag == "go1.20" {
			hasGo120 = true
		}
	}
	if !hasGo118 || !hasGo120 {
		panic("expected ReleaseTags to contain at least go1.18 and go1.20")
	}
	fmt.Printf("12. ReleaseTags validation: contains go1.18 and go1.20 ✓\n")

	// Test 12: Verify last release tag matches or exceeds go1.20
	lastTag := ctx.ReleaseTags[len(ctx.ReleaseTags)-1]
	if !strings.HasPrefix(lastTag, "go1.") {
		panic(fmt.Sprintf("unexpected release tag format: %s", lastTag))
	}
	fmt.Printf("13. Latest release tag: %s ✓\n", lastTag)

	fmt.Println("\n=== All tests passed! ===")
	fmt.Println("Success! go/build works correctly with llgo")
}
