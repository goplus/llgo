//go:build llgo
// +build llgo

/*
 * Example: Async sleep demo showing what user code looks like.
 *
 * User writes:
 *   func MainAsync() async.Future[async.Void] {
 *       Sleep(100).Await()
 *       fmt.Println("After 100ms")
 *       Sleep(200).Await()
 *       fmt.Println("After 200ms more")
 *       return async.Return(async.Void{})
 *   }
 *
 * Compiler automatically generates the state machine.
 *
 * Usage:
 *   go run ./cmd/llgo run ./test/asyncpull/examples/sleep
 */
package main

import (
	"fmt"

	"github.com/goplus/llgo/async"
	"github.com/goplus/llgo/async/libuv"
)

// Global executor (in real app, would be passed as parameter)
var exec *libuv.Executor

// Sleep is a helper that returns a SleepFuture.
// This is what users would call in their async functions.
func Sleep(ms uint64) *libuv.SleepFuture {
	return libuv.Sleep(exec, ms)
}

func main() {
	fmt.Println("=== Pull Model Async Sleep Demo ===")
	fmt.Println()

	// Create libuv executor
	exec = libuv.New()

	// Spawn MainAsync
	exec.Spawn(func() async.Future[async.Void] {
		return MainAsync()
	})

	// Run the event loop
	fmt.Println("Starting event loop...")
	exec.Run()
	fmt.Println("\nEvent loop completed!")
}

// MainAsync is what the USER writes.
// The compiler transforms this into a state machine.
//
// NOTE: Currently .Await() is not yet implemented by the compiler,
// so we manually write the state machine below as a demonstration
// of what the compiler SHOULD generate.
//
// User code (not yet working):
/*
func MainAsync() async.Future[async.Void] {
	Sleep(100).Await()
	fmt.Println("After 100ms")
	Sleep(200).Await()
	fmt.Println("After 200ms more")
	return async.Return(async.Void{})
}
*/

// What the compiler SHOULD generate from the above user code:
func MainAsync() async.Future[async.Void] {
	// Compiler generates: return &MainAsync_State{state: 0}
	return &MainAsync_State{state: 0}
}

// Compiler-generated state machine for MainAsync
type MainAsync_State struct {
	state int
	sub0  *libuv.SleepFuture // Sleep(100)
	sub1  *libuv.SleepFuture // Sleep(200)
}

func (s *MainAsync_State) Poll(ctx *async.Context) async.Poll[async.Void] {
	switch s.state {
	case 0:
		// Sleep(100).Await() - create future
		s.sub0 = Sleep(100)
		s.state = 1
		fallthrough

	case 1:
		// Sleep(100).Await() - poll until ready
		poll := s.sub0.Poll(ctx)
		if !poll.IsReady() {
			return async.Pending[async.Void]()
		}
		// After await completes
		fmt.Println("After 100ms")
		s.state = 2
		fallthrough

	case 2:
		// Sleep(200).Await() - create future
		s.sub1 = Sleep(200)
		s.state = 3
		fallthrough

	case 3:
		// Sleep(200).Await() - poll until ready
		poll := s.sub1.Poll(ctx)
		if !poll.IsReady() {
			return async.Pending[async.Void]()
		}
		// After await completes
		fmt.Println("After 200ms more")
		s.state = 4
		fallthrough

	case 4:
		// return async.Return(async.Void{})
		return async.Ready(async.Void{})
	}

	return async.Pending[async.Void]()
}
