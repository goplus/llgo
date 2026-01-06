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

// Package sync provides a simple blocking executor for testing and simple use cases.
package sync

import (
	"github.com/goplus/llgo/async"
)

// Executor is a simple blocking executor that polls tasks in a loop.
// It does not use any event loop, just busy-waits until all tasks complete.
type Executor struct {
	tasks   []*async.Task
	pending []*async.Task
}

// New creates a new sync Executor.
func New() *Executor {
	return &Executor{}
}

// Spawn submits an async function to the executor.
func (e *Executor) Spawn(fn func() async.Future[async.Void]) {
	future := fn()
	task := async.NewTask(future, e)
	e.tasks = append(e.tasks, task)
}

// SpawnTask adds a task to be polled.
func (e *Executor) SpawnTask(task *async.Task) {
	e.pending = append(e.pending, task)
}

// Run polls all tasks until they complete.
func (e *Executor) Run() {
	for len(e.tasks) > 0 || len(e.pending) > 0 {
		// Move pending tasks to active
		e.tasks = append(e.tasks, e.pending...)
		e.pending = e.pending[:0]

		// Poll all active tasks
		remaining := e.tasks[:0]
		for _, task := range e.tasks {
			ctx := task.Context()
			poll := task.Poll(ctx)
			if !poll.IsReady() {
				remaining = append(remaining, task)
			}
		}
		e.tasks = remaining
	}
}

// BlockOn runs a single future to completion and returns its result.
// This is a convenience function for running a future synchronously.
func BlockOn[T any](f async.Future[T]) T {
	ctx := &async.Context{Waker: &noopWaker{}}
	for {
		poll := f.Poll(ctx)
		if poll.IsReady() {
			return poll.Value()
		}
		// Busy wait - in real executor this would yield
	}
}

// noopWaker is a waker that does nothing.
type noopWaker struct{}

func (w *noopWaker) Wake() {}
