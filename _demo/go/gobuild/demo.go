package main

import (
	"fmt"
	"go/build"
	"runtime"
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

	// Test 2: build.Import with FindOnly
	pkg, err := build.Import("fmt", "", build.FindOnly)
	if err != nil {
		panic(fmt.Sprintf("build.Import failed: %v", err))
	}
	fmt.Printf("build.Import(\"fmt\"): %s\n", pkg.ImportPath)

	// Test 3: build.ImportDir
	dirPkg, err := build.ImportDir(".", build.FindOnly)
	if err != nil {
		panic(fmt.Sprintf("build.ImportDir failed: %v", err))
	}
	fmt.Printf("build.ImportDir(\".\"): %s\n", dirPkg.Name)

	// Test 4: build.IsLocalImport
	if !build.IsLocalImport("./foo") {
		panic("expected \"./foo\" to be a local import")
	}
	if build.IsLocalImport("fmt") {
		panic("expected \"fmt\" not to be a local import")
	}
	fmt.Printf("build.IsLocalImport works correctly\n")

	fmt.Printf("Success! All go/build public functions work with llgo\n")
}
