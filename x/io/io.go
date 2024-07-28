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
	"log"
	"sync"
	_ "unsafe"
)

const (
	LLGoPackage = "decl"
)

var debugAsync = false

type Void = [0]byte

// -----------------------------------------------------------------------------

type asyncCall interface {
	parent() asyncCall
	Resume()
	Call()
	Done() bool
}

type AsyncCall[OutT any] interface {
	Resume()
}

type executor struct {
	acs  []asyncCall
	mu   sync.Mutex
	cond *sync.Cond
}

func newExecutor() *executor {
	e := &executor{}
	e.cond = sync.NewCond(&e.mu)
	return e
}

func (e *executor) schedule(ac asyncCall) {
	e.mu.Lock()
	e.acs = append(e.acs, ac)
	e.mu.Unlock()
	e.cond.Signal()
}

func Run[OutT any](ac AsyncCall[OutT]) OutT {
	e := newExecutor()
	p := ac.(*Promise[OutT])
	p.Exec = e
	var rootAc asyncCall = p
	e.schedule(rootAc)

	for {
		e.mu.Lock()
		for len(e.acs) == 0 {
			e.cond.Wait()
		}
		e.mu.Unlock()
		ac := e.acs[0]
		e.acs = e.acs[1:]
		ac.Call()
		if ac.Done() && ac == rootAc {
			return p.value
		}
	}
}

// -----------------------------------------------------------------------------

type R1[T any] struct {
	V1 T
}

func (r R1[T]) Values() T {
	return r.V1
}

type R2[T1 any, T2 any] struct {
	V1 T1
	V2 T2
}

func (r R2[T1, T2]) Values() (T1, T2) {
	return r.V1, r.V2
}

type R3[T1 any, T2 any, T3 any] struct {
	V1 T1
	V2 T2
	V3 T3
}

func (r R3[T1, T2, T3]) Values() (T1, T2, T3) {
	return r.V1, r.V2, r.V3
}

type R4[T1 any, T2 any, T3 any, T4 any] struct {
	V1 T1
	V2 T2
	V3 T3
	V4 T4
}

func (r R4[T1, T2, T3, T4]) Values() (T1, T2, T3, T4) {
	return r.V1, r.V2, r.V3, r.V4
}

type Promise[TOut any] struct {
	Debug  string
	Next   int
	Exec   *executor
	Parent asyncCall

	Func  func()
	value TOut
	c     chan TOut
}

func NewPromise[TOut any](fn func()) *Promise[TOut] {
	return &Promise[TOut]{Func: fn}
}

func (p *Promise[TOut]) parent() asyncCall {
	return p.Parent
}

func (p *Promise[TOut]) Resume() {
	if debugAsync {
		log.Printf("Resume task: %+v\n", p)
	}
	p.Exec.schedule(p)
}

func (p *Promise[TOut]) Done() bool {
	return p.Next == -1
}

func (p *Promise[TOut]) Call() {
	p.Func()
}

func (p *Promise[TOut]) Return(v TOut) {
	// TODO(lijie): panic if already resolved
	p.value = v
	if p.c != nil {
		p.c <- v
	}
	if debugAsync {
		log.Printf("Return task: %+v\n", p)
	}
	if p.Parent != nil {
		p.Parent.Resume()
	}
}

func (p *Promise[TOut]) Yield(v TOut) {
	p.value = v
	if debugAsync {
		log.Printf("Yield task: %+v\n", p)
	}
	if p.Parent != nil {
		p.Parent.Resume()
	}
}

func (p *Promise[TOut]) Value() TOut {
	return p.value
}

func (p *Promise[TOut]) Chan() <-chan TOut {
	if p.c == nil {
		p.c = make(chan TOut, 1)
		p.Func()
	}
	return p.c
}

func (p *Promise[TOut]) Await() (ret TOut) {
	panic("should not called")
}
