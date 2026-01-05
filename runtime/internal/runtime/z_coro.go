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

package runtime

import "unsafe"

// -----------------------------------------------------------------------------
// LLVM Coroutine Scheduler
//
// This implements a simple cooperative scheduler for LLVM coroutines.
// It manages a queue of coroutine handles and provides round-robin scheduling.
//
// Key concepts:
// - CoroHandle: opaque pointer representing a suspended coroutine
// - CoroQueue: FIFO queue of ready-to-run coroutines
// - CoroScheduler: runs the scheduling loop
// -----------------------------------------------------------------------------

// CoroHandle is an opaque pointer to a coroutine frame.
// It's returned by llvm.coro.begin and used by llvm.coro.resume/destroy.
type CoroHandle = unsafe.Pointer

// coroQueueNode represents a node in the coroutine run queue.
type coroQueueNode struct {
	handle CoroHandle
	next   *coroQueueNode
}

// coroQueue is a simple FIFO queue for coroutine handles.
type coroQueue struct {
	head *coroQueueNode
	tail *coroQueueNode
}

// Global scheduler state
var (
	// runQueue holds coroutines that are ready to run
	coroRunQueue coroQueue

	// currentCoro is the currently executing coroutine (nil if in main thread)
	currentCoro CoroHandle
)

// coroQueuePush adds a coroutine handle to the run queue.
func coroQueuePush(q *coroQueue, handle CoroHandle) {
	node := &coroQueueNode{handle: handle, next: nil}
	if q.tail == nil {
		q.head = node
		q.tail = node
	} else {
		q.tail.next = node
		q.tail = node
	}
}

// coroQueuePop removes and returns the next coroutine handle from the queue.
// Returns nil if the queue is empty.
func coroQueuePop(q *coroQueue) CoroHandle {
	if q.head == nil {
		return nil
	}
	node := q.head
	q.head = node.next
	if q.head == nil {
		q.tail = nil
	}
	return node.handle
}

// coroQueueEmpty returns true if the queue is empty.
func coroQueueEmpty(q *coroQueue) bool {
	return q.head == nil
}

// -----------------------------------------------------------------------------
// Public API for coroutine scheduling
// -----------------------------------------------------------------------------

// CoroSpawn adds a new coroutine to the run queue.
// This is called when a goroutine is created in coroutine mode.
// The coroutine has already started and may be suspended at a yield point.
// If the coroutine is already done (resume_fn == null), it's not queued.
func CoroSpawn(handle CoroHandle) {
	if handle == nil {
		return
	}
	// Check if the coroutine is already done (resume_fn == null)
	// The first field of the coroutine frame is the resume function pointer
	resumeFn := *(*unsafe.Pointer)(handle)
	if resumeFn == nil {
		// Coroutine already completed at final suspend, don't queue
		return
	}
	coroQueuePush(&coroRunQueue, handle)
}

// CoroYield yields the current coroutine and schedules the next one.
// This is called at suspend points (channel operations, etc.)
func CoroYield() {
	// In a full implementation, this would:
	// 1. Save current coroutine handle
	// 2. Pick next coroutine from run queue
	// 3. Resume it
	// For MVP, we rely on llvm.coro.suspend handling
}

// CoroSchedule runs the scheduler loop until all coroutines are done.
// This should be called from the main function after all goroutines are spawned.
func CoroSchedule() {
	for !coroQueueEmpty(&coroRunQueue) {
		handle := coroQueuePop(&coroRunQueue)
		if handle != nil {
			// Resume the coroutine
			// This will run until the next suspend point
			coroResume(handle)
		}
	}
}

// CoroScheduleOne schedules one coroutine from the run queue.
// Returns true if a coroutine was scheduled, false if queue is empty.
func CoroScheduleOne() bool {
	if coroQueueEmpty(&coroRunQueue) {
		return false
	}
	handle := coroQueuePop(&coroRunQueue)
	if handle != nil {
		coroResume(handle)
		return true
	}
	return false
}

// CoroReschedule puts the current coroutine back in the run queue.
// This is called after llvm.coro.suspend returns 0 (resumed).
func CoroReschedule(handle CoroHandle) {
	if handle != nil {
		coroQueuePush(&coroRunQueue, handle)
	}
}

// -----------------------------------------------------------------------------
// LLVM Coroutine intrinsics (to be linked)
//
// These are declared here but implemented via llgo.coro* compiler directives.
// The actual implementation uses llvm.coro.* intrinsics.
// -----------------------------------------------------------------------------

// coroResume resumes a suspended coroutine.
// Maps to llvm.coro.resume intrinsic.
//
//go:linkname coroResume llgo.coroResume
func coroResume(handle CoroHandle)

// coroDestroy destroys a coroutine and frees its frame.
// Maps to llvm.coro.destroy intrinsic.
//
//go:linkname coroDestroy llgo.coroDestroy
func coroDestroy(handle CoroHandle)

// coroSize returns the size needed for a coroutine frame.
// Maps to llvm.coro.size.i64 intrinsic.
//
//go:linkname coroSize llgo.coroSize
func coroSize() int64

// coroSuspend suspends the current coroutine.
// This is a yield point - the coroutine can be resumed later.
// In non-coroutine context (normal function), this is a no-op.
//
//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

// -----------------------------------------------------------------------------
