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
	"context"
	"unsafe"
	_ "unsafe"

	"github.com/goplus/llgo/c/libuv"
)

type Void = [0]byte

type Future[T any] func() T

type IO[T any] func(e *AsyncContext) Future[T]

type Chain[T any] func(callback func(T))

func (f Future[T]) Do(callback func(T)) {
	callback(f())
}

type AsyncContext struct {
	context.Context
	*Executor
	Complete func()
}

func Async[T any](fn func(resolve func(T))) IO[T] {
	return func(ctx *AsyncContext) Future[T] {
		var result T
		var done bool
		fn(func(t T) {
			result = t
			done = true
			ctx.Complete()
		})
		return func() T {
			if !done {
				panic("AsyncIO: Future accessed before completion")
			}
			return result
		}
	}
}

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
	ctx := &AsyncContext{
		Context:  context.Background(),
		Executor: Exec(),
		Complete: func() {
			a.Async.Send()
		},
	}
	f := call(ctx)
	a.cb = func() {
		a.Async.Close(nil)
		result := f()
		callback(result)
	}
}

// -----------------------------------------------------------------------------

func Await[T1 any](call IO[T1]) (ret T1) {
	ch := make(chan struct{})
	f := call(&AsyncContext{
		Context:  context.Background(),
		Executor: Exec(),
		Complete: func() {
			close(ch)
		},
	})
	<-ch
	return f()
}

func Race[T1 any](calls ...IO[T1]) IO[T1] {
	return Async(func(resolve func(T1)) {
		done := false
		for _, call := range calls {
			var f Future[T1]
			f = call(&AsyncContext{
				Context:  context.Background(),
				Executor: Exec(),
				Complete: func() {
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
				Context:  context.Background(),
				Executor: Exec(),
				Complete: func() {
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
