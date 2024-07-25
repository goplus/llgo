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
		if ac.Done() {
			if ac == rootAc {
				return p.Value, p.Err
			}
			parent := ac.parent()
			if parent != nil {
				parent.Resume()
			}
		} else {
			ac.Call()
		}
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
	Next   int
	Exec   *executor
	Parent asyncCall
	Debug  string

	Func  func(resolve func(TOut, error))
	Err   error
	Value TOut
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
