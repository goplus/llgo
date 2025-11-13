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
	"strconv"
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

func runDeferRecover() (recovered any, ran bool) {
	defer func() {
		recovered = recover()
		ran = true
	}()
	panic("defer recover sentinel")
}

func runNestedLoopDeferOrder() (order []string) {
	outerNestedLoop(&order)
	return
}

func outerNestedLoop(order *[]string) {
	for i := 0; i < 3; i++ {
		v := i
		label := "outer:" + strconv.Itoa(v)
		defer func(label string) {
			*order = append(*order, label)
		}(label)
	}
	middleNestedLoop(order)
}

func middleNestedLoop(order *[]string) {
	for i := 0; i < 2; i++ {
		v := i
		label := "middle:" + strconv.Itoa(v)
		defer func(label string) {
			*order = append(*order, label)
		}(label)
	}
	innerNestedLoop(order)
}

func innerNestedLoop(order *[]string) {
	for i := 0; i < 4; i++ {
		v := i
		label := "inner:" + strconv.Itoa(v)
		defer func(label string) {
			*order = append(*order, label)
		}(label)
	}
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

func TestDeferRecoverHandlesPanic(t *testing.T) {
	got, ran := runDeferRecover()
	want := "defer recover sentinel"
	if !ran {
		t.Fatalf("recover defer not executed")
	}
	str, ok := got.(string)
	if !ok {
		t.Fatalf("recover returned %T, want string", got)
	}
	if str != want {
		t.Fatalf("unexpected recover value: got %q, want %q", str, want)
	}
}

func TestNestedDeferLoops(t *testing.T) {
	got := runNestedLoopDeferOrder()
	want := []string{
		"inner:3", "inner:2", "inner:1", "inner:0",
		"middle:1", "middle:0",
		"outer:2", "outer:1", "outer:0",
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("unexpected nested order: got %v, want %v", got, want)
	}
}

func runNestedConditionalDeferWithRecover() (order []string, recovered any) {
	defer func() { recovered = recover() }()
	nestedCondOuter(&order)
	return
}

func nestedCondOuter(order *[]string) {
	for i := 0; i < 3; i++ {
		v := i
		label := "outer:" + strconv.Itoa(v)
		if v%2 == 0 {
			defer func(label string) {
				*order = append(*order, label)
			}(label)
		}
		nestedCondMiddle(order, v)
	}
}

func nestedCondMiddle(order *[]string, v int) {
	for j := 0; j < 3; j++ {
		u := j
		label := "middle:" + strconv.Itoa(u)
		if u < 2 {
			defer func(label string) {
				*order = append(*order, label)
			}(label)
		}
		nestedCondInner(order)
	}
	if v == 1 {
		panic("nested-conditional-boom")
	}
}

func nestedCondInner(order *[]string) {
	for k := 0; k < 2; k++ {
		w := k
		label := "inner:" + strconv.Itoa(w)
		defer func(label string) {
			*order = append(*order, label)
		}(label)
	}
}

func TestNestedConditionalDeferWithRecover(t *testing.T) {
	gotOrder, gotRecovered := runNestedConditionalDeferWithRecover()
	wantRecovered := "nested-conditional-boom"
	if s, ok := gotRecovered.(string); !ok || s != wantRecovered {
		t.Fatalf("unexpected recover value: got %v, want %q", gotRecovered, wantRecovered)
	}
	wantOrder := []string{
		"inner:1", "inner:0",
		"inner:1", "inner:0",
		"inner:1", "inner:0",
		"middle:1", "middle:0",
		"inner:1", "inner:0",
		"inner:1", "inner:0",
		"inner:1", "inner:0",
		"middle:1", "middle:0",
		"outer:0",
	}
	if !reflect.DeepEqual(gotOrder, wantOrder) {
		t.Fatalf("unexpected nested conditional order: got %v, want %v", gotOrder, wantOrder)
	}
}

func callWithRecover(fn func()) (recovered any) {
	defer func() { recovered = recover() }()
	fn()
	return
}

func loopBranchEven(order *[]string, i int) {
	label := "even:" + strconv.Itoa(i)
	defer func() { *order = append(*order, label) }()
}

func loopBranchOddNoRecover(order *[]string, i int) {
	label := "odd-wrap:" + strconv.Itoa(i)
	defer func() { *order = append(*order, label) }()
	panic("odd-no-recover")
}

func loopBranchOddLocalRecover(order *[]string, i int) {
	label := "odd-local:" + strconv.Itoa(i)
	defer func() { *order = append(*order, label) }()
	defer func() { _ = recover() }()
	panic("odd-local-recover")
}

func runLoopBranchRecoverMixed(n int) (order []string, recoveredVals []any) {
	for i := 0; i < n; i++ {
		if i%2 == 0 {
			loopBranchEven(&order, i)
		} else if i%4 == 3 {
			rec := callWithRecover(func() { loopBranchOddNoRecover(&order, i) })
			recoveredVals = append(recoveredVals, rec)
		} else {
			loopBranchOddLocalRecover(&order, i)
		}
	}
	return
}

func TestLoopBranchRecoverMixed(t *testing.T) {
	order, recovered := runLoopBranchRecoverMixed(6)
	wantOrder := []string{
		"even:0",
		"odd-local:1",
		"even:2",
		"odd-wrap:3",
		"even:4",
		"odd-local:5",
	}
	if !reflect.DeepEqual(order, wantOrder) {
		t.Fatalf("unexpected loop/branch order: got %v, want %v", order, wantOrder)
	}
	if len(recovered) != 1 {
		t.Fatalf("unexpected recovered count: got %d, want %d", len(recovered), 1)
	}
	if s, ok := recovered[0].(string); !ok || s != "odd-no-recover" {
		t.Fatalf("unexpected recovered value: got %v, want %q", recovered[0], "odd-no-recover")
	}
}

func deepInner(order *[]string) {
	for i := 0; i < 2; i++ {
		idx := i
		label := "inner:" + strconv.Itoa(idx)
		defer func(label string) {
			*order = append(*order, label)
		}(label)
		if idx == 0 {
			continue
		}
		panic("deep-boom")
	}
}

func deepMiddle(order *[]string) {
	for i := 0; i < 2; i++ {
		idx := i
		label := "middle:" + strconv.Itoa(idx)
		defer func(label string) {
			*order = append(*order, label)
		}(label)
		if idx == 0 {
			continue
		}
		defer func() {
			if rec := recover(); rec != nil {
				panic(rec)
			}
		}()
		deepInner(order)
	}
}

func deepOuter(order *[]string) (recovered any) {
	for i := 0; i < 2; i++ {
		idx := i
		label := "outer:" + strconv.Itoa(idx)
		defer func(label string) {
			*order = append(*order, label)
		}(label)
		if idx == 0 {
			continue
		}
		defer func() {
			if rec := recover(); rec != nil {
				recovered = rec
			}
		}()
		deepMiddle(order)
	}
	return
}

func TestPanicCrossTwoFunctionsRecover(t *testing.T) {
	var order []string
	recovered := deepOuter(&order)
	if s, ok := recovered.(string); !ok || s != "deep-boom" {
		t.Fatalf("unexpected recovered value: got %v, want %q", recovered, "deep-boom")
	}
	wantOrder := []string{
		"inner:1", "inner:0",
		"middle:1", "middle:0",
		"outer:1", "outer:0",
	}
	if !reflect.DeepEqual(order, wantOrder) {
		t.Fatalf("unexpected cross-function defer order: got %v, want %v", order, wantOrder)
	}
}
