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
)

func Await[T1 any](call Future[T1]) (ret T1) {
	return Run(call)
}

// -----------------------------------------------------------------------------

func Race[T1 any](futures ...Future[T1]) Future[T1] {
	return Async(func(resolve func(T1)) {
		done := atomic.Bool{}
		for _, future := range futures {
			future(func(v T1) {
				if !done.Swap(true) {
					resolve(v)
				}
			})
		}
	})
}

func All[T1 any](futures ...Future[T1]) Future[[]T1] {
	return Async(func(resolve func([]T1)) {
		n := len(futures)
		results := make([]T1, n)
		var done uint32
		for i, future := range futures {
			i := i
			future(func(v T1) {
				results[i] = v
				if atomic.AddUint32(&done, 1) == uint32(n) {
					resolve(results)
				}
			})
		}
	})
}
