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

// NOTE: The current pull model implementation generates state machine skeletons,
// but the actual Await logic is not yet implemented. These tests verify that:
// 1. The compiler transforms async functions correctly
// 2. Helper functions work properly
// 3. The generated code compiles without errors

// TestComputeHelper tests the Compute helper function directly.
func TestComputeHelper(t *testing.T) {
	future := Compute(21)
	ctx := &async.Context{}

	// Poll the future
	poll := future.Poll(ctx)

	// AsyncFuture should resolve immediately for simple computations
	if !poll.IsReady() {
		t.Error("Compute(21) should be ready immediately")
		return
	}

	result := poll.Value()
	expected := 42 // 21 * 2
	if result != expected {
		t.Errorf("Compute(21) = %d, want %d", result, expected)
	}
}

// TestAddHelper tests the Add helper function directly.
func TestAddHelper(t *testing.T) {
	future := Add(10, 20)
	ctx := &async.Context{}

	poll := future.Poll(ctx)

	if !poll.IsReady() {
		t.Error("Add(10, 20) should be ready immediately")
		return
	}

	result := poll.Value()
	expected := 30
	if result != expected {
		t.Errorf("Add(10, 20) = %d, want %d", result, expected)
	}
}

// TestDelayHelper tests the Delay helper function.
func TestDelayHelper(t *testing.T) {
	future := Delay()
	ctx := &async.Context{}

	poll := future.Poll(ctx)

	if !poll.IsReady() {
		t.Error("Delay() should be ready immediately (mock implementation)")
	}
}

// TestAsyncFuturePollTwice tests that polling a ready future returns the same value.
func TestAsyncFuturePollTwice(t *testing.T) {
	future := Compute(5)
	ctx := &async.Context{}

	// First poll
	poll1 := future.Poll(ctx)
	if !poll1.IsReady() {
		t.Error("First poll should be ready")
		return
	}

	// Second poll
	poll2 := future.Poll(ctx)
	if !poll2.IsReady() {
		t.Error("Second poll should also be ready")
		return
	}

	if poll1.Value() != poll2.Value() {
		t.Errorf("Poll values differ: %d vs %d", poll1.Value(), poll2.Value())
	}
}

// TestReadyFuture tests the async.Return function.
func TestReadyFuture(t *testing.T) {
	future := async.Return(100)
	ctx := &async.Context{}

	poll := future.Poll(ctx)

	if !poll.IsReady() {
		t.Error("ReadyFuture should always be ready")
		return
	}

	result := poll.Value()
	if result != 100 {
		t.Errorf("ReadyFuture value = %d, want 100", result)
	}
}

// TestPollPending tests the Pending poll result.
func TestPollPending(t *testing.T) {
	poll := async.Pending[int]()

	if poll.IsReady() {
		t.Error("Pending poll should not be ready")
	}
}

// TestPollReady tests the Ready poll result.
func TestPollReady(t *testing.T) {
	poll := async.Ready(42)

	if !poll.IsReady() {
		t.Error("Ready poll should be ready")
		return
	}

	if poll.Value() != 42 {
		t.Errorf("Ready poll value = %d, want 42", poll.Value())
	}
}
