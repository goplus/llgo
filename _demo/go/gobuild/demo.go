package main

import (
	"fmt"
	"go/build"
	"runtime"
)

func main() {
	fmt.Printf("runtime.Compiler = %q\n", runtime.Compiler)

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

	pkg, err := build.Import("fmt", "", build.FindOnly)
	if err != nil {
		panic(err)
	}
	fmt.Printf("Package: %s\n", pkg.ImportPath)
	fmt.Printf("Success! go/build works with llgo\n")
}
