//go:build llgo
// +build llgo

/*
 * Simplified sleep demo to debug nil pointer issues.
 */
package main

import (
	"fmt"

	"github.com/goplus/lib/c/libuv"
	"github.com/goplus/llgo/async"
)

func main() {
	fmt.Println("=== Pull Model Async Sleep Demo ===")

	// Test libuv loop directly
	loop := libuv.DefaultLoop()
	fmt.Printf("Got loop: %p\n", loop)

	if loop == nil {
		fmt.Println("ERROR: loop is nil!")
		return
	}

	// Create a simple timer directly
	var timer libuv.Timer
	libuv.InitTimer(loop, &timer)
	fmt.Println("Timer initialized")

	timerFired := false
	timer.Start(func(t *libuv.Timer) {
		fmt.Println("Timer fired!")
		timerFired = true
		t.Stop()
	}, 100, 0)
	fmt.Println("Timer started, running loop...")

	loop.Run(libuv.RUN_DEFAULT)
	fmt.Println("Loop finished")

	if timerFired {
		fmt.Println("SUCCESS: Timer callback executed!")
	} else {
		fmt.Println("ERROR: Timer callback did not execute!")
	}
}

// Unused but needed for package
var _ async.Void
