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

package cbind

import (
	"unsafe"
)

// llgo:type C
type Cb[T any] func(*T)

// llgo:type C
type Cb1[T any, A any] func(*T, A)

// llgo:type C
type Cb2[T any, A any, B any] func(*T, A, B)

// llgo:type C
type Cb3[T any, A any, B any, C any] func(*T, A, B, C)

type bind[Base any] struct {
	b  Base
	fn func()
}

type bind1[Base any, A any] struct {
	b  Base
	fn func(A)
}

type bind2[Base any, A any, B any] struct {
	b  Base
	fn func(A, B)
}

type bind3[Base any, A any, B any, C any] struct {
	b  Base
	fn func(A, B, C)
}

func Callback[Base any](b *Base) {
	bind := (*bind[Base])(unsafe.Pointer(b))
	bind.fn()
}

func Callback1[Base any, A any](b *Base, a A) {
	bind := (*bind1[Base, A])(unsafe.Pointer(b))
	bind.fn(a)
}

func Callback2[Base any, A any, B any](b *Base, a A, c B) {
	bind := (*bind2[Base, A, B])(unsafe.Pointer(b))
	bind.fn(a, c)
}

func Callback3[Base any, A any, B any, C any](b *Base, a A, c B, d C) {
	bind := (*bind3[Base, A, B, C])(unsafe.Pointer(b))
	bind.fn(a, c, d)
}

/**
 * Bind[N] binds a Go function to a C callback function.
 *
 * Example:
 *
 * timer, cb := cbind.Bind[libuv.Timer](func() {
 * 	 println("hello")
 * })
 * libuv.InitTimer(async.Exec().L, timer)
 * timer.Start(cb, 1000, 0)
 *
 * TODO(lijie): fn isn't a C func-ptr, it's closure, should fix the LLGo compiler.
 * See: https://github.com/goplus/llgo/issues/766
 *
 * Workaround:
 *
 * timer, _ := cbind.Bind[libuv.Timer](func() {
 * 	 println("hello")
 * })
 * libuv.InitTimer(async.Exec().L, timer)
 * timer.Start(cbind.Callback[libuv.Timer], 1000, 0)
 *
 * @param call The Go function to bind.
 * @return The data pointer and the C callback function.
 */
func Bind[T any](call func()) (p *T, fn Cb[T]) {
	bb := &bind[T]{fn: func() { call() }}
	p = (*T)(unsafe.Pointer(bb))
	fn = Callback[T]
	return
}

func Bind1[T any, A any](call func(A)) (p *T, fn Cb1[T, A]) {
	bb := &bind1[T, A]{fn: func(a A) { call(a) }}
	p = (*T)(unsafe.Pointer(bb))
	fn = Callback1[T, A]
	return
}

func Bind2[T any, A any, B any](call func(A, B)) (p *T, fn Cb2[T, A, B]) {
	bb := &bind2[T, A, B]{fn: func(a A, b B) { call(a, b) }}
	p = (*T)(unsafe.Pointer(bb))
	fn = Callback2[T, A, B]
	return
}

func Bind3[T any, A any, B any, C any](call func(A, B, C), a A, b B, c C) (p *T, fn Cb3[T, A, B, C]) {
	bb := &bind3[T, A, B, C]{fn: func(a A, b B, c C) { call(a, b, c) }}
	p = (*T)(unsafe.Pointer(bb))
	fn = Callback3[T, A, B, C]
	return
}
