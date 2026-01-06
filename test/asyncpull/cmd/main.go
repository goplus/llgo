//go:build llgo
// +build llgo

/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// This file provides a simple main function to demonstrate
// pull-based async/await usage. Run with: llgo run .
package main

import (
	"fmt"

	"github.com/goplus/llgo/async"
	"github.com/goplus/llgo/test/asyncpull"
)

func main() {
	fmt.Println("=== Pull Model Async/Await Demo ===")
	fmt.Println()

	// Run BasicAsync
	fmt.Print("BasicAsync: ")
	result := runFuture(asyncpull.BasicAsync())
	fmt.Printf("%d (expected: 42)\n", result)

	// Run SequentialAsync
	fmt.Print("SequentialAsync(5): ")
	result = runFuture(asyncpull.SequentialAsync(5))
	fmt.Printf("%d (expected: 20)\n", result)

	// Run AddAsync
	fmt.Print("AddAsync(3, 5): ")
	result = runFuture(asyncpull.AddAsync(3, 5))
	fmt.Printf("%d (expected: 16)\n", result)

	// Run LoopAsync
	fmt.Print("LoopAsync(4): ")
	result = runFuture(asyncpull.LoopAsync(4))
	fmt.Printf("%d (expected: 12)\n", result)

	// Run CrossVarAsync
	fmt.Print("CrossVarAsync(10): ")
	result = runFuture(asyncpull.CrossVarAsync(10))
	fmt.Printf("%d (expected: 23)\n", result)

	fmt.Println()
	fmt.Println("=== All demos completed ===")
}

// runFuture runs a Future to completion and returns the result.
func runFuture[T any](f async.Future[T]) T {
	ctx := &async.Context{}
	for {
		poll := f.Poll(ctx)
		if poll.IsReady() {
			return poll.Value()
		}
	}
}
