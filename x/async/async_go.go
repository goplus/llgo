//go:build !llgo
// +build !llgo

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

func Async[T any](fn func(func(T))) Future[T] {
	return func(chain func(T)) {
		go fn(chain)
	}
}

// -----------------------------------------------------------------------------

func Race[T1 any](futures ...Future[T1]) Future[T1] {
	return Async(func(resolve func(T1)) {
		ch := make(chan T1)
		for _, future := range futures {
			future := future
			future.Then(func(v T1) {
				defer func() {
					// Avoid panic when the channel is closed.
					_ = recover()
				}()
				ch <- v
			})
		}
		v := <-ch
		close(ch)
		resolve(v)
	})
}

func All[T1 any](futures ...Future[T1]) Future[[]T1] {
	return Async(func(resolve func([]T1)) {
		n := len(futures)
		results := make([]T1, n)
		wg := sync.WaitGroup{}
		wg.Add(n)
		for i, future := range futures {
			i := i
			future.Then(func(v T1) {
				results[i] = v
				wg.Done()
			})
		}
		wg.Wait()
		resolve(results)
	})
}
