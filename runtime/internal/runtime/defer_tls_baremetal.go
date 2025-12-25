//go:build baremetal

/*
 * Copyright (c) 2025 The GoPlus Authors (goplus.org). All rights reserved.
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

// globalDeferHead stores the current defer chain head.
// In baremetal single-threaded environment, a global variable
// replaces pthread TLS.
var globalDeferHead *Defer

// SetThreadDefer associates the current thread with the given defer chain.
func SetThreadDefer(head *Defer) {
	globalDeferHead = head
}

// GetThreadDefer returns the current thread's defer chain head.
func GetThreadDefer() *Defer {
	return globalDeferHead
}

// ClearThreadDefer resets the current thread's defer chain to nil.
func ClearThreadDefer() {
	globalDeferHead = nil
}
