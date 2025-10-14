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

package maphash

import "unsafe"

// llgo:skipall
type _maphash struct{}

//go:linkname runtime_rand github.com/goplus/llgo/runtime/internal/runtime.fastrand64
func runtime_rand() uint64

//go:linkname runtime_memhash github.com/goplus/llgo/runtime/internal/runtime.memhash
func runtime_memhash(p unsafe.Pointer, seed, s uintptr) uintptr
