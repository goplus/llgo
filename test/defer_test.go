/*
 * Copyright (c) 2025 The XGo Authors (xgo.dev). All rights reserved.
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
	"bytes"
	"reflect"
	"strconv"
	"sync/atomic"
	"testing"
	"time"
	"unsafe"
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

func callReflectMakeFuncRecover() (recovered any) {
	defer func() {
		if recovered != nil {
			_ = recover()
			return
		}
		recovered = recover()
	}()
	f := reflect.MakeFunc(reflect.TypeOf((func())(nil)), func(args []reflect.Value) []reflect.Value {
		recovered = recover()
		return nil
	}).Interface().(func())
	defer f()
	panic("reflect-makefunc-recover")
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

func TestReflectMakeFuncRecover(t *testing.T) {
	got := callReflectMakeFuncRecover()
	if s, ok := got.(string); !ok || s != "reflect-makefunc-recover" {
		t.Fatalf("unexpected recovered value: got %v, want %q", got, "reflect-makefunc-recover")
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

// Test for issue #1488: Deferred method literal stub uses undefined value
type emitRecorder struct {
	last func(int)
}

func (d *emitRecorder) SetEmitFunc(fn func(int)) {
	d.last = fn
}

func runEmitRecorder(d *emitRecorder) {
	d.SetEmitFunc(func(int) {})
	defer d.SetEmitFunc(func(int) {})
}

func TestDeferMethodFuncLiteral(t *testing.T) {
	var rec emitRecorder
	runEmitRecorder(&rec)
	if rec.last == nil {
		t.Fatalf("expected SetEmitFunc to record closure")
	}
	rec.last(0) // ensure stored callback is callable
}

func runLoopDeferTwoStatementsInterleaved() (order []byte) {
	for i := 0; i < 2; i++ {
		ii := byte('0' + i)
		defer func() { order = append(order, 'A', ii) }()
		defer func() { order = append(order, 'B', ii) }()
	}
	return
}

func TestDeferInLoopTwoStatementsInterleaved(t *testing.T) {
	got := runLoopDeferTwoStatementsInterleaved()
	want := []byte{'B', '1', 'A', '1', 'B', '0', 'A', '0'}
	if !bytes.Equal(got, want) {
		t.Fatalf("unexpected interleaved loop defer order: got %q, want %q", got, want)
	}
}

var loopDeferNoArgsNonClosureCounter atomic.Int32

func incLoopDeferNoArgsNonClosure() {
	loopDeferNoArgsNonClosureCounter.Add(1)
}

func runLoopDeferNoArgsNonClosure(n int) {
	for i := 0; i < n; i++ {
		defer incLoopDeferNoArgsNonClosure()
	}
}

func TestDeferInLoopNoArgsNonClosureRunsPerIteration(t *testing.T) {
	loopDeferNoArgsNonClosureCounter.Store(0)
	const n = 3
	runLoopDeferNoArgsNonClosure(n)
	if got := loopDeferNoArgsNonClosureCounter.Load(); got != n {
		t.Fatalf("unexpected loop defer count: got %d, want %d", got, n)
	}
}

var loopDeferOuterRan atomic.Int32

func recordLoopDeferOuterTimer(_ *time.Timer) {
	loopDeferOuterRan.Add(1)
}

func runLoopDeferTimerStopWithOuterDefer() {
	var zero time.Timer
	defer recordLoopDeferOuterTimer(&zero)

	for i := 0; i < 1; i++ {
		t := time.NewTimer(time.Hour)
		defer t.Stop()
	}
}

func TestDeferInLoopDoesNotDrainOtherDefers(t *testing.T) {
	loopDeferOuterRan.Store(0)
	runLoopDeferTimerStopWithOuterDefer()
	if got := loopDeferOuterRan.Load(); got != 1 {
		t.Fatalf("outer defer was not executed: got %d, want %d", got, 1)
	}
}

func runDeferAtomicStoreUint32() (before, after uint32) {
	var v uint32
	func() {
		defer atomic.StoreUint32(&v, 1)
		before = atomic.LoadUint32(&v)
	}()
	after = atomic.LoadUint32(&v)
	return
}

func TestDeferAtomicStoreUint32(t *testing.T) {
	before, after := runDeferAtomicStoreUint32()
	if before != 0 {
		t.Fatalf("before defer = %d, want 0", before)
	}
	if after != 1 {
		t.Fatalf("after defer = %d, want 1", after)
	}
}

func runDeferAtomicCompareAndSwapUint32() (before, after uint32) {
	var v uint32 = 1
	func() {
		defer atomic.CompareAndSwapUint32(&v, 1, 2)
		before = atomic.LoadUint32(&v)
	}()
	after = atomic.LoadUint32(&v)
	return
}

func TestDeferAtomicCompareAndSwapUint32(t *testing.T) {
	before, after := runDeferAtomicCompareAndSwapUint32()
	if before != 1 {
		t.Fatalf("before defer = %d, want 1", before)
	}
	if after != 2 {
		t.Fatalf("after defer = %d, want 2", after)
	}
}

func runGoAtomicAddInt64() int64 {
	var v int64
	go atomic.AddInt64(&v, 2)
	deadline := time.Now().Add(2 * time.Second)
	for time.Now().Before(deadline) {
		if got := atomic.LoadInt64(&v); got == 2 {
			return got
		}
		time.Sleep(time.Millisecond)
	}
	return atomic.LoadInt64(&v)
}

func TestGoAtomicAddInt64(t *testing.T) {
	if got := runGoAtomicAddInt64(); got != 2 {
		t.Fatalf("go atomic add = %d, want 2", got)
	}
}

type loopDeferAtomicScalarResults struct {
	int32Load    int32
	int32Final   int32
	int64Load    int64
	int64Final   int64
	uint32Load   uint32
	uint32Final  uint32
	uint64Load   uint64
	uint64Final  uint64
	uintptrLoad  uintptr
	uintptrFinal uintptr
}

func runLoopDeferAtomicScalars() (res loopDeferAtomicScalarResults) {
	var v32 int32 = 10
	func() {
		for i := 0; i < 5; i++ {
			switch i {
			case 0:
				defer atomic.StoreInt32(&v32, 7)
			case 1:
				defer func() {
					res.int32Load = atomic.LoadInt32(&v32)
				}()
			case 2:
				defer atomic.AddInt32(&v32, 5)
			case 3:
				defer atomic.CompareAndSwapInt32(&v32, 15, 21)
			case 4:
				defer atomic.SwapInt32(&v32, 15)
			}
		}
	}()

	var v64 int64 = 20
	func() {
		for i := 0; i < 5; i++ {
			switch i {
			case 0:
				defer atomic.StoreInt64(&v64, 9)
			case 1:
				defer func() {
					res.int64Load = atomic.LoadInt64(&v64)
				}()
			case 2:
				defer atomic.AddInt64(&v64, 4)
			case 3:
				defer atomic.CompareAndSwapInt64(&v64, 30, 40)
			case 4:
				defer atomic.SwapInt64(&v64, 30)
			}
		}
	}()

	var u32 uint32 = 11
	func() {
		for i := 0; i < 5; i++ {
			switch i {
			case 0:
				defer atomic.StoreUint32(&u32, 3)
			case 1:
				defer func() {
					res.uint32Load = atomic.LoadUint32(&u32)
				}()
			case 2:
				defer atomic.AddUint32(&u32, 2)
			case 3:
				defer atomic.CompareAndSwapUint32(&u32, 13, 17)
			case 4:
				defer atomic.SwapUint32(&u32, 13)
			}
		}
	}()

	var u64 uint64 = 50
	func() {
		for i := 0; i < 5; i++ {
			switch i {
			case 0:
				defer atomic.StoreUint64(&u64, 8)
			case 1:
				defer func() {
					res.uint64Load = atomic.LoadUint64(&u64)
				}()
			case 2:
				defer atomic.AddUint64(&u64, 7)
			case 3:
				defer atomic.CompareAndSwapUint64(&u64, 60, 90)
			case 4:
				defer atomic.SwapUint64(&u64, 60)
			}
		}
	}()

	var up uintptr = 100
	func() {
		for i := 0; i < 5; i++ {
			switch i {
			case 0:
				defer atomic.StoreUintptr(&up, 5)
			case 1:
				defer func() {
					res.uintptrLoad = atomic.LoadUintptr(&up)
				}()
			case 2:
				defer atomic.AddUintptr(&up, 6)
			case 3:
				defer atomic.CompareAndSwapUintptr(&up, 120, 140)
			case 4:
				defer atomic.SwapUintptr(&up, 120)
			}
		}
	}()

	res.int32Final = atomic.LoadInt32(&v32)
	res.int64Final = atomic.LoadInt64(&v64)
	res.uint32Final = atomic.LoadUint32(&u32)
	res.uint64Final = atomic.LoadUint64(&u64)
	res.uintptrFinal = atomic.LoadUintptr(&up)
	return
}

func TestDeferAtomicInLoopScalars(t *testing.T) {
	got := runLoopDeferAtomicScalars()
	want := loopDeferAtomicScalarResults{
		int32Load:    26,
		int32Final:   7,
		int64Load:    44,
		int64Final:   9,
		uint32Load:   19,
		uint32Final:  3,
		uint64Load:   97,
		uint64Final:  8,
		uintptrLoad:  146,
		uintptrFinal: 5,
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("unexpected scalar defer+atomic results: got %+v, want %+v", got, want)
	}
}

type loopDeferAtomicPointerResults struct {
	loadValue  int
	finalValue int
}

func runLoopDeferAtomicPointer() (res loopDeferAtomicPointerResults) {
	values := []int{11, 22, 33, 44}
	var ptr unsafe.Pointer = unsafe.Pointer(&values[0])

	func() {
		for i := 0; i < 4; i++ {
			switch i {
			case 0:
				defer atomic.StorePointer(&ptr, unsafe.Pointer(&values[1]))
			case 1:
				defer func() {
					res.loadValue = *(*int)(atomic.LoadPointer(&ptr))
				}()
			case 2:
				defer atomic.CompareAndSwapPointer(&ptr, unsafe.Pointer(&values[2]), unsafe.Pointer(&values[3]))
			case 3:
				defer atomic.SwapPointer(&ptr, unsafe.Pointer(&values[2]))
			}
		}
	}()

	res.finalValue = *(*int)(atomic.LoadPointer(&ptr))
	return
}

func TestDeferAtomicInLoopPointer(t *testing.T) {
	got := runLoopDeferAtomicPointer()
	want := loopDeferAtomicPointerResults{
		loadValue:  44,
		finalValue: 22,
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("unexpected pointer defer+atomic results: got %+v, want %+v", got, want)
	}
}

func runConditionalDeferAtomic(flag bool) (before, after uint32) {
	var v uint32 = 10
	func() {
		if flag {
			defer atomic.AddUint32(&v, 1)
			defer atomic.CompareAndSwapUint32(&v, 10, 20)
		} else {
			defer atomic.StoreUint32(&v, 30)
			defer atomic.SwapUint32(&v, 40)
		}
		before = atomic.LoadUint32(&v)
	}()
	after = atomic.LoadUint32(&v)
	return
}

func TestDeferAtomicInConditional(t *testing.T) {
	before, after := runConditionalDeferAtomic(true)
	if before != 10 || after != 21 {
		t.Fatalf("flag=true: got before=%d after=%d, want before=10 after=21", before, after)
	}

	before, after = runConditionalDeferAtomic(false)
	if before != 10 || after != 30 {
		t.Fatalf("flag=false: got before=%d after=%d, want before=10 after=30", before, after)
	}
}

func runLoopControlDeferAtomic() (before, after uint32) {
	var v uint32 = 5
	func() {
		for i := 0; i < 4; i++ {
			if i == 1 {
				defer atomic.AddUint32(&v, 10)
				continue
			}
			if i == 3 {
				defer atomic.SwapUint32(&v, 99)
				break
			}
			defer atomic.AddUint32(&v, 1)
		}
		before = atomic.LoadUint32(&v)
	}()
	after = atomic.LoadUint32(&v)
	return
}

func TestDeferAtomicInLoopControlFlow(t *testing.T) {
	before, after := runLoopControlDeferAtomic()
	if before != 5 {
		t.Fatalf("before loop control defers = %d, want 5", before)
	}
	if after != 111 {
		t.Fatalf("after loop control defers = %d, want 111", after)
	}
}
