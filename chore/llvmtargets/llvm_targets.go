package main

import (
	"fmt"

	"github.com/goplus/llvm"
)

func main() {
	llvm.InitializeAllTargetInfos()
	llvm.InitializeAllTargets()
	llvm.InitializeAllTargetMCs()
	llvm.InitializeNativeTarget()
	fmt.Println("targets:")
	for it := llvm.FirstTarget(); it.C != nil; it = it.NextTarget() {
		fmt.Printf("- %s: %s\n", it.Name(), it.Description())
	}
}
