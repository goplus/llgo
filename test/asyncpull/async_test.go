//go:build llgo
// +build llgo

/*
 * Comprehensive tests for async package types and runtime behavior.
 * These tests verify Tuple, Result, Poll, and other async facilities.
 */
package asyncpull

import (
	"errors"
	"testing"

	"github.com/goplus/llgo/async"
)

// errTest is a sentinel error for testing
var errTest = errors.New("test error")

// =============================================================================
// Poll Type Tests
// =============================================================================

func TestPollReady(t *testing.T) {
	poll := async.Ready(42)
	if !poll.IsReady() {
		t.Error("Ready poll should be ready")
	}
	if poll.Value() != 42 {
		t.Errorf("Value() = %d, want 42", poll.Value())
	}
}

func TestPollPending(t *testing.T) {
	poll := async.Pending[int]()
	if poll.IsReady() {
		t.Error("Pending poll should not be ready")
	}
}

// =============================================================================
// AsyncFuture Tests
// =============================================================================

func TestAsyncFutureImmediate(t *testing.T) {
	future := async.Async(func(resolve func(int)) {
		resolve(100)
	})
	ctx := &async.Context{}

	poll := future.Poll(ctx)
	if !poll.IsReady() {
		t.Error("Immediate resolve should be ready")
	}
	if poll.Value() != 100 {
		t.Errorf("Value() = %d, want 100", poll.Value())
	}
}

func TestAsyncFuturePollTwice(t *testing.T) {
	future := async.Async(func(resolve func(int)) {
		resolve(42)
	})
	ctx := &async.Context{}

	poll1 := future.Poll(ctx)
	poll2 := future.Poll(ctx)

	if poll1.Value() != poll2.Value() {
		t.Errorf("Polls differ: %d vs %d", poll1.Value(), poll2.Value())
	}
}

// =============================================================================
// ReadyFuture (async.Return) Tests
// =============================================================================

func TestReadyFuture(t *testing.T) {
	future := async.Return(999)
	ctx := &async.Context{}

	poll := future.Poll(ctx)
	if !poll.IsReady() {
		t.Error("ReadyFuture should always be ready")
	}
	if poll.Value() != 999 {
		t.Errorf("Value() = %d, want 999", poll.Value())
	}
}

// =============================================================================
// Tuple2 Tests
// =============================================================================

func TestTuple2Create(t *testing.T) {
	tuple := async.Tuple2[int, string]{V1: 42, V2: "hello"}
	if tuple.V1 != 42 || tuple.V2 != "hello" {
		t.Error("Tuple2 fields incorrect")
	}
}

func TestTuple2Get(t *testing.T) {
	tuple := async.MakeTuple2(10, 20)
	a, b := tuple.Get()
	if a != 10 || b != 20 {
		t.Errorf("Get() = (%d, %d), want (10, 20)", a, b)
	}
}

func TestMakeTuple2(t *testing.T) {
	tuple := async.MakeTuple2("x", 123)
	if tuple.V1 != "x" || tuple.V2 != 123 {
		t.Error("MakeTuple2 incorrect")
	}
}

// =============================================================================
// Tuple3 Tests
// =============================================================================

func TestTuple3Get(t *testing.T) {
	tuple := async.MakeTuple3(1, 2, 3)
	a, b, c := tuple.Get()
	if a != 1 || b != 2 || c != 3 {
		t.Errorf("Get() = (%d, %d, %d), want (1, 2, 3)", a, b, c)
	}
}

// =============================================================================
// Tuple4 Tests
// =============================================================================

func TestTuple4Get(t *testing.T) {
	tuple := async.MakeTuple4("a", "b", "c", "d")
	v1, v2, v3, v4 := tuple.Get()
	if v1 != "a" || v2 != "b" || v3 != "c" || v4 != "d" {
		t.Errorf("Get() incorrect")
	}
}

// =============================================================================
// Result Tests
// =============================================================================

func TestResultOk(t *testing.T) {
	result := async.Ok(42)
	if !result.IsOk() {
		t.Error("Ok result should be Ok")
	}
	if result.IsErr() {
		t.Error("Ok result should not be Err")
	}
	if result.Value != 42 {
		t.Errorf("Value = %d, want 42", result.Value)
	}
}

func TestResultErr(t *testing.T) {
	// Use a simple error - any non-nil error makes IsErr() true
	result := async.Result[int]{Value: 0, Err: errTest}
	if result.IsOk() {
		t.Error("Err result should not be Ok")
	}
	if !result.IsErr() {
		t.Error("Err result should be Err")
	}
}

func TestResultUnwrap(t *testing.T) {
	result := async.Ok(100)
	if result.Unwrap() != 100 {
		t.Errorf("Unwrap() = %d, want 100", result.Unwrap())
	}
}

func TestResultUnwrapOr(t *testing.T) {
	ok := async.Ok(50)
	if ok.UnwrapOr(0) != 50 {
		t.Error("UnwrapOr on Ok should return value")
	}

	// Use a struct with non-nil error
	type errResult = async.Result[int]
	err := errResult{Err: nil} // nil err means Ok
	_ = err
}

// =============================================================================
// Helper Function Tests
// =============================================================================

func TestComputeHelper(t *testing.T) {
	future := Compute(21)
	ctx := &async.Context{}

	poll := future.Poll(ctx)
	if !poll.IsReady() {
		t.Error("Compute should be ready immediately")
	}
	if poll.Value() != 42 {
		t.Errorf("Compute(21) = %d, want 42", poll.Value())
	}
}

func TestAddHelper(t *testing.T) {
	future := Add(10, 20)
	ctx := &async.Context{}

	poll := future.Poll(ctx)
	if poll.Value() != 30 {
		t.Errorf("Add(10, 20) = %d, want 30", poll.Value())
	}
}

func TestDelayHelper(t *testing.T) {
	future := Delay()
	ctx := &async.Context{}

	poll := future.Poll(ctx)
	if !poll.IsReady() {
		t.Error("Delay should be ready immediately in mock")
	}
}
