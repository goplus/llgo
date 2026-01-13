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

import (
	"unsafe"
)

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

	// coroDepth tracks nested $coro function depth for isInCoro detection
	// Incremented on $coro function entry, decremented on exit
	coroDepth int

	// coroPanicVal stores the panic value for coro mode.
	// Unlike TLS-based excepKey, this is a simple global variable
	// suitable for bare-metal environments.
	coroPanicVal any

	// coroPanicMap stores panic values per coroutine handle.
	coroPanicMap map[CoroHandle]any
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
// If the coroutine is already done (coro.done), it's not queued.
func CoroSpawn(handle CoroHandle) {
	if handle == nil {
		return
	}
	// Skip if already at final suspend.
	if coroDone(handle) {
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
		if handle == nil {
			continue
		}
		// Skip handles already at final suspend.
		if coroDone(handle) {
			continue
		}
		// Resume the coroutine
		// This will run until the next suspend point
		resume(handle)

		// If an unrecovered panic occurred, crash immediately
		if CoroIsPanicByHandle(handle) {
			Panic(CoroGetPanicByHandle(handle))
		}
	}
	// After all coroutines complete, check for unhandled panic
	if coroPanicVal != nil {
		Panic(coroPanicVal)
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
		if coroDone(handle) {
			return true
		}
		resume(handle)

		if CoroIsPanicByHandle(handle) {
			Panic(CoroGetPanicByHandle(handle))
		}
		return true
	}
	return false
}

// CoroReschedule puts the current coroutine back in the run queue.
// This is called after llvm.coro.suspend returns 0 (resumed).
func CoroReschedule(handle CoroHandle) {
	if handle == nil {
		return
	}
	if coroDone(handle) {
		return
	}
	coroQueuePush(&coroRunQueue, handle)
}

type coroWaiterNode struct {
	handle CoroHandle
	next   *coroWaiterNode
}

// CoroAddWaiter registers a waiter coroutine in the promise waiters list.
// waitersField points to a promise field of type unsafe.Pointer (list head).
func CoroAddWaiter(waitersField *unsafe.Pointer, waiter CoroHandle) {
	if waitersField == nil || waiter == nil {
		return
	}
	head := (*coroWaiterNode)(*waitersField)
	node := &coroWaiterNode{handle: waiter, next: head}
	*waitersField = unsafe.Pointer(node)
}

// CoroWakeWaiters reschedules all waiters stored in the promise waiters list.
// waitersField points to a promise field of type unsafe.Pointer (list head).
func CoroWakeWaiters(waitersField *unsafe.Pointer) {
	if waitersField == nil {
		return
	}
	node := (*coroWaiterNode)(*waitersField)
	*waitersField = nil
	for node != nil {
		coroQueuePush(&coroRunQueue, node.handle)
		node = node.next
	}
}

// CoroScheduleUntil runs the scheduler until the specified coroutine completes.
// This is used by block_on in sync context.
// The coroutine is NOT added to the queue here because the await path is
// responsible for enqueuing the callee once when it first waits.
func CoroScheduleUntil(handle CoroHandle) {
	if handle == nil {
		return
	}

	// Check if already done
	if coroDone(handle) {
		// Already completed
		return
	}

	// Note: Do NOT push handle to queue here!
	// The coroutine already pushed itself when it suspended.

	// Run scheduler loop until target coroutine is done
	for {
		// Check if target coroutine is done
		if coroDone(handle) {
			// Target coroutine completed
			break
		}

		// Schedule one coroutine from queue
		h := coroQueuePop(&coroRunQueue)
		if h == nil {
			// Queue empty but target not done - shouldn't happen
			// Target might have suspended without being re-queued
			// Resume target directly
			resume(handle)

			if CoroIsPanicByHandle(handle) {
				Panic(CoroGetPanicByHandle(handle))
			}
			continue
		}

		// Skip handles that are already done.
		if coroDone(h) {
			continue
		}

		// Resume this coroutine
		resume(h)

		if CoroIsPanicByHandle(h) {
			Panic(CoroGetPanicByHandle(h))
		}
	}

	// After the target completes, check for unhandled panic
	if coroPanicVal != nil {
		Panic(coroPanicVal)
	}
}

// CoroEnter is called at the entry of a $coro function.
// It increments the coro depth counter to track nested coro calls.
func CoroEnter() {
	coroDepth++
}

// CoroExit is called at the exit of a $coro function.
// It decrements the coro depth counter.
func CoroExit() {
	coroDepth--
}

// CoroIsInCoro returns true if we're currently executing inside a coroutine.
// This is used by block_on to determine whether to use await (coro context)
// or scheduleUntil (sync context) at runtime.
func CoroIsInCoro() bool {
	return coroDepth > 0
}

// CoroSetCurrent sets the current coroutine handle for panic/recover tracking.
// Passing nil clears the current coroutine.
func CoroSetCurrent(handle CoroHandle) {
	currentCoro = handle
}

// -----------------------------------------------------------------------------
// Coro Panic/Recover support
//
// These functions manage panic state for coroutine mode.
// They use a global variable instead of TLS for bare-metal compatibility.
// -----------------------------------------------------------------------------

// CoroSetPanic sets the panic value.
// This is called by panic in coro mode.
func CoroSetPanic(v any) {
	if currentCoro != nil {
		if coroPanicMap == nil {
			coroPanicMap = make(map[CoroHandle]any)
		}
		coroPanicMap[currentCoro] = v
		return
	}
	coroPanicVal = v
}

// CoroIsPanic returns true if there is a panic in progress.
func CoroIsPanic() bool {
	if currentCoro != nil {
		if coroPanicMap == nil {
			return false
		}
		_, ok := coroPanicMap[currentCoro]
		return ok
	}
	return coroPanicVal != nil
}

// CoroGetPanic returns the current panic value (may be nil).
func CoroGetPanic() any {
	if currentCoro != nil {
		if coroPanicMap == nil {
			return nil
		}
		return coroPanicMap[currentCoro]
	}
	return coroPanicVal
}

// CoroClearPanic clears the panic state.
// This is called by recover in coro mode.
func CoroClearPanic() {
	if currentCoro != nil {
		if coroPanicMap != nil {
			delete(coroPanicMap, currentCoro)
		}
		return
	}
	coroPanicVal = nil
}

// CoroRecover recovers from a panic and returns the panic value.
// Returns nil if there is no panic.
func CoroRecover() any {
	if currentCoro != nil {
		if coroPanicMap == nil {
			return nil
		}
		v := coroPanicMap[currentCoro]
		delete(coroPanicMap, currentCoro)
		return v
	}
	v := coroPanicVal
	coroPanicVal = nil
	return v
}

// CoroIsPanicByHandle returns true if the specified coroutine has a panic.
func CoroIsPanicByHandle(handle CoroHandle) bool {
	if handle == nil || coroPanicMap == nil {
		return false
	}
	_, ok := coroPanicMap[handle]
	return ok
}

// CoroGetPanicByHandle returns the panic value for the specified coroutine.
func CoroGetPanicByHandle(handle CoroHandle) any {
	if handle == nil || coroPanicMap == nil {
		return nil
	}
	return coroPanicMap[handle]
}

// CoroClearPanicByHandle clears the panic state for the specified coroutine.
func CoroClearPanicByHandle(handle CoroHandle) {
	if handle == nil || coroPanicMap == nil {
		return
	}
	delete(coroPanicMap, handle)
}

func resume(handle CoroHandle) {
	// Skip if already destroyed or done
	if coroIsDestroyed(handle) {
		return
	}

	if coroRawDone(handle) {
		// At final suspend but not destroyed - wake waiters
		promise := coroPromise(handle, 8, false)
		waitersField := (*unsafe.Pointer)(promise)
		if waitersField != nil {
			CoroWakeWaiters(waitersField)
		}
		return
	}

	CoroSetCurrent(handle)
	coroResume(handle)
	CoroSetCurrent(nil)

	// Check if reached final suspend (but not destroyed yet)
	if !coroIsDestroyed(handle) && coroRawDone(handle) {
		promise := coroPromise(handle, 8, false)
		waitersField := (*unsafe.Pointer)(promise)
		if waitersField != nil {
			CoroWakeWaiters(waitersField)
		}
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

// coroIsDestroyed checks if a coroutine handle's frame has been destroyed.
// Returns true if handle is nil or frame's resume function pointer is nil.
func coroIsDestroyed(handle CoroHandle) bool {
	if handle == nil {
		return true
	}
	// Check if frame was destroyed (resume function pointer is nil)
	resumeFnPtr := *(*unsafe.Pointer)(handle)
	return resumeFnPtr == nil
}

// coroDone safely checks whether a coroutine handle is done (destroyed or at final suspend).
// It performs safety checks before calling the LLVM intrinsic:
// 1. If handle is nil, returns true
// 2. If frame's first pointer (resume fn) is nil, the frame was destroyed, returns true
// 3. Otherwise calls llvm.coro.done
func coroDone(handle CoroHandle) bool {
	if coroIsDestroyed(handle) {
		return true
	}
	return coroRawDone(handle)
}

// coroRawDone reports whether a coroutine handle is at its final suspend point.
// Maps to llvm.coro.done intrinsic.
// WARNING: Only call this after verifying handle is valid (not nil, not destroyed).
//
//go:linkname coroRawDone llgo.coroDone
func coroRawDone(handle CoroHandle) bool

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

// coroPromise returns the promise pointer for a coroutine handle.
// Maps to llvm.coro.promise intrinsic.
// alignment: the alignment of the promise in bytes
// from: if false, handle -> promise; if true, promise -> handle
//
//go:linkname coroPromise llgo.coroPromise
func coroPromise(handle CoroHandle, alignment int32, from bool) unsafe.Pointer

// -----------------------------------------------------------------------------
