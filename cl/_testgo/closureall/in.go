package main

import _ "unsafe" // for go:linkname

import "github.com/goplus/lib/c"

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

func (s S) Inc(x int) int {
	return s.v + x
}

func globalAdd(x, y int) int {
	return x + y
}

// --- Closure Construction Patterns ---

// testNoFreeClosure: closure without free variables
func testNoFreeClosure() {
	makeNoFree := func() Fn {
		return func(x int) int { return x + 1 }
	}
	nf := makeNoFree()
	_ = nf(1)
}

// testWithFreeClosure: closure with free variables
func testWithFreeClosure() {
	makeWithFree := func(base int) Fn {
		return func(x int) int { return x + base }
	}
	wf := makeWithFree(3)
	_ = wf(2)
}

// testGlobalFuncAsClosure: global function converted to closure
func testGlobalFuncAsClosure() {
	g := globalAdd
	_ = g(1, 2)
}

// testPtrMethodValue: pointer receiver method value
func testPtrMethodValue() {
	s := &S{v: 5}
	mv := s.Add
	_ = mv(7)
}

// testMethodExpr: method expression
func testMethodExpr() {
	s := &S{v: 5}
	me := (*S).Add
	_ = me(s, 8)
}

// testValueMethodValue: value receiver method value
func testValueMethodValue() {
	sv := S{v: 10}
	mvi := sv.Inc
	_ = mvi(3)
}

// testIfaceMethodValue: interface method value
func testIfaceMethodValue() {
	s := &S{v: 5}
	var i interface{ Add(int) int } = s
	im := i.Add
	_ = im(9)
}

// testDirectMethodCall: direct method call (not via method value)
func testDirectMethodCall() {
	s := &S{v: 5}
	_ = s.Add(10) // direct pointer receiver method call
	sv := S{v: 7}
	_ = sv.Inc(3) // direct value receiver method call
}

// testIfaceMethodCall: interface method call (invoke instruction)
func testIfaceMethodCall() {
	s := &S{v: 5}
	var i interface{ Add(int) int } = s
	_ = i.Add(11) // invoke instruction: direct call through itab
}

// testGoLinknameAsClosure: go:linkname C function as closure
func testGoLinknameAsClosure() {
	cs := cSqrt
	_ = cs(4)
}

// testLlgoLinkAsClosure: llgo:link C function as closure
func testLlgoLinkAsClosure() {
	ca := cAbs
	_ = ca(-3)
}

// testCCallback: llgo:type C callback
func testCCallback() {
	callCallback := func(cb CCallback, v c.Int) c.Int {
		return cb(v)
	}
	cb := CCallback(func(x c.Int) c.Int { return x + 1 })
	_ = callCallback(cb, 7)
}

// testIIFE: immediately invoked function expression
func testIIFE() {
	x := 10
	_ = func(y int) int {
		return x + y
	}(5)
}

// testDeferClosure: defer with closure
func testDeferClosure() {
	dx := 100
	defer func() {
		_ = dx + 1
	}()
}

// testGoClosure: go statement with closure
func testGoClosure() {
	gx := 42
	go func() {
		_ = gx * 2
	}()
}

// testClosureAsParam: closure passed as parameter (higher-order function)
func testClosureAsParam() {
	applyFn := func(nums []int, f func(int) int) []int {
		res := make([]int, len(nums))
		for i, n := range nums {
			res[i] = f(n)
		}
		return res
	}
	factor := 3
	nums := []int{1, 2, 3}
	_ = applyFn(nums, func(n int) int {
		return n * factor
	})
}

// testNestedClosure: nested closure with multi-level capture
func testNestedClosure() {
	a := 1
	outer := func() func() int {
		b := 2
		return func() int {
			return a + b // captures a (outer) and b (inner)
		}
	}
	inner := outer()
	_ = inner()
}

func main() {
	testNoFreeClosure()
	testWithFreeClosure()
	testGlobalFuncAsClosure()
	testPtrMethodValue()
	testMethodExpr()
	testValueMethodValue()
	testIfaceMethodValue()
	testDirectMethodCall()
	testIfaceMethodCall()
	testGoLinknameAsClosure()
	testLlgoLinkAsClosure()
	testCCallback()
	testIIFE()
	testDeferClosure()
	testGoClosure()
	testClosureAsParam()
	testNestedClosure()
}
