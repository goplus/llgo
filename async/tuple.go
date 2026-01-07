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

// -----------------------------------------------------------------------------
// Tuple Types - for wrapping multiple return values in a single Future[T]
// -----------------------------------------------------------------------------

// Tuple2 represents a pair of values.
// Use for async functions that need to return 2 values.
//
// Example:
//
//	func Divmod(a, b int) Future[Tuple2[int, int]] {
//	    return Return(Tuple2[int, int]{a/b, a%b})
//	}
type Tuple2[T1, T2 any] struct {
	V1 T1
	V2 T2
}

// Tuple3 represents a triple of values.
// Use for async functions that need to return 3 values.
type Tuple3[T1, T2, T3 any] struct {
	V1 T1
	V2 T2
	V3 T3
}

// Tuple4 represents a quadruple of values.
// Use for async functions that need to return 4 values.
type Tuple4[T1, T2, T3, T4 any] struct {
	V1 T1
	V2 T2
	V3 T3
	V4 T4
}

// -----------------------------------------------------------------------------
// Result Type - for async functions that may fail
// -----------------------------------------------------------------------------

// Result represents a value that may have failed with an error.
// This is the idiomatic way to return (T, error) from an async function.
//
// Example:
//
//	func ReadFile(path string) Future[Result[[]byte]] {
//	    data, err := os.ReadFile(path)
//	    if err != nil {
//	        return Return(Err[[]byte](err))
//	    }
//	    return Return(Ok(data))
//	}
type Result[T any] struct {
	Value T
	Err   error
}

// Ok creates a successful Result with the given value.
func Ok[T any](v T) Result[T] {
	return Result[T]{Value: v}
}

// Err creates a failed Result with the given error.
func Err[T any](err error) Result[T] {
	return Result[T]{Err: err}
}

// IsOk returns true if the Result contains a successful value.
func (r Result[T]) IsOk() bool {
	return r.Err == nil
}

// IsErr returns true if the Result contains an error.
func (r Result[T]) IsErr() bool {
	return r.Err != nil
}

// Unwrap returns the value if Ok, panics if Err.
func (r Result[T]) Unwrap() T {
	if r.Err != nil {
		panic(r.Err)
	}
	return r.Value
}

// UnwrapOr returns the value if Ok, or the default value if Err.
func (r Result[T]) UnwrapOr(def T) T {
	if r.Err != nil {
		return def
	}
	return r.Value
}

// -----------------------------------------------------------------------------
// Convenience Constructors
// -----------------------------------------------------------------------------

// MakeTuple2 creates a Tuple2 from two values.
func MakeTuple2[T1, T2 any](v1 T1, v2 T2) Tuple2[T1, T2] {
	return Tuple2[T1, T2]{V1: v1, V2: v2}
}

// MakeTuple3 creates a Tuple3 from three values.
func MakeTuple3[T1, T2, T3 any](v1 T1, v2 T2, v3 T3) Tuple3[T1, T2, T3] {
	return Tuple3[T1, T2, T3]{V1: v1, V2: v2, V3: v3}
}

// MakeTuple4 creates a Tuple4 from four values.
func MakeTuple4[T1, T2, T3, T4 any](v1 T1, v2 T2, v3 T3, v4 T4) Tuple4[T1, T2, T3, T4] {
	return Tuple4[T1, T2, T3, T4]{V1: v1, V2: v2, V3: v3, V4: v4}
}
