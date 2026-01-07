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

import "unsafe"

// DeferNode represents a single defer call in the persistent defer list.
// Used by async functions to track defers across await points.
type DeferNode struct {
	prev *DeferNode
	fn   unsafe.Pointer // function pointer
	arg  unsafe.Pointer // closure/receiver pointer (if any)
}

// DeferState holds the defer-related state for an async function.
// This is embedded in the state machine struct for async functions with defer.
type DeferState struct {
	DeferHead   unsafe.Pointer // *DeferNode, head of defer list
	PanicValue  any            // saved panic value
	IsPanicking bool           // whether we're in panic mode
	Recovered   bool           // whether recover() was called
}

// PushDefer adds a defer to the list.
// fn is the function pointer, arg is the closure/receiver.
func (s *DeferState) PushDefer(fn, arg unsafe.Pointer) {
	node := &DeferNode{
		prev: (*DeferNode)(s.DeferHead),
		fn:   fn,
		arg:  arg,
	}
	s.DeferHead = unsafe.Pointer(node)
}

// RunDefers executes all deferred functions in LIFO order.
// This is called on normal return.
func (s *DeferState) RunDefers() {
	for s.DeferHead != nil {
		node := (*DeferNode)(s.DeferHead)
		s.DeferHead = unsafe.Pointer(node.prev)
		// Call the deferred function
		callDeferredFunc(node.fn, node.arg)
	}
}

// DoPanic sets the panic state and begins defer unwinding.
// Returns true if recovered, false if panic should propagate.
func (s *DeferState) DoPanic(v any) bool {
	s.PanicValue = v
	s.IsPanicking = true
	s.Recovered = false

	// Execute defers, checking for recover after each
	for s.DeferHead != nil && !s.Recovered {
		node := (*DeferNode)(s.DeferHead)
		s.DeferHead = unsafe.Pointer(node.prev)
		// Call the deferred function (may call DoRecover)
		callDeferredFunc(node.fn, node.arg)
	}

	if s.Recovered {
		s.IsPanicking = false
		return true
	}
	return false
}

// DoRecover attempts to recover from a panic.
// Returns the panic value if recovering, nil otherwise.
func (s *DeferState) DoRecover() any {
	if s.IsPanicking && !s.Recovered {
		s.Recovered = true
		return s.PanicValue
	}
	return nil
}

// callDeferredFunc calls a deferred function.
// This is a placeholder - actual implementation depends on function signature.
//
//go:noinline
func callDeferredFunc(fn, arg unsafe.Pointer) {
	if fn == nil {
		return
	}
	// For simple func() type defers:
	// fn is already a function pointer (unsafe.Pointer)
	// We need to convert it to *func() and call it
	if arg == nil {
		// Call fn as func()
		// fn is the function pointer itself
		fnPtr := *(*func())(unsafe.Pointer(&fn))
		fnPtr()
	} else {
		// Call fn with arg as receiver/closure
		// This needs type-specific handling in generated code
		fnPtr := *(*func())(unsafe.Pointer(&fn))
		fnPtr()
	}
}
