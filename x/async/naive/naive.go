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

package naive

import (
	"log"
	"sync"
)

const debugAsync = false

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

func RunImpl[OutT any](ac AsyncCall[OutT]) OutT {
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
			return p.value
		}
	}
}

// -----------------------------------------------------------------------------

type PromiseImpl[TOut any] struct {
	Debug  string
	Next   int
	Exec   *executor
	Parent asyncCall

	Func  func()
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
	p.Func()
}

func (p *PromiseImpl[TOut]) Suspend() {

}

func (p *PromiseImpl[TOut]) Return(v TOut) {
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

func (p *PromiseImpl[TOut]) Yield(v TOut) {
	p.value = v
	if debugAsync {
		log.Printf("Yield task: %+v\n", p)
	}
	if p.Parent != nil {
		p.Parent.Resume()
	}
}

func (p *PromiseImpl[TOut]) Value() TOut {
	return p.value
}

func (p *PromiseImpl[TOut]) Chan() <-chan TOut {
	if p.c == nil {
		p.c = make(chan TOut, 1)
		p.Func()
	}
	return p.c
}

func (p *PromiseImpl[TOut]) Await() (ret TOut) {
	panic("should not called")
}
