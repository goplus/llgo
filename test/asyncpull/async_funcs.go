//go:build llgo
// +build llgo

/*
 * Comprehensive async function definitions covering all cl/_testpull patterns.
 * These functions test the pull-model state machine generation.
 */
package asyncpull

import (
	"github.com/goplus/llgo/async"
)

// -----------------------------------------------------------------------------
// Helper functions for creating async operations
// -----------------------------------------------------------------------------

// twoStepFuture yields Pending on first poll, Ready(value) on second.
type twoStepFuture[T any] struct {
	value T
	done  bool
}

func (f *twoStepFuture[T]) Poll(ctx *async.Context) async.Poll[T] {
	if f.done {
		return async.Ready(f.value)
	}
	f.done = true
	return async.Pending[T]()
}

func (f *twoStepFuture[T]) Await() T { panic("await should be rewritten") }

// PendingOnce returns a Future that suspends once before resolving.
func PendingOnce[T any](v T) async.Future[T] {
	return &twoStepFuture[T]{value: v}
}

// Delay returns an async future that resolves immediately.
func Delay() *async.AsyncFuture[async.Void] {
	return async.Async(func(resolve func(async.Void)) {
		resolve(async.Void{})
	})
}

// Compute returns an async future that computes x * 2.
func Compute(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x * 2)
	})
}

// Add returns an async future that computes a + b.
func Add(a, b int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(a + b)
	})
}

// -----------------------------------------------------------------------------
// Basic Patterns (from _testpull/basic)
// -----------------------------------------------------------------------------

// SimpleAsync is the most basic async function.
func SimpleAsync() async.Future[int] {
	val := Compute(21).Await()
	return async.Return(val)
}

// -----------------------------------------------------------------------------
// Sequential Patterns (from _testpull/sequential)
// -----------------------------------------------------------------------------

// TwoAwaits chains two await calls.
func TwoAwaits(x int) async.Future[int] {
	a := Compute(x).Await()
	b := Compute(a).Await()
	return async.Return(b)
}

// ThreeAwaits chains three await calls.
func ThreeAwaits(x int) async.Future[int] {
	a := Compute(x).Await()
	b := Compute(a).Await()
	c := Compute(b).Await()
	return async.Return(c)
}

// -----------------------------------------------------------------------------
// Conditional Patterns (from _testpull/conditional)
// -----------------------------------------------------------------------------

// AwaitInBranches has await in both if/else branches.
func AwaitInBranches(cond bool) async.Future[int] {
	var result int
	if cond {
		result = Compute(10).Await()
	} else {
		result = Compute(20).Await()
	}
	return async.Return(result)
}

// AwaitBeforeCondition has await before if statement.
func AwaitBeforeCondition(x int) async.Future[int] {
	val := Compute(x).Await()
	if val > 100 {
		return async.Return(100)
	}
	return async.Return(val)
}

// -----------------------------------------------------------------------------
// Loop Patterns (from _testpull/loop, controlflow)
// -----------------------------------------------------------------------------

// AwaitInLoop has await inside a for loop.
func AwaitInLoop(n int) async.Future[int] {
	total := 0
	for i := 0; i < n; i++ {
		v := Compute(i).Await()
		total += v
	}
	return async.Return(total)
}

// LoopWithBreak has await with break condition.
func LoopWithBreak(n int) async.Future[int] {
	for i := 0; i < n; i++ {
		val := Compute(i).Await()
		if val > 10 {
			return async.Return(val)
		}
	}
	return async.Return(-1)
}

// LoopWithContinue uses continue inside loop with await.
func LoopWithContinue(n int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		if i%2 == 0 {
			continue
		}
		val := Compute(i).Await()
		sum += val
	}
	return async.Return(sum)
}

// -----------------------------------------------------------------------------
// Cross-Variable Patterns (from _testpull/crossvar)
// -----------------------------------------------------------------------------

// ModifyBetweenAwaits tests variable modification across suspend points.
func ModifyBetweenAwaits(x int) async.Future[int] {
	sum := Compute(x).Await()
	sum *= 2 // Modify after first await
	sum += Compute(sum).Await()
	return async.Return(sum)
}

// IncrementInLoop tests loop variable across multiple awaits.
func IncrementInLoop(n int) async.Future[int] {
	acc := 0
	for i := 0; i < n; i++ {
		val := Compute(i).Await()
		acc += val
		acc++ // Modify acc after await
	}
	return async.Return(acc)
}

// SwapVariables tests multiple variables modified between awaits.
func SwapVariables(a, b int) async.Future[int] {
	va := Compute(a).Await()
	vb := Compute(b).Await()
	va, vb = vb, va // Swap
	return async.Return(va + vb)
}

// -----------------------------------------------------------------------------
// Panic / Recover scenarios
// -----------------------------------------------------------------------------

// PanicPlain triggers a panic with no defers.
func PanicPlain() async.Future[int] {
	panic("plain panic")
}

// PanicWithRecover recovers in a defer and returns a value.
func PanicWithRecover() (ret async.Future[int]) {
	defer func() {
		if r := recover(); r != nil {
			ret = async.Return(7)
		}
	}()
	panic("recover me")
}

// ChildPanic panics to test propagation across await.
func ChildPanic() async.Future[int] {
	panic("child panic")
}

// ParentPropagateChildPanic awaits a child panic without recovering.
func ParentPropagateChildPanic() async.Future[int] {
	_ = ChildPanic().Await()
	return async.Return(0)
}

// ParentRecoverChildPanic recovers from child panic in its own defer.
func ParentRecoverChildPanic() (ret async.Future[int]) {
	defer func() {
		if r := recover(); r != nil {
			ret = async.Return(9)
		}
	}()
	_ = ChildPanic().Await()
	return async.Return(1) // unreachable if panic propagates
}

// -----------------------------------------------------------------------------
// Multiple Return Patterns (from _testpull/multiret)
// -----------------------------------------------------------------------------

// EarlyReturn tests return before any await.
func EarlyReturn(x int) async.Future[int] {
	if x < 0 {
		return async.Return(-1)
	}
	val := Compute(x).Await()
	return async.Return(val)
}

// MultipleReturns tests multiple return statements.
func MultipleReturns(x int) async.Future[int] {
	if x < 0 {
		return async.Return(-1)
	}
	val := Compute(x).Await()
	if val > 100 {
		return async.Return(100)
	}
	return async.Return(val)
}

// -----------------------------------------------------------------------------
// Tuple Return Patterns (from _testpull/types)
// -----------------------------------------------------------------------------

// DivmodAsync returns quotient and remainder.
func DivmodAsync(a, b int) async.FutureT2[int, int] {
	q := Compute(a / b).Await()
	r := Compute(a % b).Await()
	return async.Return(async.MakeTuple2(q, r))
}

// GetMinMaxAsync returns min and max.
func GetMinMaxAsync(a, b int) async.Future[async.Tuple2[int, int]] {
	va := Compute(a).Await()
	vb := Compute(b).Await()
	if va < vb {
		return async.Return(async.Tuple2[int, int]{va, vb})
	}
	return async.Return(async.Tuple2[int, int]{vb, va})
}

// -----------------------------------------------------------------------------
// Result Return Patterns (from _testpull/types)
// -----------------------------------------------------------------------------

// SafeDivideAsync returns Result with error handling.
func SafeDivideAsync(a, b int) async.FutureR[int] {
	if b == 0 {
		return async.Return(async.Err[int](nil))
	}
	val := Compute(a / b).Await()
	return async.Return(async.Ok(val))
}

// LookupAndDoubleAsync looks up and doubles a value.
func LookupAndDoubleAsync(m map[string]int, key string) async.FutureR[int] {
	v, ok := m[key]
	if !ok {
		return async.Return(async.Err[int](nil))
	}
	doubled := Compute(v * 2).Await()
	return async.Return(async.Ok(doubled))
}

// -----------------------------------------------------------------------------
// Non-Primitive Type Patterns (from _testpull/types)
// -----------------------------------------------------------------------------

// StringParamAsync tests string parameter across await.
func StringParamAsync(s string) async.Future[int] {
	length := Compute(len(s)).Await()
	return async.Return(length)
}

// SliceParamAsync tests slice parameter across await.
func SliceParamAsync(arr []int) async.Future[int] {
	sum := 0
	for _, v := range arr {
		val := Compute(v).Await()
		sum += val
	}
	return async.Return(sum)
}

// PointerParamAsync tests pointer parameter.
func PointerParamAsync(p *int) async.Future[int] {
	if p == nil {
		return async.Return(-1)
	}
	val := Compute(*p).Await()
	return async.Return(val)
}

// Point is a test struct.
type Point struct {
	X, Y int
}

// StructFieldAsync tests struct field access across await.
func StructFieldAsync(pt Point) async.Future[int] {
	px := Compute(pt.X).Await()
	py := Compute(pt.Y).Await()
	return async.Return(px + py)
}

// -----------------------------------------------------------------------------
// Nested/Deep Patterns (from _testpull/nested)
// -----------------------------------------------------------------------------

// DeepNestingAsync tests deeply nested await calls.
func DeepNestingAsync(x int) async.Future[int] {
	if x > 0 {
		a := Compute(x).Await()
		if a > 10 {
			b := Compute(a).Await()
			if b > 100 {
				c := Compute(b).Await()
				return async.Return(c)
			}
			return async.Return(b)
		}
		return async.Return(a)
	}
	return async.Return(0)
}

// -----------------------------------------------------------------------------
// Switch Statement Patterns
// -----------------------------------------------------------------------------

// SwitchAwaitAsync tests await in switch statement branches.
func SwitchAwaitAsync(x int) async.Future[int] {
	var result int
	switch x {
	case 0:
		result = Compute(0).Await()
	case 1:
		result = Compute(10).Await()
	case 2:
		result = Compute(20).Await()
	default:
		result = Compute(100).Await()
	}
	return async.Return(result)
}

// SwitchWithFallthrough tests switch with type-based dispatch.
func SwitchMultipleCases(x int) async.Future[int] {
	sum := 0
	switch {
	case x < 0:
		a := Compute(-x).Await()
		sum = a
	case x == 0:
		sum = 0
	case x > 0 && x < 10:
		b := Compute(x).Await()
		sum = b * 2
	default:
		c := Compute(x).Await()
		sum = c + 100
	}
	return async.Return(sum)
}

// -----------------------------------------------------------------------------
// Map Parameter Patterns
// -----------------------------------------------------------------------------

// MapParamAsync tests map parameter across await.
func MapParamAsync(m map[string]int, key string) async.Future[int] {
	v, ok := m[key]
	if !ok {
		return async.Return(-1)
	}
	val := Compute(v).Await()
	return async.Return(val)
}

// MapIterAsync tests iterating over map with await.
func MapIterAsync(m map[string]int) async.Future[int] {
	sum := 0
	for _, v := range m {
		val := Compute(v).Await()
		sum += val
	}
	return async.Return(sum)
}

// -----------------------------------------------------------------------------
// Heap Alloc Patterns
// -----------------------------------------------------------------------------

// HeapAllocAsync tests new() allocation across await.
func HeapAllocAsync(x int) async.Future[int] {
	p := new(int)
	*p = x
	val := Compute(*p).Await()
	*p = val // Modify after await
	return async.Return(*p)
}

// StructAllocAsync tests struct allocation across await.
func StructAllocAsync(x, y int) async.Future[int] {
	pt := &Point{X: x, Y: y}
	px := Compute(pt.X).Await()
	py := Compute(pt.Y).Await()
	pt.X = px // Modify after await
	pt.Y = py
	return async.Return(pt.X + pt.Y)
}

// -----------------------------------------------------------------------------
// Complex Control Flow Patterns
// -----------------------------------------------------------------------------

// NestedLoopAsync tests nested loops with await.
func NestedLoopAsync(n, m int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		for j := 0; j < m; j++ {
			val := Compute(i + j).Await()
			sum += val
		}
	}
	return async.Return(sum)
}

// LoopWithMultipleAwaits tests multiple awaits in single loop iteration.
func LoopWithMultipleAwaits(n int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		a := Compute(i).Await()
		b := Compute(a).Await()
		sum += b
	}
	return async.Return(sum)
}

// DeferAcrossAwait exercises persistent defer through a suspend point.
func DeferAcrossAwait(out *[]string) async.Future[int] {
	defer func() { *out = append(*out, "first") }()
	defer func() { *out = append(*out, "second") }()
	val := PendingOnce(7).Await() // forces one suspend before completion
	return async.Return(val)
}

// RecoverThenRunRemaining: defer2 recovers, earlier defers still run post-recover.
func RecoverThenRunRemaining(out *[]string) (ret async.Future[int]) {
	defer func() { *out = append(*out, "first") }()
	defer func() {
		if r := recover(); r != nil {
			*out = append(*out, "recover")
			ret = async.Return(0)
		}
	}()
	panic("boom")
}

// PanicWithDefer triggers panic and ensures defers run, propagating error.
func PanicWithDefer(out *[]string) async.Future[int] {
	defer func() { *out = append(*out, "cleanup") }()
	panic("boom")
}

// DeferPanicChain: inner defer panics, outer defer recovers, should still return value.
func DeferPanicChain(out *[]string) async.Future[int] {
	defer func() {
		if r := recover(); r != nil {
			*out = append(*out, "recovered")
		}
	}()
	defer func() {
		*out = append(*out, "inner")
		panic("inner panic")
	}()
	return async.Return(1)
}

// RecoverInDefer recovers from panic and returns a synthesized value.
func RecoverInDefer() (res async.Future[int]) {
	result := 1
	defer func() {
		if r := recover(); r != nil {
			// simulate user adjusting named return after recover
			result = 99
			res = async.Return(result)
		}
	}()
	panic("recover-me")
	// If panic is intercepted, res is set in defer; otherwise unreachable.
	return res
}

// PanicDeferAfterAwait panics inside a defer after an await has suspended/resumed.
func PanicDeferAfterAwait() async.Future[int] {
	defer func() {
		panic("defer boom")
	}()
	_ = PendingOnce(1).Await() // force suspend before defer executes
	return async.Return(1)
}

// ConditionalLoopAsync tests conditional inside loop with different await paths.
func ConditionalLoopAsync(n int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		if i%2 == 0 {
			val := Compute(i).Await()
			sum += val
		} else {
			val := Compute(i * 2).Await()
			sum += val
		}
	}
	return async.Return(sum)
}

// RangeSliceIdxValAsync iterates a slice with both index/value awaits.
func RangeSliceIdxValAsync(arr []int) async.Future[int] {
	sum := 0
	for idx, v := range arr {
		a := Compute(idx).Await()
		b := Compute(v).Await()
		sum += a + b
	}
	return async.Return(sum)
}

// RangeChanAsync ranges over a prefilled channel.
func RangeChanAsync(n int) async.Future[int] {
	ch := make(chan int, n)
	for i := 0; i < n; i++ {
		ch <- i
	}
	close(ch)

	total := 0
	for v := range ch {
		total += Compute(v).Await()
	}
	return async.Return(total)
}

// SelectChanAsync covers select + await inside case.
func SelectChanAsync() async.Future[int] {
	ch1 := make(chan struct{}, 1)
	ch1 <- struct{}{} // ready

	var out int
	select {
	case <-ch1:
		out = Compute(4).Await()
	default:
		out = -1
	}
	return async.Return(out)
}

// HigherOrderVisitorAsync tests higher-order iterator returning a visitor function.
func HigherOrderVisitorAsync(n int) async.Future[int] {
	iter := MakeVisitor(n)
	vals := make([]int, 0, n)
	iter(func(v int) {
		vals = append(vals, v)
	})
	sum := 0
	for _, v := range vals {
		sum += Compute(v).Await()
	}
	return async.Return(sum)
}

// MakeVisitor returns a visitor-based iterator.
func MakeVisitor(n int) func(func(int)) {
	return func(visit func(int)) {
		for i := 0; i < n; i++ {
			visit(i)
		}
	}
}

// GoroutineChannelAsync launches a goroutine to feed a channel; async consumes with await.
func GoroutineChannelAsync(n int) async.Future[int] {
	ch := make(chan int, n)
	go func() {
		for i := 0; i < n; i++ {
			ch <- i
		}
		close(ch)
	}()

	sum := 0
	for v := range ch {
		sum += Compute(v).Await()
	}
	return async.Return(sum)
}

// TupleOkAsync returns (value, ok) as tuple to test tuple ABI + await chain.
func TupleOkAsync(m map[string]int, key string) async.Future[async.Tuple2[int, bool]] {
	v, ok := m[key]
	res := async.Tuple2[int, bool]{v, ok}
	// Await on something else to force suspend.
	_ = Compute(len(key)).Await()
	return async.Return(res)
}
