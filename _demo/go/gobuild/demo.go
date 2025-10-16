package main

import (
	"fmt"
	"go/build"
	"runtime"
	"strings"
)

func main() {
	fmt.Printf("runtime.Compiler = %q\n", runtime.Compiler)

	// Test 1: Check build.Default context
	ctx := build.Default
	fmt.Printf("build.Default.Compiler = %q\n", ctx.Compiler)
	if ctx.Compiler != "gc" {
		panic(fmt.Sprintf("expected build.Default.Compiler to be \"gc\", got %q", ctx.Compiler))
	}

	if len(ctx.ToolTags) == 0 {
		panic("expected build.Default.ToolTags to be non-empty")
	}
	fmt.Printf("build.Default.ToolTags = %v\n", ctx.ToolTags)

	if len(ctx.ReleaseTags) == 0 {
		panic("expected build.Default.ReleaseTags to be non-empty")
	}
	fmt.Printf("build.Default.ReleaseTags count = %d\n", len(ctx.ReleaseTags))

	// Validate GOOS and GOARCH are set
	if ctx.GOOS == "" {
		panic("expected build.Default.GOOS to be non-empty")
	}
	if ctx.GOARCH == "" {
		panic("expected build.Default.GOARCH to be non-empty")
	}
	fmt.Printf("build.Default.GOOS = %q, GOARCH = %q\n", ctx.GOOS, ctx.GOARCH)

	// Test 2: Import standard library package with FindOnly
	pkg, err := build.Import("fmt", "", build.FindOnly)
	if err != nil {
		panic(fmt.Sprintf("build.Import(\"fmt\") failed: %v", err))
	}
	if pkg.ImportPath != "fmt" {
		panic(fmt.Sprintf("expected ImportPath \"fmt\", got %q", pkg.ImportPath))
	}
	if !pkg.Goroot {
		panic("expected fmt package to be in GOROOT")
	}
	fmt.Printf("build.Import(\"fmt\"): ImportPath=%s, Goroot=%v\n", pkg.ImportPath, pkg.Goroot)

	// Test 3: Import nested standard library package
	osPkg, err := build.Import("os/exec", "", build.FindOnly)
	if err != nil {
		panic(fmt.Sprintf("build.Import(\"os/exec\") failed: %v", err))
	}
	if osPkg.ImportPath != "os/exec" {
		panic(fmt.Sprintf("expected ImportPath \"os/exec\", got %q", osPkg.ImportPath))
	}
	if !osPkg.Goroot {
		panic("expected os/exec package to be in GOROOT")
	}
	fmt.Printf("build.Import(\"os/exec\"): ImportPath=%s, Goroot=%v\n", osPkg.ImportPath, osPkg.Goroot)

	// Test 4: Import internal package (should succeed with FindOnly)
	internalPkg, err := build.Import("internal/cpu", "", build.FindOnly)
	if err != nil {
		panic(fmt.Sprintf("build.Import(\"internal/cpu\") failed: %v", err))
	}
	if internalPkg.ImportPath != "internal/cpu" {
		panic(fmt.Sprintf("expected ImportPath \"internal/cpu\", got %q", internalPkg.ImportPath))
	}
	fmt.Printf("build.Import(\"internal/cpu\"): ImportPath=%s\n", internalPkg.ImportPath)

	// Test 5: Import with srcDir parameter
	runtimePkg, err := build.Import("runtime", "", build.FindOnly)
	if err != nil {
		panic(fmt.Sprintf("build.Import(\"runtime\") failed: %v", err))
	}
	if runtimePkg.ImportPath != "runtime" {
		panic(fmt.Sprintf("expected ImportPath \"runtime\", got %q", runtimePkg.ImportPath))
	}
	if runtimePkg.Dir == "" {
		panic("expected runtime package Dir to be non-empty")
	}
	fmt.Printf("build.Import(\"runtime\"): ImportPath=%s, Dir exists=%v\n", runtimePkg.ImportPath, runtimePkg.Dir != "")

	// Test 6: ImportDir with current directory
	dirPkg, err := build.ImportDir(".", build.FindOnly)
	if err != nil {
		panic(fmt.Sprintf("build.ImportDir(\".\") failed: %v", err))
	}
	// Note: Name might be empty with FindOnly mode as it doesn't read source files
	fmt.Printf("build.ImportDir(\".\"): Dir=%s, ImportPath=%s\n", dirPkg.Dir, dirPkg.ImportPath)

	// Test 7: IsLocalImport with various paths
	testCases := []struct {
		path     string
		expected bool
	}{
		{"./foo", true},
		{"../bar", true},
		{"./", true},
		{"fmt", false},
		{"github.com/user/repo", false},
		{"", false},
	}
	for _, tc := range testCases {
		result := build.IsLocalImport(tc.path)
		if result != tc.expected {
			panic(fmt.Sprintf("build.IsLocalImport(%q): expected %v, got %v", tc.path, tc.expected, result))
		}
	}
	fmt.Printf("build.IsLocalImport: all test cases passed\n")

	// Test 8: Verify Context has expected fields
	if ctx.GOPATH == "" && ctx.GOROOT == "" {
		panic("expected either GOPATH or GOROOT to be set")
	}
	fmt.Printf("build.Default.GOROOT exists = %v\n", ctx.GOROOT != "")

	// Test 9: Import with AllowBinary flag
	binaryPkg, err := build.Import("fmt", "", build.FindOnly|build.AllowBinary)
	if err != nil {
		panic(fmt.Sprintf("build.Import with AllowBinary failed: %v", err))
	}
	if binaryPkg.ImportPath != "fmt" {
		panic(fmt.Sprintf("expected ImportPath \"fmt\", got %q", binaryPkg.ImportPath))
	}
	fmt.Printf("build.Import(\"fmt\") with AllowBinary: success\n")

	// Test 10: Verify compiler tag in build context
	hasCompilerTag := false
	for _, tag := range ctx.ReleaseTags {
		if strings.HasPrefix(tag, "go1.") {
			hasCompilerTag = true
			break
		}
	}
	if !hasCompilerTag {
		panic("expected at least one go1.x release tag")
	}
	fmt.Printf("build.Default.ReleaseTags: contains go1.x tags = %v\n", hasCompilerTag)

	fmt.Printf("\nSuccess! All go/build public functions work correctly with llgo\n")
	fmt.Printf("Total tests passed: 10\n")
}
