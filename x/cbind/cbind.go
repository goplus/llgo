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
	fn func(*Base)
}

type bind1[Base any, A any] struct {
	b  Base
	fn func(*Base, A)
}

type bind2[Base any, A any, B any] struct {
	b  Base
	fn func(*Base, A, B)
}

type bind3[Base any, A any, B any, C any] struct {
	b  Base
	fn func(*Base, A, B, C)
}

func Callback[Base any](base *Base) {
	bind := (*bind[Base])(unsafe.Pointer(base))
	bind.fn(base)
}

func Callback1[Base any, A any](base *Base, a A) {
	bind := (*bind1[Base, A])(unsafe.Pointer(base))
	bind.fn(base, a)
}

func Callback2[Base any, A any, B any](base *Base, a A, b B) {
	bind := (*bind2[Base, A, B])(unsafe.Pointer(base))
	bind.fn(base, a, b)
}

func Callback3[Base any, A any, B any, C any](base *Base, a A, b B, c C) {
	bind := (*bind3[Base, A, B, C])(unsafe.Pointer(base))
	bind.fn(base, a, b, c)
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
func Bind[T any](call func(*T)) (p *T, cb Cb[T]) {
	bb := &bind[T]{fn: call}
	p = (*T)(unsafe.Pointer(bb))
	cb = Callback[T]
	return
}

func BindF[T any, F ~func(*T)](call func(*T)) (*T, F) {
	bb := &bind[T]{fn: call}
	p := (*T)(unsafe.Pointer(bb))
	var fn F = Callback[T]
	return p, fn
}

func Bind1[T any, A any](call func(*T, A)) (p *T, cb Cb1[T, A]) {
	bb := &bind1[T, A]{fn: call}
	p = (*T)(unsafe.Pointer(bb))
	cb = Callback1[T, A]
	return
}

func Bind1F[T any, F ~func(*T, A), A any](call func(*T, A)) (*T, F) {
	bb := &bind1[T, A]{fn: call}
	p := (*T)(unsafe.Pointer(bb))
	var fn F = Callback1[T, A]
	return p, fn
}

func Bind2[T any, A any, B any](call func(*T, A, B)) (p *T, cb Cb2[T, A, B]) {
	bb := &bind2[T, A, B]{fn: call}
	p = (*T)(unsafe.Pointer(bb))
	cb = Callback2[T, A, B]
	return
}

func Bind2F[T any, F ~func(*T, A, B), A any, B any](call func(*T, A, B)) (*T, F) {
	bb := &bind2[T, A, B]{fn: call}
	p := (*T)(unsafe.Pointer(bb))
	var fn F = Callback2[T, A, B]
	return p, fn
}

func Bind3[T any, A any, B any, C any](call func(*T, A, B, C), a A, b B, c C) (p *T, cb Cb3[T, A, B, C]) {
	bb := &bind3[T, A, B, C]{fn: call}
	p = (*T)(unsafe.Pointer(bb))
	cb = Callback3[T, A, B, C]
	return
}

func Bind3F[T any, F ~func(*T, A, B, C), A any, B any, C any](call func(*T, A, B, C), a A, b B, c C) (*T, F) {
	bb := &bind3[T, A, B, C]{fn: call}
	p := (*T)(unsafe.Pointer(bb))
	var fn F = Callback3[T, A, B, C]
	return p, fn
}
