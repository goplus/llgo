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
	"time"
	_ "unsafe"
)

// -----------------------------------------------------------------------------

// llgo:link AsyncCall.Await llgo.await
func Await[OutT any](call AsyncCall[OutT], timeout ...time.Duration) (ret OutT, err error) {
	return
}

//go:linkname Timeout llgo.timeout
func Timeout(time.Duration) (ret AsyncCall[Void])

func TimeoutCompiled(d time.Duration) *PromiseImpl[Void] {
	P := &PromiseImpl[Void]{}
	P.Debug = "Timeout"
	P.Func = func(resolve func(Void, error)) {
		go func() {
			time.Sleep(d)
			resolve(Void{}, nil)
		}()
	}
	return P
}

type Result[T any] struct {
	V   T
	Err error
}

// llgo:link Race llgo.race
func Race[OutT any](acs ...AsyncCall[OutT]) *PromiseImpl[OutT] {
	if len(acs) == 0 {
		panic("face: no promise")
	}
	ps := make([]*PromiseImpl[OutT], len(acs))
	for idx, ac := range acs {
		ps[idx] = ac.(*PromiseImpl[OutT])
	}
	remaining := len(acs)
	returned := false
	P := &PromiseImpl[OutT]{}
	P.Debug = "Race"
	P.Func = func(resolve func(OutT, error)) {
		switch P.Next {
		case 0:
			P.Next = 1
			for _, p := range ps {
				p.Exec = P.Exec
				p.Parent = P
				p.Call()
			}
			return
		case 1:
			remaining--
			if remaining < 0 {
				log.Fatalf("race: remaining < 0: %+v\n", remaining)
			}
			if returned {
				return
			}

			for _, p := range ps {
				if p.Done() {
					if debugAsync {
						log.Printf("io.Race done: %+v won the race\n", p)
					}
					returned = true
					resolve(p.value, p.err)
					return
				}
			}
			log.Fatalf("no promise done: %+v\n", ps)
			return
		default:
			panic("unreachable")
		}
	}
	return P
}

func All[OutT any](acs []AsyncCall[OutT]) *PromiseImpl[[]Result[OutT]] {
	ps := make([]*PromiseImpl[OutT], len(acs))
	for idx, ac := range acs {
		ps[idx] = ac.(*PromiseImpl[OutT])
	}
	done := 0
	P := &PromiseImpl[[]Result[OutT]]{}
	P.Debug = "All"
	P.Func = func(resolve func([]Result[OutT], error)) {
		switch P.Next {
		case 0:
			P.Next = 1
			for _, p := range ps {
				p.Exec = P.Exec
				p.Parent = P
				p.Call()
			}
			return
		case 1:
			done++
			if done < len(acs) {
				return
			}
			P.Next = -1

			for _, p := range ps {
				if !p.Done() {
					log.Fatalf("io.All: not done: %+v\n", p)
				}
			}

			ret := make([]Result[OutT], len(acs))
			for idx, p := range ps {
				ret[idx] = Result[OutT]{p.value, p.err}
			}
			if debugAsync {
				log.Printf("io.All done: %+v\n", ret)
			}
			resolve(ret, nil)
			return
		default:
			panic("unreachable")
		}
	}
	return P
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
	p1 := ac1.(*PromiseImpl[OutT1])
	p2 := ac2.(*PromiseImpl[OutT2])
	remaining := 2
	P := &PromiseImpl[Await2Result[OutT1, OutT2]]{}
	P.Debug = "Await2"
	P.Func = func(resolve func(Await2Result[OutT1, OutT2], error)) {
		switch P.Next {
		case 0:
			P.Next = 1
			p1.Exec = P.Exec
			p1.Parent = P
			p1.Call()

			p2.Exec = P.Exec
			p2.Parent = P
			p2.Call()
			return
		case 1:
			remaining--
			if remaining > 0 {
				return
			}
			P.Next = -1
			if !p1.Done() || !p2.Done() {
				log.Fatalf("io.Await2: not done: %+v, %+v\n", p1, p2)
			}

			var err error
			if p1.err != nil {
				err = p1.err
			} else if p2.err != nil {
				err = p2.err
			}

			resolve(Await2Result[OutT1, OutT2]{
				V1: p1.value, V2: p2.value,
				Err: err,
			}, err)
			return
		default:
			panic("unreachable")
		}
	}
	return P
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
	timeout ...time.Duration) *PromiseImpl[Await3Result[OutT1, OutT2, OutT3]] {
	p1 := ac1.(*PromiseImpl[OutT1])
	p2 := ac2.(*PromiseImpl[OutT2])
	p3 := ac3.(*PromiseImpl[OutT3])
	remaining := 3
	P := &PromiseImpl[Await3Result[OutT1, OutT2, OutT3]]{}
	P.Debug = "Await3"
	P.Func = func(resolve func(Await3Result[OutT1, OutT2, OutT3], error)) {
		switch P.Next {
		case 0:
			P.Next = 1
			p1.Exec = P.Exec
			p1.Parent = P
			p1.Call()

			p2.Exec = P.Exec
			p2.Parent = P
			p2.Call()

			p3.Exec = P.Exec
			p3.Parent = P
			p3.Call()
			return
		case 1:
			remaining--
			if remaining > 0 {
				return
			}
			P.Next = -1
			// TODO(lijie): return every error?
			if !p1.Done() || !p2.Done() || !p3.Done() {
				log.Fatalf("io.Await3: not done: %+v, %+v, %+v\n", p1, p2, p3)
			}

			var err error
			if p1.err != nil {
				err = p1.err
			} else if p2.err != nil {
				err = p2.err
			} else if p3.err != nil {
				err = p3.err
			}

			resolve(Await3Result[OutT1, OutT2, OutT3]{
				V1: p1.value, V2: p2.value, V3: p3.value,
				Err: err,
			}, err)
			return
		default:
			panic("unreachable")
		}
	}
	return P
}

// / PAll is a parallel version of All.
func PAll[OutT any](acs ...AsyncCall[OutT]) (resolve Promise[[]Result[OutT]]) {
	panic("todo: PAll")
}

func PAllCompiled[OutT any](acs ...AsyncCall[OutT]) *PromiseImpl[[]Result[OutT]] {
	P := &PromiseImpl[[]Result[OutT]]{}
	P.Debug = "Parallel"
	P.Func = func(resolve func([]Result[OutT], error)) {
		ret := make([]Result[OutT], len(acs))
		wg := sync.WaitGroup{}
		for idx, ac := range acs {
			idx := idx
			ac := ac
			wg.Add(1)
			go func(ac AsyncCall[OutT]) {
				v, err := Run[OutT](ac)
				ret[idx] = Result[OutT]{v, err}
				wg.Done()
			}(ac)
		}
		wg.Wait()
		resolve(ret, nil)
	}
	return P
}

// / PAwait3 is a parallel version of Await3.
func PAwait3[OutT1, OutT2, OutT3 any](ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2], ac3 AsyncCall[OutT3]) (resolve Promise[Await3Result[OutT1, OutT2, OutT3]]) {
	panic("todo: PAwait2")
}

func PAwait3Compiled[OutT1, OutT2, OutT3 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2], ac3 AsyncCall[OutT3]) *PromiseImpl[Await3Result[OutT1, OutT2, OutT3]] {
	P := &PromiseImpl[Await3Result[OutT1, OutT2, OutT3]]{}
	P.Debug = "PAwait3"
	P.Func = func(resolve func(Await3Result[OutT1, OutT2, OutT3], error)) {
		ret := Await3Result[OutT1, OutT2, OutT3]{}
		wg := sync.WaitGroup{}
		wg.Add(3)
		go func() {
			ret.V1, ret.Err = Run[OutT1](ac1)
			wg.Done()
		}()
		go func() {
			ret.V2, ret.Err = Run[OutT2](ac2)
			wg.Done()
		}()
		go func() {
			ret.V3, ret.Err = Run[OutT3](ac3)
			wg.Done()
		}()
		wg.Wait()
		resolve(ret, nil)
	}
	return P
}
