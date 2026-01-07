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

package async

import "time"

// Executor is the pluggable scheduler interface for running async tasks.
// Different implementations can be used for different environments:
// - sync.Executor: Simple blocking executor for testing
// - libuv.Executor: Event-loop based executor using libuv
type Executor interface {
	// Spawn submits an async function to the executor
	Spawn(fn func() Future[Void])

	// Run starts the event loop and runs until all tasks complete
	Run()

	// SpawnTask submits a pre-created task to the executor
	SpawnTask(task *Task)
}

// Task wraps a Future being executed by an Executor.
type Task struct {
	future Future[Void]
	waker  Waker
	exec   Executor
}

// NewTask creates a new task from a future.
func NewTask(f Future[Void], exec Executor) *Task {
	t := &Task{
		future: f,
		exec:   exec,
	}
	t.waker = &taskWaker{task: t}
	return t
}

// Poll polls the task's future.
func (t *Task) Poll(ctx *Context) Poll[Void] {
	return t.future.Poll(ctx)
}

// Context returns a Context with this task's waker.
func (t *Task) Context() *Context {
	return NewContext(t.waker)
}

// taskWaker implements Waker for a Task.
type taskWaker struct {
	task *Task
}

func (w *taskWaker) Wake() {
	if w.task.exec != nil {
		w.task.exec.SpawnTask(w.task)
	}
}

// DefaultExecutor is the global default executor.
// Set this before using async functions.
var DefaultExecutor Executor

// SetDefaultExecutor sets the default executor.
func SetDefaultExecutor(exec Executor) {
	DefaultExecutor = exec
}

// TimerScheduler is an optional interface for executors that support timers.
type TimerScheduler interface {
	// WakeAfter schedules the waker to be called after duration d.
	WakeAfter(d time.Duration, waker Waker)
}
