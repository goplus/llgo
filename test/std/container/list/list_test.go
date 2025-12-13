package list_test

import (
	"container/list"
	"testing"
)

func listValues(l *list.List) []int {
	var out []int
	for e := l.Front(); e != nil; e = e.Next() {
		out = append(out, e.Value.(int))
	}
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

func expectOrder(t *testing.T, l *list.List, want []int) {
	t.Helper()
	if got := listValues(l); !equalInts(got, want) {
		t.Fatalf("list order mismatch: got %v want %v", got, want)
	}
}

func TestListInsertionsAndRemoval(t *testing.T) {
	l := list.New()
	if l.Len() != 0 {
		t.Fatalf("new list length = %d, want 0", l.Len())
	}

	front := l.PushFront(2)
	if l.Front() != front {
		t.Fatalf("Front should return the first element")
	}
	if front.Prev() != nil {
		t.Fatalf("front.Prev() = %v, want nil", front.Prev())
	}

	back := l.PushBack(4)
	if l.Back() != back {
		t.Fatalf("Back should return the last element")
	}

	mid := l.InsertAfter(3, front)
	before := l.InsertBefore(1, front)

	if l.Len() != 4 {
		t.Fatalf("Len = %d, want 4", l.Len())
	}

	if front.Next() != mid || mid.Prev() != front {
		t.Fatalf("InsertAfter should link new element after target")
	}
	if front.Prev() != before || before.Next() != front {
		t.Fatalf("InsertBefore should link new element before target")
	}

	expectOrder(t, l, []int{1, 2, 3, 4})

	removed := l.Remove(front)
	if removed.(int) != 2 {
		t.Fatalf("Remove returned %v, want 2", removed)
	}
	if l.Len() != 3 {
		t.Fatalf("Len after Remove = %d, want 3", l.Len())
	}

	expectOrder(t, l, []int{1, 3, 4})
	if back.Prev().Value.(int) != 3 {
		t.Fatalf("Back predecessor = %v, want 3", back.Prev().Value)
	}
}

func TestListMoveOperations(t *testing.T) {
	l := list.New()
	e1 := l.PushBack(1)
	e2 := l.PushBack(2)
	e3 := l.PushBack(3)
	e4 := l.PushBack(4)

	l.MoveToFront(e4)
	expectOrder(t, l, []int{4, 1, 2, 3})

	l.MoveToBack(e4)
	expectOrder(t, l, []int{1, 2, 3, 4})

	l.MoveAfter(e2, e3)
	expectOrder(t, l, []int{1, 3, 2, 4})

	l.MoveBefore(e4, e1)
	expectOrder(t, l, []int{4, 1, 3, 2})

	if e1.Prev() != l.Front() {
		t.Fatalf("e1 should now have front as predecessor")
	}
	if e3.Next() != e2 {
		t.Fatalf("e3.Next() = %v, want e2", e3.Next())
	}
}

func TestListPushListAndInit(t *testing.T) {
	base := list.New()
	base.PushBack(1)
	base.PushBack(2)

	prefix := list.New()
	prefix.PushBack(-2)
	prefix.PushBack(-1)

	suffix := list.New()
	suffix.PushBack(3)
	suffix.PushBack(4)

	base.PushFrontList(prefix)
	if prefix.Len() != 2 {
		t.Fatalf("prefix length after PushFrontList = %d, want 2", prefix.Len())
	}
	if prefix.Front().Value.(int) != -2 || prefix.Back().Value.(int) != -1 {
		t.Fatalf("prefix contents should remain intact")
	}
	expectOrder(t, base, []int{-2, -1, 1, 2})

	base.PushBackList(suffix)
	if suffix.Len() != 2 {
		t.Fatalf("suffix length after PushBackList = %d, want 2", suffix.Len())
	}
	if suffix.Front().Value.(int) != 3 || suffix.Back().Value.(int) != 4 {
		t.Fatalf("suffix contents should remain intact")
	}
	expectOrder(t, base, []int{-2, -1, 1, 2, 3, 4})
	if base.Front().Value.(int) != -2 || base.Back().Value.(int) != 4 {
		t.Fatalf("Front/Back mismatch: front=%v back=%v", base.Front().Value, base.Back().Value)
	}

	var raw list.List
	raw.PushBack(10)
	raw.PushBack(11)
	if raw.Len() != 2 {
		t.Fatalf("raw length = %d, want 2", raw.Len())
	}
	raw.Init()
	if raw.Len() != 0 || raw.Front() != nil || raw.Back() != nil {
		t.Fatalf("Init should reset list to empty state")
	}

	base.Init()
	if base.Len() != 0 || base.Front() != nil || base.Back() != nil {
		t.Fatalf("Init should clear populated list")
	}
}
