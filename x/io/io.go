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
	EnsureDone()
}

// llgo:link AsyncCall.Await llgo.await
func Await[OutT any](call AsyncCall[OutT], timeout ...time.Duration) (ret OutT, err error) {
	return
}

//go:linkname Timeout llgo.timeout
func Timeout(time.Duration) (ret AsyncCall[Void])

func TimeoutCompiled(d time.Duration) *PromiseImpl[Void] {
	P := &PromiseImpl[Void]{}
	P.Func = func(resolve func(Void, error)) {
		go func() {
			time.Sleep(d)
			resolve(Void{}, nil)
		}()
	}
	return P
}

// llgo:link Race llgo.race
func Race[OutT any](acs ...AsyncCall[OutT]) (ret *PromiseImpl[OutT]) {
	return
}

func All[OutT any](acs []AsyncCall[OutT]) (ret *PromiseImpl[[]OutT]) {
	return nil
}

// llgo:link Await2 llgo.await
func Await2[OutT1, OutT2 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2],
	timeout ...time.Duration) (ret1 OutT1, ret2 OutT2, err error) {
	return
}

type Await2Result[T1 any, T2 any] struct {
	V1  T1
	V2  T2
	Err error
}

func Await2Compiled[OutT1, OutT2 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2],
	timeout ...time.Duration) (ret *PromiseImpl[Await2Result[OutT1, OutT2]]) {
	return
}

// llgo:link Await3 llgo.await
func Await3[OutT1, OutT2, OutT3 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2], ac3 AsyncCall[OutT3],
	timeout ...time.Duration) (ret1 OutT1, ret2 OutT2, ret3 OutT3, err error) {
	return
}

type Await3Result[T1 any, T2 any, T3 any] struct {
	V1  T1
	V2  T2
	V3  T3
	Err error
}

func Await3Compiled[OutT1, OutT2, OutT3 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2], ac3 AsyncCall[OutT3],
	timeout ...time.Duration) (ret *PromiseImpl[Await3Result[OutT1, OutT2, OutT3]]) {
	return
}

func Run(ac AsyncCall[Void]) {
	p := ac.(*PromiseImpl[Void])
	p.Resume()
	<-ac.Chan()
}

// -----------------------------------------------------------------------------

type Promise[OutT any] func(OutT, error)

// llgo:link Promise.Await llgo.await
func (p Promise[OutT]) Await(timeout ...time.Duration) (ret OutT, err error) {
	return
}

func (p Promise[OutT]) Chan() <-chan OutT {
	return nil
}

func (p Promise[OutT]) EnsureDone() {

}

// -----------------------------------------------------------------------------

type PromiseImpl[TOut any] struct {
	Func  func(resolve func(TOut, error))
	Value TOut
	Err   error
	Prev  int
	Next  int

	c chan TOut
}

func (p *PromiseImpl[TOut]) Resume() {
	p.Func(func(v TOut, err error) {
		p.Value = v
		p.Err = err
	})
}

func (p *PromiseImpl[TOut]) EnsureDone() {
	if p.Next == -1 {
		panic("Promise already done")
	}
}

func (p *PromiseImpl[TOut]) Chan() <-chan TOut {
	if p.c == nil {
		p.c = make(chan TOut, 1)
		p.Func(func(v TOut, err error) {
			p.Value = v
			p.Err = err
			p.c <- v
		})
	}
	return p.c
}

func (p *PromiseImpl[TOut]) Await(timeout ...time.Duration) (ret TOut, err error) {
	panic("should not called")
}

// -----------------------------------------------------------------------------
