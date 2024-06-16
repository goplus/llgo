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

package sync

import (
	_ "unsafe"
)

const (
	LLGoPackage = "decl"
)

type integer interface {
	~int | ~uint | ~uintptr | ~int32 | ~uint32 | ~int64 | ~uint64
}

// llgo:link FetchAndXchg llgo.atomicXchg
func FetchAndXchg[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndAdd llgo.atomicAdd
func FetchAndAdd[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndSub llgo.atomicSub
func FetchAndSub[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndAnd llgo.atomicAnd
func FetchAndAnd[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndNand llgo.atomicNand
func FetchAndNand[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndOr llgo.atomicOr
func FetchAndOr[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndXor llgo.atomicXor
func FetchAndXor[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndMax llgo.atomicMax
func FetchAndMax[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndMin llgo.atomicMin
func FetchAndMin[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndUMax llgo.atomicUMax
func FetchAndUMax[T integer](ptr *T, v T) T { return v }

// llgo:link FetchAndUMin llgo.atomicUMin
func FetchAndUMin[T integer](ptr *T, v T) T { return v }

// llgo:link CompareAndXchg llgo.atomicCmpXchg
func CompareAndXchg[T integer](ptr *T, old, new T) T { return old }
