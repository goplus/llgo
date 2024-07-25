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
	P := &PromiseImpl[OutT]{}
	P.Debug = "Race"
	P.Func = func(resolve func(OutT, error)) {
		P.Next = -1
		rc := make(chan Result[OutT], len(acs))
		for _, ac := range acs {
			ac := ac
			go func(ac AsyncCall[OutT]) {
				v, err := Run[OutT](ac)
				rc <- Result[OutT]{v, err}
			}(ac)
		}

		v := <-rc
		if debugAsync {
			log.Printf("io.Race done: %+v won the race\n", v)
		}
		resolve(v.V, v.Err)
		go func() {
			count := 1
			for count < len(acs) {
				<-rc
				count++
			}
			close(rc)
		}()
	}
	return P
}

func All[OutT any](acs []AsyncCall[OutT]) *PromiseImpl[[]Result[OutT]] {
	P := &PromiseImpl[[]Result[OutT]]{}
	P.Debug = "All"
	P.Func = func(resolve func([]Result[OutT], error)) {
		P.Next = -1
		wg := sync.WaitGroup{}
		ret := make([]Result[OutT], len(acs))
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
		if debugAsync {
			log.Printf("io.All done: %+v\n", ret)
		}
		resolve(ret, nil)
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

// TODO(lijie): rewrite to unblock and avoid goroutine
func Await3Compiled[OutT1, OutT2, OutT3 any](
	ac1 AsyncCall[OutT1], ac2 AsyncCall[OutT2], ac3 AsyncCall[OutT3],
	timeout ...time.Duration) *PromiseImpl[Await3Result[OutT1, OutT2, OutT3]] {
	P := &PromiseImpl[Await3Result[OutT1, OutT2, OutT3]]{}
	P.Debug = "Await3"
	P.Func = func(resolve func(Await3Result[OutT1, OutT2, OutT3], error)) {
		P.Next = -1

		ret := Await3Result[OutT1, OutT2, OutT3]{}
		wg := sync.WaitGroup{}
		wg.Add(3)

		go func() {
			defer wg.Done()
			ret.V1, ret.Err = Run[OutT1](ac1)
		}()
		go func() {
			defer wg.Done()
			ret.V2, ret.Err = Run[OutT2](ac2)
		}()
		go func() {
			defer wg.Done()
			ret.V3, ret.Err = Run[OutT3](ac3)
		}()
		wg.Wait()
		if debugAsync {
			log.Printf("Await3 done: %+v\n", ret)
		}
		resolve(ret, nil)
	}
	return P
}
