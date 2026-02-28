package ring_test

import (
	"container/ring"
	"testing"
)

func setRingValues(r *ring.Ring, vals []int) {
	cur := r
	for _, v := range vals {
		cur.Value = v
		cur = cur.Next()
	}
}

func ringValues(r *ring.Ring) []int {
	if r == nil {
		return nil
	}
	out := make([]int, 0, r.Len())
	r.Do(func(v any) {
		out = append(out, v.(int))
	})
	return out
}

func equalInts(a, b []int) bool {
	if len(a) != len(b) {
		return false
	}
	for i := range a {
		if a[i] != b[i] {
			return false
		}
	}
	return true
}

func TestRingZeroValueAndMove(t *testing.T) {
	var r ring.Ring
	if r.Len() != 1 {
		t.Fatalf("zero Ring Len() = %d, want 1", r.Len())
	}
	if r.Next() != &r {
		t.Fatalf("zero Ring Next() should return itself")
	}
	if r.Prev() != &r {
		t.Fatalf("zero Ring Prev() should return itself")
	}
	if r.Move(10) != &r {
		t.Fatalf("zero Ring Move(10) should return itself")
	}
	if r.Move(-3) != &r {
		t.Fatalf("zero Ring Move(-3) should return itself")
	}
}

func TestRingNewAndDo(t *testing.T) {
	if ring.New(0) != nil {
		t.Fatalf("ring.New(0) should return nil")
	}
	if ring.New(-1) != nil {
		t.Fatalf("ring.New(-1) should return nil")
	}

	r := ring.New(4)
	if r == nil {
		t.Fatalf("ring.New(4) should not return nil")
	}
	if r.Len() != 4 {
		t.Fatalf("ring.New(4) Len() = %d, want 4", r.Len())
	}

	setRingValues(r, []int{1, 2, 3, 4})

	sum := 0
	r.Do(func(v any) {
		sum += v.(int)
	})
	if sum != 10 {
		t.Fatalf("ring.Do sum = %d, want 10", sum)
	}
}

func TestRingLinkAndUnlink(t *testing.T) {
	a := ring.New(3)
	setRingValues(a, []int{1, 2, 3})
	b := ring.New(2)
	setRingValues(b, []int{10, 11})

	oldNext := a.Next()
	ret := a.Link(b)
	if ret != oldNext {
		t.Fatalf("Link should return original next element")
	}
	if a.Len() != 5 {
		t.Fatalf("after Link, Len() = %d, want 5", a.Len())
	}
	if got := ringValues(a); !equalInts(got, []int{1, 10, 11, 2, 3}) {
		t.Fatalf("after Link values = %v, want %v", got, []int{1, 10, 11, 2, 3})
	}

	removed := a.Unlink(2)
	if removed == nil {
		t.Fatalf("Unlink should return removed subring")
	}
	if a.Len() != 3 {
		t.Fatalf("after Unlink, Len() = %d, want 3", a.Len())
	}
	if removed.Len() != 2 {
		t.Fatalf("removed.Len() = %d, want 2", removed.Len())
	}
	if got := ringValues(a); !equalInts(got, []int{1, 2, 3}) {
		t.Fatalf("after Unlink ring values = %v, want %v", got, []int{1, 2, 3})
	}
	if got := ringValues(removed); !equalInts(got, []int{10, 11}) {
		t.Fatalf("removed ring values = %v, want %v", got, []int{10, 11})
	}
}
