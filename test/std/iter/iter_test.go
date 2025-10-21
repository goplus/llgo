//go:build !llgo

package iter_test

import (
	"testing"

	"iter"
)

func TestPullIteratesSequence(t *testing.T) {
	seq := iter.Seq[int](func(yield func(int) bool) {
		for _, v := range [...]int{10, 11, 12} {
			if !yield(v) {
				return
			}
		}
	})
	next, stop := iter.Pull(seq)
	defer stop()

	wants := []int{10, 11, 12}
	for i, want := range wants {
		got, ok := next()
		if !ok || got != want {
			t.Fatalf("next call %d = (%d, %v), want (%d, true)", i, got, ok, want)
		}
	}

	if got, ok := next(); ok || got != 0 {
		t.Fatalf("next after exhaustion = (%d, %v), want (0, false)", got, ok)
	}
	if got, ok := next(); ok || got != 0 {
		t.Fatalf("next after exhaustion repeat = (%d, %v), want (0, false)", got, ok)
	}
}

func TestPullStopEarly(t *testing.T) {
	produced := 0
	seq := iter.Seq[int](func(yield func(int) bool) {
		for i := 0; i < 5; i++ {
			produced++
			if !yield(i) {
				return
			}
		}
	})

	next, stop := iter.Pull(seq)
	if got, ok := next(); !ok || got != 0 {
		t.Fatalf("first next = (%d, %v), want (0, true)", got, ok)
	}
	stop()
	stop()
	if produced != 1 {
		t.Fatalf("sequence produced %d values, want 1 after early stop", produced)
	}
	if got, ok := next(); ok || got != 0 {
		t.Fatalf("next after stop = (%d, %v), want (0, false)", got, ok)
	}
}

func TestPull2IteratesPairs(t *testing.T) {
	seq := iter.Seq2[int, string](func(yield func(int, string) bool) {
		pairs := []struct {
			k int
			v string
		}{
			{0, "zero"},
			{1, "one"},
			{2, "two"},
		}
		for _, p := range pairs {
			if !yield(p.k, p.v) {
				return
			}
		}
	})

	next, stop := iter.Pull2(seq)
	defer stop()

	for idx, want := range []struct {
		k int
		v string
	}{
		{0, "zero"},
		{1, "one"},
		{2, "two"},
	} {
		k, v, ok := next()
		if !ok || k != want.k || v != want.v {
			t.Fatalf("next call %d = (%d, %s, %v), want (%d, %s, true)", idx, k, v, ok, want.k, want.v)
		}
	}

	if k, v, ok := next(); ok || k != 0 || v != "" {
		t.Fatalf("next after exhaustion = (%d, %q, %v), want (0, %q, false)", k, v, ok, "")
	}
	if k, v, ok := next(); ok || k != 0 || v != "" {
		t.Fatalf("next after exhaustion repeat = (%d, %q, %v), want (0, %q, false)", k, v, ok, "")
	}
}

var (
	doubleNextSlot  func() (int, bool)
	doubleNextSlot2 func() (int, int, bool)
)

func TestPullDoubleNextPanics(t *testing.T) {
	seq := iter.Seq[int](func(_ func(int) bool) {
		defer func() {
			if recover() != nil {
				doubleNextSlot = nil
			}
		}()
		doubleNextSlot()
	})

	next, stop := iter.Pull(seq)
	defer stop()
	doubleNextSlot = next
	if _, ok := next(); ok {
		t.Fatal("double next returned ok, want panic path")
	}
	if doubleNextSlot != nil {
		t.Fatal("double next did not trigger panic guard")
	}
	doubleNextSlot = nil
}

func TestPull2DoubleNextPanics(t *testing.T) {
	seq := iter.Seq2[int, int](func(_ func(int, int) bool) {
		defer func() {
			if recover() != nil {
				doubleNextSlot2 = nil
			}
		}()
		doubleNextSlot2()
	})

	next, stop := iter.Pull2(seq)
	defer stop()
	doubleNextSlot2 = next
	if _, _, ok := next(); ok {
		t.Fatal("double next returned ok, want panic path")
	}
	if doubleNextSlot2 != nil {
		t.Fatal("double next did not trigger panic guard")
	}
	doubleNextSlot2 = nil
}

var (
	doubleYieldSlot  func(int) bool
	doubleYieldSlot2 func(int, int) bool
)

func TestPullDoubleYieldPanics(t *testing.T) {
	seq := iter.Seq[int](func(yield func(int) bool) {
		doubleYieldSlot = yield
		if !yield(5) {
			return
		}
	})

	next, stop := iter.Pull(seq)
	defer stop()
	if _, ok := next(); !ok {
		t.Fatal("first next failed")
	}
	if doubleYieldSlot == nil {
		t.Fatal("yield function not captured")
	}
	panicked := false
	func() {
		defer func() {
			if recover() != nil {
				doubleYieldSlot = nil
				panicked = true
			}
		}()
		doubleYieldSlot(10)
	}()
	if !panicked {
		t.Fatal("double yield did not panic")
	}
	if doubleYieldSlot != nil {
		t.Fatal("double yield did not trigger panic guard")
	}
}

func TestPull2DoubleYieldPanics(t *testing.T) {
	seq := iter.Seq2[int, int](func(yield func(int, int) bool) {
		doubleYieldSlot2 = yield
		if !yield(7, 9) {
			return
		}
	})

	next, stop := iter.Pull2(seq)
	defer stop()
	if _, _, ok := next(); !ok {
		t.Fatal("first next failed")
	}
	if doubleYieldSlot2 == nil {
		t.Fatal("yield function not captured")
	}
	panicked := false
	func() {
		defer func() {
			if recover() != nil {
				doubleYieldSlot2 = nil
				panicked = true
			}
		}()
		doubleYieldSlot2(11, 13)
	}()
	if !panicked {
		t.Fatal("double yield did not panic")
	}
	if doubleYieldSlot2 != nil {
		t.Fatal("double yield did not trigger panic guard")
	}
}

func TestPullPropagatesPanic(t *testing.T) {
	seq := iter.Seq[int](func(func(int) bool) {
		panic("boom")
	})

	next, stop := iter.Pull(seq)
	defer stop()
	assertPanicsWith(t, "boom", func() { next() })
	if v, ok := next(); ok || v != 0 {
		t.Fatalf("next after panic = (%d, %v), want (0, false)", v, ok)
	}
}

func TestPull2PropagatesPanic(t *testing.T) {
	seq := iter.Seq2[int, int](func(func(int, int) bool) {
		panic("boom2")
	})

	next, stop := iter.Pull2(seq)
	defer stop()
	assertPanicsWith(t, "boom2", func() { next() })
	if k, v, ok := next(); ok || k != 0 || v != 0 {
		t.Fatalf("next after panic = (%d, %d, %v), want (0, 0, false)", k, v, ok)
	}
}

func TestPullPanicOnStop(t *testing.T) {
	seq := iter.Seq[int](func(yield func(int) bool) {
		for {
			if !yield(55) {
				panic("cleanup")
			}
		}
	})

	next, stop := iter.Pull(seq)
	if v, ok := next(); !ok || v != 55 {
		t.Fatalf("first next = (%d, %v), want (55, true)", v, ok)
	}
	assertPanicsWith(t, "cleanup", func() { stop() })
	if v, ok := next(); ok || v != 0 {
		t.Fatalf("next after stop panic = (%d, %v), want (0, false)", v, ok)
	}
	stop()
}

func TestPull2PanicOnStop(t *testing.T) {
	seq := iter.Seq2[int, int](func(yield func(int, int) bool) {
		for {
			if !yield(21, 34) {
				panic("cleanup2")
			}
		}
	})

	next, stop := iter.Pull2(seq)
	if k, v, ok := next(); !ok || k != 21 || v != 34 {
		t.Fatalf("first next = (%d, %d, %v), want (21, 34, true)", k, v, ok)
	}
	assertPanicsWith(t, "cleanup2", func() { stop() })
	if k, v, ok := next(); ok || k != 0 || v != 0 {
		t.Fatalf("next after stop panic = (%d, %d, %v), want (0, 0, false)", k, v, ok)
	}
	stop()
}

func assertPanicsWith(t *testing.T, want any, fn func()) {
	t.Helper()
	defer func() {
		recovered := recover()
		switch {
		case recovered == nil:
			t.Fatalf("expected panic %v, but function returned normally", want)
		case recovered != want:
			t.Fatalf("panic = %v, want %v", recovered, want)
		}
	}()
	fn()
}
