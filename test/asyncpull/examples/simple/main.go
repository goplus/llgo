//go:build llgo
// +build llgo

package main

import (
	"fmt"

	"github.com/goplus/llgo/async"
)

// SimpleAsync has a single Await, no cross-var capture issues
func SimpleAsync() async.Future[async.Void] {
	// Simple await with no captured variables in closure
	_ = async.Async(func(resolve func(int)) {
		resolve(42) // No external variable capture
	}).Await()

	fmt.Println("After await!")
	return async.Return(async.Void{})
}

func main() {
	fmt.Println("=== Simple Async Test ===")

	f := SimpleAsync()
	fmt.Printf("Future type: %T\n", f)

	ctx := &async.Context{}

	fmt.Println("Poll 1...")
	result := f.Poll(ctx)
	fmt.Printf("Poll 1: ready=%v\n", result.IsReady())

	if !result.IsReady() {
		fmt.Println("Poll 2...")
		result = f.Poll(ctx)
		fmt.Printf("Poll 2: ready=%v\n", result.IsReady())
	}

	fmt.Println("Done!")
}
