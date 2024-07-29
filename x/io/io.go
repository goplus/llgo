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

package io

import (
	"unsafe"
	_ "unsafe"
)

const (
	LLGoPackage = "decl"
)

const debugAsync = false

type Void = [0]byte

type AsyncCall[TOut any] interface{}

// -----------------------------------------------------------------------------

type Promise[TOut any] struct {
	hdl   unsafe.Pointer
	value TOut
}

// llgo:link PromiseImpl llgo.coAwait
func (p *Promise[TOut]) Await() TOut {
	panic("should not executed")
}

// llgo:link Return llgo.coReturn
func (p *Promise[TOut]) Return(v TOut) {
	panic("should not executed")
}

// llgo:link Yield llgo.coYield
func (p *Promise[TOut]) Yield(v TOut) {
	panic("should not executed")
}

// llgo:link Suspend llgo.coSuspend
func (p *Promise[TOut]) Suspend() {
	panic("should not executed")
}

// llgo:link Resume llgo.coResume
func (p *Promise[TOut]) Resume() {
	panic("should not executed")
}

func (p *Promise[TOut]) Value() TOut {
	return p.value
}

// llgo:link Run llgo.coRun
func Run[TOut any](f func() TOut) TOut {
	panic("should not executed")
}
