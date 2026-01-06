//go:build llgo
// +build llgo

/*
 * Example: Sync executor demo using pull-based async/await model.
 *
 * This demonstrates the async model without libuv:
 * 1. Define async functions returning Future[T]
 * 2. Use sync.BlockOn to run them synchronously
 *
 * Usage:
 *   go run ./cmd/llgo run ./test/asyncpull/examples/sync
 */
package main

import (
	"fmt"

	"github.com/goplus/llgo/async"
	"github.com/goplus/llgo/async/sync"
)

func main() {
	fmt.Println("=== Pull Model Sync Demo ===")
	fmt.Println()

	// Test 1: Simple ready future
	fmt.Println("Test 1: Ready future")
	result1 := sync.BlockOn(async.Return(42))
	fmt.Printf("  Result: %d (expected: 42)\n", result1)

	// Test 2: AsyncFuture with immediate callback
	fmt.Println("\nTest 2: AsyncFuture with immediate callback")
	future2 := async.Async(func(resolve func(int)) {
		resolve(100)
	})
	result2 := sync.BlockOn[int](future2)
	fmt.Printf("  Result: %d (expected: 100)\n", result2)

	// Test 3: Chained computation (manual state machine)
	fmt.Println("\nTest 3: Manual state machine computation")
	future3 := &computeDemo{input: 5}
	result3 := sync.BlockOn[int](future3)
	fmt.Printf("  Result: %d (expected: 10)\n", result3)

	// Test 4: Sequential operations (manual state machine)
	fmt.Println("\nTest 4: Sequential state machine")
	future4 := &sequentialDemo{input: 3}
	result4 := sync.BlockOn[int](future4)
	fmt.Printf("  Result: %d (expected: 12)\n", result4) // 3*2*2

	fmt.Println("\n=== All tests completed! ===")
}

// computeDemo is a manually-written Future that doubles a value
// This simulates what the compiler would generate for:
//
//	func Compute(x int) Future[int] { return async.Return(x * 2) }
type computeDemo struct {
	input int
}

func (c *computeDemo) Poll(ctx *async.Context) async.Poll[int] {
	return async.Ready(c.input * 2)
}

// sequentialDemo is a manually-written Future for sequential computation
// This simulates what the compiler would generate for:
//
//	func Sequential(x int) Future[int] {
//	    a := Compute(x).Await()  // x * 2
//	    b := Compute(a).Await()  // a * 2 = x * 4
//	    return async.Return(b)
//	}
type sequentialDemo struct {
	input int
	state int
	a     int
}

func (s *sequentialDemo) Poll(ctx *async.Context) async.Poll[int] {
	switch s.state {
	case 0:
		// First computation: x * 2
		s.a = s.input * 2
		s.state = 1
		fallthrough
	case 1:
		// Second computation: a * 2
		result := s.a * 2
		return async.Ready(result)
	}
	return async.Pending[int]()
}
