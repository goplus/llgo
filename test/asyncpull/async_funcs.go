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

// Package asyncpull contains integration tests for the pull-based async/await model.
// These tests only run with llgo because they use the async transformation.
package asyncpull

import (
	"github.com/goplus/llgo/async"
)

// -----------------------------------------------------------------------------
// Helper functions for creating async operations
// -----------------------------------------------------------------------------

// Delay returns an async future that resolves immediately.
func Delay() *async.AsyncFuture[async.Void] {
	return async.Async(func(resolve func(async.Void)) {
		resolve(async.Void{})
	})
}

// Compute returns an async future that computes x * 2.
func Compute(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x * 2)
	})
}

// Add returns an async future that computes a + b.
func Add(a, b int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(a + b)
	})
}

// -----------------------------------------------------------------------------
// These async functions are transformed by the compiler to state machines.
// NOTE: The current implementation generates the state machine skeleton,
// but the actual Await logic is not yet implemented.
// These functions exist to verify that code generation works correctly.
// -----------------------------------------------------------------------------

// BasicAsync is a simple async function with one await.
// After transformation: returns a state machine struct, not the result.
func BasicAsync() async.Future[int] {
	result := Compute(21).Await()
	return async.Return(result)
}

// SequentialAsync chains multiple awaits.
func SequentialAsync(x int) async.Future[int] {
	a := Compute(x).Await() // x * 2
	b := Compute(a).Await() // a * 2 = x * 4
	return async.Return(b)
}

// AddAsync adds two async results.
func AddAsync(x, y int) async.Future[int] {
	a := Compute(x).Await()
	b := Compute(y).Await()
	sum := Add(a, b).Await()
	return async.Return(sum)
}

// ConditionalAsync has await in conditional branches.
func ConditionalAsync(cond bool) async.Future[int] {
	var result int
	if cond {
		result = Compute(10).Await()
	} else {
		result = Compute(20).Await()
	}
	return async.Return(result)
}

// LoopAsync has await inside a loop.
func LoopAsync(n int) async.Future[int] {
	total := 0
	for i := 0; i < n; i++ {
		v := Compute(i).Await()
		total += v
	}
	return async.Return(total)
}

// CrossVarAsync tests cross-suspend variable preservation.
func CrossVarAsync(x int) async.Future[int] {
	a := x * 2             // Define before suspend
	_ = Compute(1).Await() // Suspend point
	b := a + 3             // Use a after suspend
	return async.Return(b)
}
