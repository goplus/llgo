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

	"time"
)

const (
	LLGoPackage = "decl"
)

var debugAsync = false

type Void = [0]byte

// -----------------------------------------------------------------------------

type asyncCall interface {
	Resume()
	Call()
	Done() bool
}

type AsyncCall[OutT any] interface {
	Call()
	Await(timeout ...time.Duration) (ret OutT, err error)
	Chan() <-chan OutT
	Done() bool
}

type executor struct {
	ac   asyncCall
	mu   sync.Mutex
	cond *sync.Cond
	susp bool
}

func newExecutor() *executor {
	e := &executor{}
	e.cond = sync.NewCond(&e.mu)
	return e
}

func (e *executor) Resume() {
	e.mu.Lock()
	defer e.mu.Unlock()
	e.susp = false
	e.cond.Signal()
}

func Run[OutT any](ac AsyncCall[OutT]) (OutT, error) {
	e := newExecutor()
	p := ac.(*PromiseImpl[OutT])
	p.Exec = e

	for {
		e.mu.Lock()
		for e.susp {
			e.cond.Wait()
		}
		e.mu.Unlock()
		e.susp = true
		if ac.Done() {
			return p.Value, p.Err
		}
		ac.Call()
	}
}

// -----------------------------------------------------------------------------

type Promise[OutT any] func(OutT, error)

// llgo:link Promise.Await llgo.await
func (p Promise[OutT]) Await(timeout ...time.Duration) (ret OutT, err error) {
	return
}

func (p Promise[OutT]) Call() {

}

func (p Promise[OutT]) Chan() <-chan OutT {
	return nil
}

func (p Promise[OutT]) Done() bool {
	return false
}

// -----------------------------------------------------------------------------

type PromiseImpl[TOut any] struct {
	Prev  int
	Next  int
	Exec  *executor
	Debug string

	Func  func(resolve func(TOut, error))
	Err   error
	Value TOut
	c     chan TOut
}

func (p *PromiseImpl[TOut]) Resume() {
	p.Exec.Resume()
}

func (p *PromiseImpl[TOut]) Done() bool {
	return p.Next == -1
}

func (p *PromiseImpl[TOut]) Call() {
	p.Func(func(v TOut, err error) {
		if debugAsync {
			log.Printf("Resolve task: %+v, %+v, %+v\n", p, v, err)
		}
		p.Value = v
		p.Err = err
		p.Resume()
	})
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
