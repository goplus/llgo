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

func TimeoutCompiled(d time.Duration) *Promise[Void] {
	P := &Promise[Void]{}
	P.Debug = "Timeout"
	P.Func = func() {
		go func() {
			time.Sleep(d)
			P.Return(Void{})
		}()
	}
	return P
}

type Result[T any] struct {
	V   T
	Err error
}

func Race[OutT any](acs ...AsyncCall[OutT]) *Promise[OutT] {
	if len(acs) == 0 {
		panic("race: no promise")
	}
	ps := make([]*Promise[OutT], len(acs))
	for idx, ac := range acs {
		ps[idx] = ac.(*Promise[OutT])
	}
	remaining := len(acs)
	returned := false
	P := &Promise[OutT]{}
	P.Debug = "Race"
	P.Func = func() {
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
					P.Return(p.value)
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

func All[OutT any](acs []AsyncCall[OutT]) *Promise[[]OutT] {
	ps := make([]*Promise[OutT], len(acs))
	for idx, ac := range acs {
		ps[idx] = ac.(*Promise[OutT])
	}
	done := 0
	P := &Promise[[]OutT]{}
	P.Debug = "All"
	P.Func = func() {
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

			ret := make([]OutT, len(acs))
			for idx, p := range ps {
				ret[idx] = p.value
			}
			if debugAsync {
				log.Printf("io.All done: %+v\n", ret)
			}
			P.Return(ret)
			return
		default:
			panic("unreachable")
		}
	}
	return P
}

// llgo:link Await2 llgo.await
func Await2Compiled[OutT1, OutT2 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2],
	timeout ...time.Duration) (ret *Promise[R3[OutT1, OutT2, error]]) {
	p1 := ac1.(*Promise[OutT1])
	p2 := ac2.(*Promise[OutT2])
	remaining := 2
	P := &Promise[R3[OutT1, OutT2, error]]{}
	P.Debug = "Await2"
	P.Func = func() {
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

			P.Return(R3[OutT1, OutT2, error]{
				V1: p1.value,
				V2: p2.value,
				V3: nil,
			})
			return
		default:
			panic("unreachable")
		}
	}
	return P
}

// llgo:link Await2 llgo.await
func Await3Compiled[OutT1, OutT2, OutT3 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2], ac3 AsyncCall[OutT3],
	timeout ...time.Duration) *Promise[R3[OutT1, OutT2, OutT3]] {
	p1 := ac1.(*Promise[OutT1])
	p2 := ac2.(*Promise[OutT2])
	p3 := ac3.(*Promise[OutT3])
	remaining := 3
	P := &Promise[R3[OutT1, OutT2, OutT3]]{}
	P.Debug = "Await3"
	P.Func = func() {
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

			P.Return(R3[OutT1, OutT2, OutT3]{
				V1: p1.value,
				V2: p2.value,
				V3: p3.value,
			})
			return
		default:
			panic("unreachable")
		}
	}
	return P
}

func PAllCompiled[OutT any](acs ...AsyncCall[OutT]) *Promise[[]OutT] {
	P := &Promise[[]OutT]{}
	P.Debug = "Parallel"
	P.Func = func() {
		ret := make([]OutT, len(acs))
		wg := sync.WaitGroup{}
		for idx, ac := range acs {
			idx := idx
			ac := ac
			wg.Add(1)
			go func(ac AsyncCall[OutT]) {
				v := Run[OutT](ac)
				ret[idx] = v
				wg.Done()
			}(ac)
		}
		wg.Wait()
		P.Return(ret)
	}
	return P
}

func PAwait3Compiled[OutT1, OutT2, OutT3 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2], ac3 AsyncCall[OutT3]) *Promise[R4[OutT1, OutT2, OutT3, error]] {
	P := &Promise[R4[OutT1, OutT2, OutT3, error]]{}
	P.Debug = "PAwait3"
	P.Func = func() {
		ret := R4[OutT1, OutT2, OutT3, error]{}
		wg := sync.WaitGroup{}
		wg.Add(3)
		go func() {
			ret.V1 = Run[OutT1](ac1)
			wg.Done()
		}()
		go func() {
			ret.V2 = Run[OutT2](ac2)
			wg.Done()
		}()
		go func() {
			ret.V3 = Run[OutT3](ac3)
			wg.Done()
		}()
		wg.Wait()
		P.Return(ret)
	}
	return P
}
