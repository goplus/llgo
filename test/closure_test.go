//go:build llgo
// +build llgo

package test

import (
	"sync"
	"testing"

	"github.com/goplus/lib/c"
	_ "unsafe" // for go:linkname
)

// applyFn calls f on each element of nums and returns the results.
func applyFn(nums []int, f func(int) int) []int {
	res := make([]int, len(nums))
	for i, n := range nums {
		res[i] = f(n)
	}
	return res
}

//go:linkname cSqrt C.sqrt
func cSqrt(x c.Double) c.Double

// llgo:link cAbs C.abs
func cAbs(x c.Int) c.Int { return 0 }

// llgo:type C
type CCallback func(c.Int) c.Int

type Fn func(int) int

type S struct {
	v int
}

func (s *S) Add(x int) int {
	return s.v + x
}

func globalAdd(x, y int) int {
	return x + y
}

func makeNoFree() Fn {
	return func(x int) int { return x + 1 }
}

func makeWithFree(base int) Fn {
	return func(x int) int { return x + base }
}

func callCallback(cb CCallback, v c.Int) c.Int {
	return cb(v)
}

func TestClosureAll(t *testing.T) {
	nf := makeNoFree()
	if got := nf(1); got != 2 {
		t.Fatalf("no-free closure: got %d", got)
	}

	wf := makeWithFree(3)
	if got := wf(2); got != 5 {
		t.Fatalf("free-var closure: got %d", got)
	}

	g := globalAdd
	if got := g(1, 2); got != 3 {
		t.Fatalf("global func value: got %d", got)
	}

	s := &S{v: 5}
	mv := s.Add
	if got := mv(7); got != 12 {
		t.Fatalf("method value: got %d", got)
	}

	me := (*S).Add
	if got := me(s, 8); got != 13 {
		t.Fatalf("method expr: got %d", got)
	}

	var i interface{ Add(int) int } = s
	im := i.Add
	if got := im(9); got != 14 {
		t.Fatalf("interface method value: got %d", got)
	}

	if got := float64(cSqrt(4)); got != 2 {
		t.Fatalf("C sqrt: got %v", got)
	}

	if got := int(cAbs(-3)); got != 3 {
		t.Fatalf("C abs: got %d", got)
	}

	cb := CCallback(func(x c.Int) c.Int { return x + 1 })
	if got := int(callCallback(cb, 7)); got != 8 {
		t.Fatalf("C callback: got %d", got)
	}
}

// TestClosureIIFE tests immediately invoked function expression.
func TestClosureIIFE(t *testing.T) {
	x := 10
	result := func(y int) int {
		return x + y // captures x
	}(5)
	if result != 15 {
		t.Fatalf("IIFE: got %d, want 15", result)
	}
}

// TestClosureDefer tests closure in defer statement.
func TestClosureDefer(t *testing.T) {
	var result int
	func() {
		x := 100
		defer func() {
			result = x + 1 // captures x
		}()
	}()
	if result != 101 {
		t.Fatalf("defer closure: got %d, want 101", result)
	}
}

// TestClosureGo tests closure in go statement.
func TestClosureGo(t *testing.T) {
	var result int
	var wg sync.WaitGroup
	x := 42
	wg.Add(1)
	go func() {
		defer wg.Done()
		result = x * 2 // captures x
	}()
	wg.Wait()
	if result != 84 {
		t.Fatalf("go closure: got %d, want 84", result)
	}
}

// TestClosureAsParam tests passing closure as a function parameter.
func TestClosureAsParam(t *testing.T) {
	factor := 3
	nums := []int{1, 2, 3}
	result := applyFn(nums, func(n int) int {
		return n * factor // captures factor
	})
	if result[0] != 3 || result[1] != 6 || result[2] != 9 {
		t.Fatalf("closure as param: got %v, want [3 6 9]", result)
	}
}

// TestClosureNested tests nested closure with multi-level capture.
func TestClosureNested(t *testing.T) {
	a := 1
	outer := func() func() int {
		b := 2
		return func() int {
			return a + b // captures a (outer) and b (inner)
		}
	}
	inner := outer()
	if got := inner(); got != 3 {
		t.Fatalf("nested closure: got %d, want 3", got)
	}
}
