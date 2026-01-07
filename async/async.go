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

// Package async provides the core types for llgo's pull-based async/await model.
package async

// Poll represents the result of polling a Future.
type Poll[T any] struct {
	ready bool
	value T
	err   any // panic value for cross-boundary propagation
}

// Ready creates a Poll that is ready with the given value.
func Ready[T any](v T) Poll[T] {
	return Poll[T]{ready: true, value: v}
}

// Pending creates a Poll that is not ready.
func Pending[T any]() Poll[T] {
	return Poll[T]{ready: false}
}

// PollError creates a Poll that indicates a panic occurred.
func PollError[T any](err any) Poll[T] {
	return Poll[T]{ready: true, err: err}
}

// IsReady returns true if the Poll contains a ready value.
func (p Poll[T]) IsReady() bool {
	return p.ready
}

// Value returns the value if ready. Should only be called after checking IsReady().
func (p Poll[T]) Value() T {
	return p.value
}

// Error returns the panic value if this Poll represents a panicked state.
func (p Poll[T]) Error() any {
	return p.err
}

// HasError returns true if this Poll represents a panicked state.
func (p Poll[T]) HasError() bool {
	return p.err != nil
}

// Context is passed to Poll and contains the Waker for notifications.
type Context struct {
	Waker Waker
}

// Waker is used to notify the executor that a Future is ready to be polled.
type Waker interface {
	Wake()
}

// Void is used as the type parameter for Futures that don't return a value.
type Void struct{}

// Future represents an asynchronous computation that may not have finished.
// This is the core interface for pull-based async/await.
type Future[T any] interface {
	// Poll attempts to resolve the future to a final value.
	// Returns Ready(value) if complete, Pending() if not ready.
	Poll(ctx *Context) Poll[T]
}

// Async wraps a callback-based async function into a Future.
// The fn parameter receives a callback to deliver the result.
func Async[T any](fn func(func(T))) *AsyncFuture[T] {
	return &AsyncFuture[T]{fn: fn}
}

// AsyncFuture is a Future created from a callback-based function.
type AsyncFuture[T any] struct {
	fn      func(func(T))
	started bool
	ready   bool
	value   T
}

// Poll implements Future[T].Poll.
func (f *AsyncFuture[T]) Poll(ctx *Context) Poll[T] {
	if f.ready {
		return Ready(f.value)
	}
	if !f.started {
		f.started = true
		f.fn(func(v T) {
			f.value = v
			f.ready = true
			if ctx.Waker != nil {
				ctx.Waker.Wake()
			}
		})
	}
	if f.ready {
		return Ready(f.value)
	}
	return Pending[T]()
}

// Await is only for type checking. The compiler transforms .Await() calls.
// This method should never actually be called at runtime.
func (f *AsyncFuture[T]) Await() T {
	panic("Await() should be transformed by the compiler")
}

// Return wraps a value in a ready Future.
func Return[T any](v T) *ReadyFuture[T] {
	return &ReadyFuture[T]{value: v}
}

// ReadyFuture is a Future that is immediately ready with a value.
type ReadyFuture[T any] struct {
	value T
}

// Poll implements Future[T].Poll.
func (f *ReadyFuture[T]) Poll(ctx *Context) Poll[T] {
	return Ready(f.value)
}

// Await is only for type checking. The compiler transforms .Await() calls.
func (f *ReadyFuture[T]) Await() T {
	return f.value
}
