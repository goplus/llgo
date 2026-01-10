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
