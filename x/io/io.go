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
	parent() asyncCall
	Resume()
	Call()
	Done() bool
}

type AsyncCall[OutT any] interface {
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

func Run[OutT any](ac AsyncCall[OutT]) (OutT, error) {
	e := newExecutor()
	p := ac.(*PromiseImpl[OutT])
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
			return p.value, p.err
		}
	}
}

// -----------------------------------------------------------------------------

type Promise[OutT any] func(OutT, error)

// llgo:link Promise.Await llgo.await
func (p Promise[OutT]) Await(timeout ...time.Duration) (ret OutT, err error) {
	panic("should not called")
}

func (p Promise[OutT]) Call() {
	panic("should not called")
}

func (p Promise[OutT]) Chan() <-chan OutT {
	panic("should not called")
}

func (p Promise[OutT]) Done() bool {
	panic("should not called")
}

func (p Promise[OutT]) Err() error {
	panic("should not called")
}

func (p Promise[OutT]) Value() OutT {
	panic("should not called")
}

// -----------------------------------------------------------------------------

type PromiseImpl[TOut any] struct {
	Debug  string
	Next   int
	Exec   *executor
	Parent asyncCall

	Func  func(resolve func(TOut, error))
	err   error
	value TOut
	c     chan TOut
}

func (p *PromiseImpl[TOut]) parent() asyncCall {
	return p.Parent
}

func (p *PromiseImpl[TOut]) Resume() {
	if debugAsync {
		log.Printf("Resume task: %+v\n", p)
	}
	p.Exec.schedule(p)
}

func (p *PromiseImpl[TOut]) Done() bool {
	return p.Next == -1
}

func (p *PromiseImpl[TOut]) Call() {
	p.Func(func(v TOut, err error) {
		p.value = v
		p.err = err
		if debugAsync {
			log.Printf("Resolve task: %+v, %+v, %+v\n", p, v, err)
		}
		if p.Parent != nil {
			p.Parent.Resume()
		}
	})
}

func (p *PromiseImpl[TOut]) Err() error {
	return p.err
}

func (p *PromiseImpl[TOut]) Value() TOut {
	return p.value
}

func (p *PromiseImpl[TOut]) Chan() <-chan TOut {
	if p.c == nil {
		p.c = make(chan TOut, 1)
		p.Func(func(v TOut, err error) {
			p.value = v
			p.err = err
			p.c <- v
		})
	}
	return p.c
}

func (p *PromiseImpl[TOut]) Await(timeout ...time.Duration) (ret TOut, err error) {
	panic("should not called")
}
