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

// Closure represents a closure.
type Closure struct {
	f    unsafe.Pointer
	data unsafe.Pointer // means no context if data is nil
}

// NewClosure creates a closure.
func NewClosure(f, data unsafe.Pointer) Closure {
	return Closure{f, data}
}

// ClosureF returns the function of a closure.
func ClosureF(c Closure) unsafe.Pointer {
	return c.f
}

// ClosureData returns the data of a closure.
func ClosureData(c Closure) unsafe.Pointer {
	return c.data
}
