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
	_ "unsafe"

	"time"
)

const (
	LLGoPackage = "decl"
)

type Void = [0]byte

// -----------------------------------------------------------------------------

type AsyncCall[OutT any] interface {
	Await(timeout ...time.Duration) (ret OutT, err error)
	Chan() <-chan OutT
}

// llgo:link AsyncCall.Await llgo.await
func Await[OutT any](call AsyncCall[OutT], timeout ...time.Duration) (ret OutT, err error) {
	return
}

//go:linkname Timeout llgo.timeout
func Timeout(time.Duration) (ret AsyncCall[Void])

// llgo:link Race llgo.race
func Race[OutT any](acs ...AsyncCall[OutT]) (ret AsyncCall[OutT]) {
	return
}

// llgo:link Await2 llgo.await
func Await2[OutT1, OutT2 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2],
	timeout ...time.Duration) (ret1 OutT1, ret2 OutT2, err error) {
	return
}

// llgo:link Await3 llgo.await
func Await3[OutT1, OutT2, OutT3 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2], ac3 AsyncCall[OutT3],
	timeout ...time.Duration) (ret1 OutT1, ret2 OutT2, ret3 OutT3, err error) {
	return
}

// -----------------------------------------------------------------------------

type Promise[OutT any] struct {
}

func NewPromise[OutT any](fn func(resolve func(OutT, error))) (ret *Promise[OutT]) {
	ret = &Promise[OutT]{}
	return
}

func NewPromiseFromValue[OutT any](value OutT) (ret *Promise[OutT]) {
	return NewPromise[OutT](func(resolve func(OutT, error)) {
		resolve(value, nil)
	})
}

func (p *Promise[OutT]) Await(timeout ...time.Duration) (ret OutT, err error) {
	return
}

func (p *Promise[OutT]) Chan() <-chan OutT {
	return nil
}

// llgo:link Async llgo.async
func Async[OutT any](fn any) (ret Promise[OutT]) {
	return
}

// -----------------------------------------------------------------------------
