//go:build llgo
// +build llgo

// typesdemo exercises the pull-model async lowering across loops,
// pointer/map parameters, tuple/result returns, and struct field access.
// Run with:
//
//	go run ./cmd/llgo run ./test/asyncpull/examples/typesdemo
package main

import (
	"fmt"

	"github.com/goplus/llgo/async"
)

// StepInt returns an async future that immediately resolves to x.
func StepInt(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

// StringParam tests string parameter across await.
func StringParam(s string) async.Future[int] {
	length := StepInt(len(s)).Await()
	return async.Return(length)
}

// SliceParam iterates over a slice, awaiting each element.
func SliceParam(arr []int) async.Future[int] {
	sum := 0
	for _, v := range arr {
		sum += StepInt(v).Await()
	}
	return async.Return(sum)
}

// PointerParam handles nil and non-nil pointers.
func PointerParam(p *int) async.Future[int] {
	if p == nil {
		return async.Return(-1)
	}
	val := StepInt(*p).Await()
	return async.Return(val)
}

// MapParam looks up a key and awaits the value.
func MapParam(m map[string]int, key string) async.Future[int] {
	v, ok := m[key]
	if !ok {
		return async.Return(-1)
	}
	awaited := StepInt(v).Await()
	return async.Return(awaited)
}

// Point is used to test struct field access across awaits.
type Point struct {
	X, Y int
}

func StructFieldAccess(pt Point) async.Future[int] {
	px := StepInt(pt.X).Await()
	py := StepInt(pt.Y).Await()
	return async.Return(px + py)
}

// Divmod returns quotient and remainder as a tuple.
func Divmod(a, b int) async.Future[async.Tuple2[int, int]] {
	qa := StepInt(a / b).Await()
	ra := StepInt(a % b).Await()
	return async.Return(async.MakeTuple2(qa, ra))
}

// GetMinMax demonstrates branching while awaiting values.
func GetMinMax(a, b int) async.Future[async.Tuple2[int, int]] {
	va := StepInt(a).Await()
	vb := StepInt(b).Await()
	if va < vb {
		return async.Return(async.Tuple2[int, int]{va, vb})
	}
	return async.Return(async.Tuple2[int, int]{vb, va})
}

// SafeDivide returns a Result that carries either value or error info.
func SafeDivide(a, b int) async.Future[async.Result[int]] {
	if b == 0 {
		return async.Return(async.Err[int](fmt.Errorf("divide by zero")))
	}
	val := StepInt(a / b).Await()
	return async.Return(async.Ok(val))
}

// LookupAndDouble returns Result[int] and awaits on doubled map values.
func LookupAndDouble(m map[string]int, key string) async.Future[async.Result[int]] {
	v, ok := m[key]
	if !ok {
		return async.Return(async.Err[int](fmt.Errorf("missing key %s", key)))
	}
	doubled := StepInt(v * 2).Await()
	return async.Return(async.Ok(doubled))
}

func pollUntilReady[T any](name string, fut async.Future[T]) T {
	ctx := &async.Context{}
	for attempt := 1; attempt <= 3; attempt++ {
		poll := fut.Poll(ctx)
		fmt.Printf("[%s] poll %d => ready=%v\n", name, attempt, poll.IsReady())
		if poll.HasError() {
			panic(fmt.Sprintf("%s panicked: %v", name, poll.Error()))
		}
		if poll.IsReady() {
			return poll.Value()
		}
	}
	panic(fmt.Sprintf("%s never resolved", name))
}

func runIntCase(name string, fut async.Future[int]) {
	result := pollUntilReady(name, fut)
	fmt.Printf("[%s] future dump: %#v\n", name, fut)
	fmt.Printf("[%s] result=%d\n\n", name, result)
}

func runTupleCase(name string, fut async.Future[async.Tuple2[int, int]]) {
	tuple := pollUntilReady(name, fut)
	fmt.Printf("[%s] tuple=(%d,%d)\n\n", name, tuple.V1, tuple.V2)
}

func runResultCase(name string, fut async.Future[async.Result[int]]) {
	res := pollUntilReady(name, fut)
	if res.Err != nil {
		fmt.Printf("[%s] error=%v\n\n", name, res.Err)
	} else {
		fmt.Printf("[%s] ok=%d\n\n", name, res.Value)
	}
}

func main() {
	fmt.Println("=== Async Type Stress Demo ===")

	runIntCase("StringParam", StringParam("pull-model"))
	runIntCase("SliceParam", SliceParam([]int{1, 2, 3, 4}))

	val := 99
	runIntCase("PointerParam", PointerParam(&val))
	runIntCase("PointerParamNil", PointerParam(nil))

	data := map[string]int{"x": 7, "y": 11}
	runIntCase("MapParamHit", MapParam(data, "y"))
	runIntCase("MapParamMiss", MapParam(data, "z"))

	runIntCase("StructFieldAccess", StructFieldAccess(Point{X: 5, Y: 8}))

	runTupleCase("Divmod", Divmod(42, 5))
	runTupleCase("GetMinMax", GetMinMax(9, -3))

	runResultCase("SafeDivideOK", SafeDivide(20, 5))
	runResultCase("SafeDivideZero", SafeDivide(10, 0))
	runResultCase("LookupAndDoubleOK", LookupAndDouble(data, "x"))
	runResultCase("LookupAndDoubleMissing", LookupAndDouble(data, "missing"))

	fmt.Println("=== Demo complete ===")
}
