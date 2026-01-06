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

package asyncpull

import (
	"testing"

	"github.com/goplus/llgo/async"
)

// runFuture runs a Future to completion and returns the result.
func runFuture[T any](f async.Future[T]) T {
	ctx := &async.Context{}
	for {
		poll := f.Poll(ctx)
		if poll.IsReady() {
			return poll.Value()
		}
		// In a real executor, this would block until woken
		// For testing, we just spin
	}
}

// TestBasicAsync tests a simple async function with one await.
func TestBasicAsync(t *testing.T) {
	result := runFuture(BasicAsync())
	expected := 42 // 21 * 2
	if result != expected {
		t.Errorf("BasicAsync() = %d, want %d", result, expected)
	}
}

// TestSequentialAsync tests chained awaits.
func TestSequentialAsync(t *testing.T) {
	result := runFuture(SequentialAsync(5))
	expected := 20 // 5 * 2 * 2
	if result != expected {
		t.Errorf("SequentialAsync(5) = %d, want %d", result, expected)
	}
}

// TestAddAsync tests adding two async results.
func TestAddAsync(t *testing.T) {
	result := runFuture(AddAsync(3, 5))
	expected := 16 // (3*2) + (5*2) = 6 + 10 = 16
	if result != expected {
		t.Errorf("AddAsync(3, 5) = %d, want %d", result, expected)
	}
}

// TestConditionalAsyncTrue tests await in true branch.
func TestConditionalAsyncTrue(t *testing.T) {
	result := runFuture(ConditionalAsync(true))
	expected := 20 // 10 * 2
	if result != expected {
		t.Errorf("ConditionalAsync(true) = %d, want %d", result, expected)
	}
}

// TestConditionalAsyncFalse tests await in false branch.
func TestConditionalAsyncFalse(t *testing.T) {
	result := runFuture(ConditionalAsync(false))
	expected := 40 // 20 * 2
	if result != expected {
		t.Errorf("ConditionalAsync(false) = %d, want %d", result, expected)
	}
}

// TestLoopAsync tests await inside a loop.
func TestLoopAsync(t *testing.T) {
	result := runFuture(LoopAsync(4))
	// 0*2 + 1*2 + 2*2 + 3*2 = 0 + 2 + 4 + 6 = 12
	expected := 12
	if result != expected {
		t.Errorf("LoopAsync(4) = %d, want %d", result, expected)
	}
}

// TestLoopAsyncZero tests loop with zero iterations.
func TestLoopAsyncZero(t *testing.T) {
	result := runFuture(LoopAsync(0))
	expected := 0
	if result != expected {
		t.Errorf("LoopAsync(0) = %d, want %d", result, expected)
	}
}

// TestCrossVarAsync tests variable preservation across suspend points.
func TestCrossVarAsync(t *testing.T) {
	result := runFuture(CrossVarAsync(10))
	// a = 10 * 2 = 20
	// b = a + 3 = 23
	expected := 23
	if result != expected {
		t.Errorf("CrossVarAsync(10) = %d, want %d", result, expected)
	}
}

// TestMultiReturnAsyncEarlyExit tests early return in async function.
func TestMultiReturnAsyncEarlyExit(t *testing.T) {
	result := runFuture(MultiReturnAsync(100))
	// first = 100 * 2 = 200 > 100, return 200
	expected := 200
	if result != expected {
		t.Errorf("MultiReturnAsync(100) = %d, want %d", result, expected)
	}
}

// TestMultiReturnAsyncNormal tests normal return in async function.
func TestMultiReturnAsyncNormal(t *testing.T) {
	result := runFuture(MultiReturnAsync(10))
	// first = 10 * 2 = 20 <= 100
	// second = 20 * 2 = 40
	expected := 40
	if result != expected {
		t.Errorf("MultiReturnAsync(10) = %d, want %d", result, expected)
	}
}

// TestNestedAsync tests calling an async function from another.
func TestNestedAsync(t *testing.T) {
	result := runFuture(NestedAsync())
	// BasicAsync returns 42, + 1 = 43
	expected := 43
	if result != expected {
		t.Errorf("NestedAsync() = %d, want %d", result, expected)
	}
}
