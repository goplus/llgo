package cmp_test

import (
	"cmp"
	"math"
	"testing"
)

type score float64

func TestCompareOrderedValues(t *testing.T) {
	tests := []struct {
		name string
		a    any
		b    any
		want int
	}{
		{"ints less", 3, 4, -1},
		{"ints equal", 7, 7, 0},
		{"ints greater", 10, 2, 1},
		{"floats less", score(1.5), score(1.75), -1},
		{"floats greater", score(3.5), score(1.25), 1},
		{"floats nan", math.NaN(), math.NaN(), 0},
		{"strings", "go", "plus", -1},
	}

	for _, tt := range tests {
		ttt := tt
		t.Run(ttt.name, func(t *testing.T) {
			switch a := ttt.a.(type) {
			case int:
				if got := cmp.Compare(a, ttt.b.(int)); got != ttt.want {
					t.Fatalf("Compare(%v,%v)=%d", ttt.a, ttt.b, got)
				}
			case score:
				if got := cmp.Compare(a, ttt.b.(score)); got != ttt.want {
					t.Fatalf("Compare(%v,%v)=%d", ttt.a, ttt.b, got)
				}
			case string:
				if got := cmp.Compare(a, ttt.b.(string)); got != ttt.want {
					t.Fatalf("Compare(%v,%v)=%d", ttt.a, ttt.b, got)
				}
			case float64:
				if got := cmp.Compare(a, ttt.b.(float64)); got != ttt.want {
					t.Fatalf("Compare(%v,%v)=%d", ttt.a, ttt.b, got)
				}
			default:
				t.Fatalf("unhandled type %T", ttt.a)
			}
		})
	}
}

type wrappedInt int

func TestLessWithAliases(t *testing.T) {
	if !cmp.Less(wrappedInt(2), wrappedInt(3)) {
		t.Fatal("Less should report 2<3")
	}
	if cmp.Less(wrappedInt(3), wrappedInt(3)) {
		t.Fatal("Less should report equality as false")
	}
	if !cmp.Less(math.NaN(), 1.0) {
		t.Fatal("Less should order NaN before finite values")
	}
	if cmp.Less(1.0, math.NaN()) {
		t.Fatal("Finite values should not order before NaN")
	}
}

type point struct {
	X int
	Y int
}

func TestOrReturnsFirstNonZero(t *testing.T) {
	if got := cmp.Or[int](0, 0, 5, 7); got != 5 {
		t.Fatalf("Or int = %d", got)
	}
	if got := cmp.Or[string]("", "", "go"); got != "go" {
		t.Fatalf("Or string = %q", got)
	}
	if got := cmp.Or[point](point{}, point{X: 1}, point{X: 2}); got != (point{X: 1}) {
		t.Fatalf("Or struct = %#v", got)
	}
	if got := cmp.Or[bool](false, false, true); got != true {
		t.Fatalf("Or bool = %v", got)
	}
	type label string
	if got := cmp.Or[label](); got != label("") {
		t.Fatalf("Or with no args = %q", got)
	}
	alt := 42
	res := cmp.Or[*int](nil, &alt)
	if res == nil || *res != 42 {
		t.Fatalf("Or pointer = %#v", res)
	}
}

func assertOrdered[T cmp.Ordered](v T) T {
	return v
}

func TestOrderedConstraintAcceptsAliases(t *testing.T) {
	type rank string
	if got := assertOrdered(rank("alpha")); got != "alpha" {
		t.Fatalf("assertOrdered returned %q", got)
	}
	type temperature float64
	if got := assertOrdered(temperature(-40)); got != -40 {
		t.Fatalf("assertOrdered returned %v", got)
	}
}
