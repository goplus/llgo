//go:build llgo
// +build llgo

package test

import _ "unsafe" // for go:linkname

import (
	"testing"

	"github.com/goplus/lib/c"
)

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
