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

package atomic

import (
	_ "unsafe"
)

const (
	LLGoPackage = "decl"
)

type integer interface {
	~int | ~uint | ~uintptr | ~int32 | ~uint32 | ~int64 | ~uint64
}

// llgo:link Add llgo.atomicAdd
func Add[T integer](ptr *T, v T) T { return v }

// llgo:link Sub llgo.atomicSub
func Sub[T integer](ptr *T, v T) T { return v }

// llgo:link And llgo.atomicAnd
func And[T integer](ptr *T, v T) T { return v }

// llgo:link NotAnd llgo.atomicNand
func NotAnd[T integer](ptr *T, v T) T { return v }

// llgo:link Or llgo.atomicOr
func Or[T integer](ptr *T, v T) T { return v }

// llgo:link Xor llgo.atomicXor
func Xor[T integer](ptr *T, v T) T { return v }

// llgo:link Max llgo.atomicMax
func Max[T integer](ptr *T, v T) T { return v }

// llgo:link Min llgo.atomicMin
func Min[T integer](ptr *T, v T) T { return v }

// llgo:link UMax llgo.atomicUMax
func UMax[T integer](ptr *T, v T) T { return v }

// llgo:link UMin llgo.atomicUMin
func UMin[T integer](ptr *T, v T) T { return v }

// llgo:link Load llgo.atomicLoad
func Load[T integer](ptr *T) T { return *ptr }

// llgo:link Store llgo.atomicStore
func Store[T integer](ptr *T, v T) {}

// llgo:link Exchange llgo.atomicXchg
func Exchange[T integer](ptr *T, v T) T { return v }

// llgo:link CompareAndExchange llgo.atomicCmpXchg
func CompareAndExchange[T integer](ptr *T, old, new T) T { return old }
