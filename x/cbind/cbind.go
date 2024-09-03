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

import "unsafe"

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

func callback[Base any](b *Base) {
	bind := (*bind[Base])(unsafe.Pointer(b))
	bind.fn()
}

func callback1[Base any, A any](b *Base, a A) {
	bind := (*bind1[Base, A])(unsafe.Pointer(b))
	bind.fn(a)
}

func callback2[Base any, A any, B any](b *Base, a A, c B) {
	bind := (*bind2[Base, A, B])(unsafe.Pointer(b))
	bind.fn(a, c)
}

func callback3[Base any, A any, B any, C any](b *Base, a A, c B, d C) {
	bind := (*bind3[Base, A, B, C])(unsafe.Pointer(b))
	bind.fn(a, c, d)
}

func Bind[T any](call func()) (p *T, fn func(*T)) {
	bb := &bind[T]{fn: func() { call() }}
	p = (*T)(unsafe.Pointer(bb))
	fn = callback[T]
	return
}

func Bind1[T any, A any](call func(A)) (p *T, fn func(*T, A)) {
	bb := &bind1[T, A]{fn: func(a A) { call(a) }}
	p = (*T)(unsafe.Pointer(bb))
	fn = callback1[T, A]
	return
}

func Bind2[T any, A any, B any](call func(A, B)) (p *T, fn func(*T, A, B)) {
	bb := &bind2[T, A, B]{fn: func(a A, b B) { call(a, b) }}
	p = (*T)(unsafe.Pointer(bb))
	fn = callback2[T, A, B]
	return
}

func Bind3[T any, A any, B any, C any](call func(A, B, C), a A, b B, c C) (p *T, fn func(*T, A, B, C)) {
	bb := &bind3[T, A, B, C]{fn: func(a A, b B, c C) { call(a, b, c) }}
	p = (*T)(unsafe.Pointer(bb))
	fn = callback3[T, A, B, C]
	return
}
