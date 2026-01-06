//go:build llgo
// +build llgo

/*
 * Example: Compiler-generated async state machine demo.
 *
 * This example demonstrates the compiler AUTOMATICALLY generating
 * the state machine from user-written async code.
 *
 * Usage:
 *   go run ./cmd/llgo run ./test/asyncpull/examples/auto/
 */
package main

import (
	"fmt"

	"github.com/goplus/llgo/async"
	"github.com/goplus/llgo/async/sync"
)

// ComputeAsync is an async function that the compiler transforms.
// The compiler detects this returns Future[T] and transforms it
// into a state machine automatically.
func ComputeAsync(x int) async.Future[async.Void] {
	// Step 1: Call an async operation and await
	result1 := async.Async(func(resolve func(int)) {
		resolve(x * 2)
	}).Await()

	// Step 2: Print intermediate result
	fmt.Printf("Step 1 result: %d\n", result1)

	// Step 3: Another async operation
	result2 := async.Async(func(resolve func(int)) {
		resolve(result1 + 10)
	}).Await()

	// Step 4: Return final result
	fmt.Printf("Step 2 result: %d (expected: 20)\n", result2)
	return async.Return(async.Void{})
}

func main() {
	fmt.Println("=== Compiler-Generated Async Demo ===")
	fmt.Println()

	// Create sync executor
	exec := sync.New()

	// Spawn the async function
	exec.Spawn(func() async.Future[async.Void] {
		return ComputeAsync(5)
	})

	// Run the executor
	exec.Run()

	fmt.Println("\n=== Demo completed! ===")
}
