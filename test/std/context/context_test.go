package context_test

import (
	"context"
	"errors"
	"testing"
	"time"
)

func TestBackground(t *testing.T) {
	ctx := context.Background()
	if ctx == nil {
		t.Fatal("Background context is nil")
	}
	if ctx.Done() != nil {
		t.Errorf("Background context Done() channel is not nil")
	}
	if ctx.Err() != nil {
		t.Errorf("Background context Err() is not nil")
	}
	if _, ok := ctx.Deadline(); ok {
		t.Errorf("Background context has a deadline")
	}
	if ctx.Value(nil) != nil {
		t.Errorf("Background context has a value")
	}
}

func TestTODO(t *testing.T) {
	ctx := context.TODO()
	if ctx == nil {
		t.Fatal("TODO context is nil")
	}
	if ctx.Done() != nil {
		t.Errorf("TODO context Done() channel is not nil")
	}
	if ctx.Err() != nil {
		t.Errorf("TODO context Err() is not nil")
	}
	if _, ok := ctx.Deadline(); ok {
		t.Errorf("TODO context has a deadline")
	}
	if ctx.Value(nil) != nil {
		t.Errorf("TODO context has a value")
	}
}

// TestParentFinishesChild is adapted from the official Go context_test.go
func TestParentFinishesChild(t *testing.T) {
	parent, cancel := context.WithCancel(context.Background())
	cancelChild, stop := context.WithCancel(parent)
	defer stop()
	valueChild := context.WithValue(parent, "key", "value")
	timerChild, stop := context.WithTimeout(valueChild, 1000*time.Hour) // veryLongDuration
	defer stop()

	select {
	case x := <-parent.Done():
		t.Errorf("<-parent.Done() == %v want nothing (it should block)", x)
	case x := <-cancelChild.Done():
		t.Errorf("<-cancelChild.Done() == %v want nothing (it should block)", x)
	case x := <-timerChild.Done():
		t.Errorf("<-timerChild.Done() == %v want nothing (it should block)", x)
	case x := <-valueChild.Done():
		t.Errorf("<-valueChild.Done() == %v want nothing (it should block)", x)
	default:
	}

	cancel()

	check := func(ctx context.Context, name string) {
		select {
		case <-ctx.Done():
		default:
			t.Errorf("<-%s.Done() blocked, but shouldn't have", name)
		}
		if e := ctx.Err(); e != context.Canceled {
			t.Errorf("%s.Err() == %v want %v", name, e, context.Canceled)
		}
	}
	check(parent, "parent")
	check(cancelChild, "cancelChild")
	check(valueChild, "valueChild")
	check(timerChild, "timerChild")

	// WithCancel should return a canceled context on a canceled parent.
	precanceledChild, _ := context.WithCancel(parent)
	select {
	case <-precanceledChild.Done():
	default:
		t.Errorf("<-precanceledChild.Done() blocked, but shouldn't have")
	}
	if e := precanceledChild.Err(); e != context.Canceled {
		t.Errorf("precanceledChild.Err() == %v want %v", e, context.Canceled)
	}
}

// TestChildFinishesFirst is adapted from the official Go context_test.go
func TestChildFinishesFirst(t *testing.T) {
	cancelable, stop := context.WithCancel(context.Background())
	defer stop()
	for _, parent := range []context.Context{context.Background(), cancelable} {
		child, cancel := context.WithCancel(parent)
		select {
		case x := <-parent.Done():
			t.Errorf("<-parent.Done() == %v want nothing (it should block)", x)
		case x := <-child.Done():
			t.Errorf("<-child.Done() == %v want nothing (it should block)", x)
		default:
		}

		cancel()

		// child should be finished.
		select {
		case <-child.Done():
		default:
			t.Errorf("<-child.Done() blocked, but shouldn't have")
		}
		if e := child.Err(); e != context.Canceled {
			t.Errorf("child.Err() == %v want %v", e, context.Canceled)
		}

		// parent should not be finished.
		select {
		case x := <-parent.Done():
			t.Errorf("<-parent.Done() == %v want nothing (it should block)", x)
		default:
		}
		if e := parent.Err(); e != nil {
			t.Errorf("parent.Err() == %v want nil", e)
		}
	}
}

func TestAfterFunc(t *testing.T) {
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	called := make(chan struct{})
	stop := context.AfterFunc(ctx, func() {
		close(called)
	})

	select {
	case <-called:
		t.Fatal("AfterFunc called too early")
	case <-time.After(10 * time.Millisecond):
		// OK
	}

	cancel()

	select {
	case <-called:
		// OK
	case <-time.After(100 * time.Millisecond):
		t.Fatal("AfterFunc not called after cancel")
	}

	if stop() {
		t.Error("stop() returned true, want false")
	}
	if stop() {
		t.Error("stop() returned true after first call, want false")
	}
}

func TestWithCancelCause(t *testing.T) {
	parent := context.Background()
	ctx, cancel := context.WithCancelCause(parent)
	defer cancel(nil)

	if ctx.Err() != nil {
		t.Errorf("ctx.Err() = %v, want nil", ctx.Err())
	}
	if context.Cause(ctx) != nil {
		t.Errorf("context.Cause(ctx) = %v, want nil", context.Cause(ctx))
	}

	testErr := errors.New("test error") // Modified
	cancel(testErr)

	select {
	case <-ctx.Done():
	case <-time.After(100 * time.Millisecond):
		t.Fatal("context not canceled")
	}

	if ctx.Err() != context.Canceled {
		t.Errorf("ctx.Err() = %v, want %v", ctx.Err(), context.Canceled)
	}
	if context.Cause(ctx) != testErr {
		t.Errorf("context.Cause(ctx) = %v, want %v", context.Cause(ctx), testErr)
	}
}

func TestWithDeadline(t *testing.T) {
	parent := context.Background()
	// Deadline in the past
	ctx, cancel := context.WithDeadline(parent, time.Now().Add(-time.Hour))
	defer cancel()

	select {
	case <-ctx.Done():
	case <-time.After(10 * time.Millisecond):
		t.Fatal("context not canceled immediately")
	}

	if ctx.Err() != context.DeadlineExceeded {
		t.Errorf("ctx.Err() = %v, want %v", ctx.Err(), context.DeadlineExceeded)
	}

	// Deadline in the future
	ctx, cancel = context.WithDeadline(parent, time.Now().Add(100*time.Millisecond))
	defer cancel()

	select {
	case <-ctx.Done():
		t.Fatal("context canceled too early")
	case <-time.After(50 * time.Millisecond):
		// OK
	}

	select {
	case <-ctx.Done():
	case <-time.After(100 * time.Millisecond):
		t.Fatal("context not canceled after deadline")
	}

	if ctx.Err() != context.DeadlineExceeded {
		t.Errorf("ctx.Err() = %v, want %v", ctx.Err(), context.DeadlineExceeded)
	}
}

func TestWithDeadlineCause(t *testing.T) {
	parent := context.Background()
	testErr := errors.New("deadline cause error") // Modified
	ctx, cancel := context.WithDeadlineCause(parent, time.Now().Add(-time.Hour), testErr)
	defer cancel()

	select {
	case <-ctx.Done():
	case <-time.After(10 * time.Millisecond):
		t.Fatal("context not canceled immediately")
	}

	if ctx.Err() != context.DeadlineExceeded {
		t.Errorf("ctx.Err() = %v, want %v", ctx.Err(), context.DeadlineExceeded)
	}
	if context.Cause(ctx) != testErr {
		t.Errorf("context.Cause(ctx) = %v, want %v", context.Cause(ctx), testErr)
	}
}

func TestWithTimeoutCause(t *testing.T) {
	parent := context.Background()
	testErr := errors.New("timeout cause error")                         // Modified
	ctx, cancel := context.WithTimeoutCause(parent, -time.Hour, testErr) // Timeout in the past
	defer cancel()

	select {
	case <-ctx.Done():
	case <-time.After(10 * time.Millisecond):
		t.Fatal("context not canceled immediately")
	}

	if ctx.Err() != context.DeadlineExceeded {
		t.Errorf("ctx.Err() = %v, want %v", ctx.Err(), context.DeadlineExceeded)
	}
	if context.Cause(ctx) != testErr {
		t.Errorf("context.Cause(ctx) = %v, want %v", context.Cause(ctx), testErr)
	}
}

func TestCancelFuncTypes(t *testing.T) {
	var _ context.CancelFunc = func() {}
	var _ context.CancelCauseFunc = func(error) {}
}
