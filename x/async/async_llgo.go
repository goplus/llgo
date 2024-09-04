//go:build llgo
// +build llgo

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

import (
	"sync/atomic"
	"unsafe"

	"github.com/goplus/llgo/c/libuv"
)

type bindAsync struct {
	libuv.Async
	cb func()
}

func BindIO[T any](call IO[T], callback func(T)) {
	loop := Exec().L
	a := &bindAsync{}
	loop.Async(&a.Async, func(p *libuv.Async) {
		(*bindAsync)(unsafe.Pointer(p)).cb()
	})
	done := atomic.Bool{}
	ctx := &AsyncContext{
		Executor: Exec(),
		complete: func() {
			done.Store(true)
			a.Async.Send()
		},
	}
	f := call(ctx)
	called := false
	a.cb = func() {
		if called {
			return
		}
		a.Async.Close(nil)
		result := f()
		callback(result)
	}
	// don't delay the callback if the future is already done
	if done.Load() {
		called = true
		a.cb()
	}
}

func Await[T1 any](call IO[T1]) (ret T1) {
	BindIO(call, func(v T1) {
		ret = v
	})
	return
}

// -----------------------------------------------------------------------------

func Race[T1 any](calls ...IO[T1]) IO[T1] {
	return Async(func(resolve func(T1)) {
		done := false
		for _, call := range calls {
			var f Future[T1]
			f = call(&AsyncContext{
				Executor: Exec(),
				complete: func() {
					if done {
						return
					}
					done = true
					resolve(f())
				},
			})
		}
	})
}

func All[T1 any](calls ...IO[T1]) IO[[]T1] {
	return Async(func(resolve func([]T1)) {
		n := len(calls)
		results := make([]T1, n)
		done := 0
		for i, call := range calls {
			i := i
			var f Future[T1]
			f = call(&AsyncContext{
				Executor: Exec(),
				complete: func() {
					results[i] = f()
					done++
					if done == n {
						resolve(results)
					}
				},
			})
		}
	})
}
