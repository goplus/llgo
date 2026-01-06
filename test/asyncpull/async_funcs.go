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

// Delay returns an async future that resolves after a simulated delay.
func Delay(ms int) *async.AsyncFuture[async.Void] {
	return async.Async(func(resolve func(async.Void)) {
		// In a real implementation, this would use timers
		// For testing, we resolve immediately
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

// Fetch simulates fetching data and returns an async future.
func Fetch(id int) *async.AsyncFuture[string] {
	return async.Async(func(resolve func(string)) {
		if id == 1 {
			resolve("data-1")
		} else if id == 2 {
			resolve("data-2")
		} else {
			resolve("unknown")
		}
	})
}

// -----------------------------------------------------------------------------
// Async functions using pull model (transformed by compiler)
// -----------------------------------------------------------------------------

// BasicAsync is a simple async function with one await.
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

// DeferAsync has defer with await.
func DeferAsync() async.Future[int] {
	var cleanup int
	defer func() {
		cleanup = -1
	}()
	result := Compute(50).Await()
	return async.Return(result + cleanup)
}

// NestedAsync calls another async function.
func NestedAsync() async.Future[int] {
	inner := BasicAsync()
	// Note: We need to poll the inner future manually since it returns Future[int]
	// In a full implementation, we would have syntax for this
	ctx := &async.Context{}
	poll := inner.Poll(ctx)
	for !poll.IsReady() {
		poll = inner.Poll(ctx)
	}
	return async.Return(poll.Value() + 1)
}

// CrossVarAsync tests cross-suspend variable preservation.
func CrossVarAsync(x int) async.Future[int] {
	a := x * 2             // Define before suspend
	_ = Compute(1).Await() // Suspend point
	b := a + 3             // Use a after suspend
	return async.Return(b)
}

// MultiReturnAsync returns multiple async results.
func MultiReturnAsync(x int) async.Future[int] {
	first := Compute(x).Await()
	if first > 100 {
		return async.Return(first)
	}
	second := Compute(first).Await()
	return async.Return(second)
}
