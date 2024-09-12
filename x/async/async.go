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
	_ "unsafe"
)

type Void = [0]byte

type Future[T any] func(func(T))

func (f Future[T]) Then(cb func(T)) {
	f(cb)
}

// Just for pure LLGo/Go, transpile to callback in Go+
func Await[T1 any](future Future[T1]) T1 {
	return Run(future)
}
