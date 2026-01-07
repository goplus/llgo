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

// TestSimpleDefer tests basic defer functionality
func TestSimpleDefer() async.Future[int] {
	defer cleanup()
	fmt.Println("Inside TestSimpleDefer")
	return async.Return(42)
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
