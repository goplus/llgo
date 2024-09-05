//go:build llgo11
// +build llgo11

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

package async

import "sync"

func BindIO[T any](call IO[T], callback func(T)) {
	callback(Await(call))
}

func Await[T1 any](call IO[T1]) (ret T1) {
	ch := make(chan struct{})
	f := call(&AsyncContext{
		Executor: Exec(),
		complete: func() {
			close(ch)
		},
	})
	<-ch
	return f()
}

// -----------------------------------------------------------------------------

func Race[T1 any](calls ...IO[T1]) IO[T1] {
	return Async(func(resolve func(T1)) {
		ch := make(chan int, len(calls))
		futures := make([]Future[T1], len(calls))
		for i, call := range calls {
			i := i
			call := call
			go func() {
				f := call(&AsyncContext{
					Executor: Exec(),
					complete: func() {
						defer func() {
							_ = recover()
						}()
						ch <- i
					},
				})
				futures[i] = f
			}()
		}
		i := <-ch
		close(ch)
		resolve(futures[i]())
	})
}

func All[T1 any](calls ...IO[T1]) IO[[]T1] {
	return Async(func(resolve func([]T1)) {
		n := len(calls)
		results := make([]T1, n)
		futures := make([]Future[T1], n)
		wg := sync.WaitGroup{}
		wg.Add(n)
		for i, call := range calls {
			i := i
			f := call(&AsyncContext{
				Executor: Exec(),
				complete: func() {
					wg.Done()
				},
			})
			futures[i] = f
		}
		wg.Wait()
		for i, f := range futures {
			results[i] = f()
		}
		resolve(results)
	})
}
