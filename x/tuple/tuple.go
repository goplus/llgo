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

package tuple

// -----------------------------------------------------------------------------

type Tuple1[T any] struct {
	V1 T
}

func (r Tuple1[T]) Values() T {
	return r.V1
}

type Tuple2[T1 any, T2 any] struct {
	V1 T1
	V2 T2
}

func (r Tuple2[T1, T2]) Values() (T1, T2) {
	return r.V1, r.V2
}

type Tuple3[T1 any, T2 any, T3 any] struct {
	V1 T1
	V2 T2
	V3 T3
}

func (r Tuple3[T1, T2, T3]) Values() (T1, T2, T3) {
	return r.V1, r.V2, r.V3
}

type Tuple4[T1 any, T2 any, T3 any, T4 any] struct {
	V1 T1
	V2 T2
	V3 T3
	V4 T4
}

func (r Tuple4[T1, T2, T3, T4]) Values() (T1, T2, T3, T4) {
	return r.V1, r.V2, r.V3, r.V4
}
