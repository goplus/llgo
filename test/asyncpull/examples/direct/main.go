//go:build llgo
// +build llgo

package main

import (
	"fmt"

	"github.com/goplus/llgo/async"
)

func main() {
	fmt.Println("=== Direct Async Test ===")

	// Create async future with synchronous resolve
	f := async.Async(func(resolve func(int)) {
		fmt.Println("Inside fn, calling resolve(42)")
		resolve(42)
	})

	fmt.Printf("Future created: %T\n", f)

	// Create context
	ctx := &async.Context{}

	// Poll 1
	fmt.Println("Polling...")
	result := f.Poll(ctx)
	fmt.Printf("Poll result: ready=%v, value=%v\n", result.IsReady(), result.Value())

	fmt.Println("Done!")
}
