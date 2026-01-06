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

// Package libuv provides a libuv-based async executor for llgo.
package libuv

import (
	"sync"
	"time"
	"unsafe"

	"github.com/goplus/lib/c/libuv"
	"github.com/goplus/llgo/async"
)

// timerRegistry stores callback data for timers since Timer lacks SetData/GetData
var timerRegistry = struct {
	sync.Mutex
	m map[uintptr]*timerData
}{m: make(map[uintptr]*timerData)}

type timerData struct {
	waker async.Waker
	sleep *SleepFuture
}

func registerTimer(timer *libuv.Timer, data *timerData) {
	timerRegistry.Lock()
	timerRegistry.m[uintptr(unsafe.Pointer(timer))] = data
	timerRegistry.Unlock()
}

func unregisterTimer(timer *libuv.Timer) *timerData {
	timerRegistry.Lock()
	key := uintptr(unsafe.Pointer(timer))
	data := timerRegistry.m[key]
	delete(timerRegistry.m, key)
	timerRegistry.Unlock()
	return data
}

// Executor is a libuv-based async executor.
type Executor struct {
	loop    *libuv.Loop
	tasks   map[*async.Task]struct{}
	pending chan *async.Task
	idle    libuv.Idle
	running bool
}

// New creates a new libuv Executor with a new loop.
func New() *Executor {
	return NewWithLoop(libuv.LoopNew())
}

// NewWithLoop creates a new libuv Executor with a specific loop.
func NewWithLoop(loop *libuv.Loop) *Executor {
	return &Executor{
		loop:    loop,
		tasks:   make(map[*async.Task]struct{}),
		pending: make(chan *async.Task, 256),
	}
}

// Loop returns the underlying libuv loop.
func (e *Executor) Loop() *libuv.Loop {
	return e.loop
}

// Spawn submits an async function to the executor.
func (e *Executor) Spawn(fn func() async.Future[async.Void]) {
	future := fn()
	task := async.NewTask(future, e)
	e.tasks[task] = struct{}{}
	e.schedule(task)
}

// SpawnTask adds a task to be polled.
func (e *Executor) SpawnTask(task *async.Task) {
	if e.running {
		select {
		case e.pending <- task:
		default:
		}
	}
}

// schedule schedules a task for immediate polling.
func (e *Executor) schedule(task *async.Task) {
	e.pending <- task
}

// Run starts the event loop and runs until all tasks complete.
func (e *Executor) Run() {
	e.running = true
	defer func() { e.running = false }()

	// First, poll all pending tasks to kick off async operations
	// This registers timers etc. with the loop
	e.pollPending()

	// Run the loop - this will process timer callbacks
	// Each timer callback will wake tasks via SpawnTask
	// But since we can't use Idle callbacks, we need a different approach:
	// Run once, then check if any new tasks were woken
	for len(e.tasks) > 0 {
		// Run loop once to process pending events
		e.loop.Run(libuv.RUN_ONCE)

		// Poll any newly woken tasks
		e.pollPending()
	}
}

// pollPending polls all pending tasks.
func (e *Executor) pollPending() {
	for {
		select {
		case task := <-e.pending:
			ctx := task.Context()
			poll := task.Poll(ctx)
			if poll.IsReady() {
				delete(e.tasks, task)
			}
		default:
			return
		}
	}
}

// WakeAfter implements TimerScheduler.
func (e *Executor) WakeAfter(d time.Duration, waker async.Waker) {
	ms := uint64(d.Milliseconds())
	timer := new(libuv.Timer)
	libuv.InitTimer(e.loop, timer)
	registerTimer(timer, &timerData{waker: waker})
	timer.Start(wakeAfterCallback, ms, 0)
}

func wakeAfterCallback(timer *libuv.Timer) {
	data := unregisterTimer(timer)
	if data != nil && data.waker != nil {
		data.waker.Wake()
	}
	timer.Stop()
}

// -----------------------------------------------------------------------------
// Sleep Future - Timer-based delay
// -----------------------------------------------------------------------------

// SleepFuture is a Future that resolves after a delay.
type SleepFuture struct {
	ms    uint64
	exec  *Executor
	timer *libuv.Timer
	done  bool
	waker async.Waker
}

// Sleep returns a Future that resolves after ms milliseconds.
func Sleep(exec *Executor, ms uint64) *SleepFuture {
	return &SleepFuture{ms: ms, exec: exec}
}

// Poll implements Future[Void].
func (f *SleepFuture) Poll(ctx *async.Context) async.Poll[async.Void] {
	if f.done {
		return async.Ready(async.Void{})
	}

	if f.timer == nil {
		f.waker = ctx.Waker
		f.timer = new(libuv.Timer)
		libuv.InitTimer(f.exec.Loop(), f.timer)
		registerTimer(f.timer, &timerData{sleep: f})
		f.timer.Start(sleepCallback, f.ms, 0)
	}

	return async.Pending[async.Void]()
}

func sleepCallback(timer *libuv.Timer) {
	data := unregisterTimer(timer)
	if data != nil && data.sleep != nil {
		data.sleep.done = true
		if data.sleep.waker != nil {
			data.sleep.waker.Wake()
		}
	}
	timer.Stop()
}

// Await is for type checking only. Compiler transforms this.
func (f *SleepFuture) Await() async.Void {
	panic("Await() should be transformed by the compiler")
}
