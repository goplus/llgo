//go:build llgo

/*
 * Copyright (c) 2025 The GoPlus Authors (goplus.org). All rights reserved.
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

package test

import (
	"reflect"
	"testing"
)

// runLoopDefers exercises a defer statement inside a loop and relies on
// defers executing after the loop but before the function returns.
func runLoopDefers() (result []int) {
	for i := 0; i < 3; i++ {
		v := i
		defer func() {
			result = append(result, v)
		}()
	}
	return
}

func runLoopDeferCount(n int) (count int) {
	for i := 0; i < n; i++ {
		defer func() {
			count++
		}()
	}
	return
}

func TestDeferInLoopOrder(t *testing.T) {
	got := runLoopDefers()
	want := []int{2, 1, 0}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("unexpected defer order: got %v, want %v", got, want)
	}
}

func TestDeferLoopStress(t *testing.T) {
	const n = 1_000_000
	if got := runLoopDeferCount(n); got != n {
		t.Fatalf("unexpected count: got %d, want %d", got, n)
	}
}
