package main

import (
	"fmt"

	"github.com/goplus/llgo/async"
	"github.com/goplus/llgo/async/sync"
)

var executed bool

func cleanup() {
	fmt.Println("Cleanup executed")
	executed = true
}

// Step returns an async future
func Step(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

// TestSimpleDefer tests basic defer functionality
func TestSimpleDefer() async.Future[int] {
	defer cleanup()
	fmt.Println("Inside TestSimpleDefer")

	// Add an await to trigger state machine transformation
	x := Step(21).Await()

	return async.Return(x * 2)
}

func main() {
	fmt.Println("Starting defer test...")
	result := sync.BlockOn(TestSimpleDefer())

	fmt.Printf("Result: %d\n", result)
	if executed {
		fmt.Println("✓ Defer executed successfully!")
	} else {
		fmt.Println("✗ Defer did NOT execute")
	}
}
