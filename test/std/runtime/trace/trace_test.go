//go:build !llgo

package trace_test

import (
	"bytes"
	"context"
	"runtime/trace"
	"testing"
)

func TestIsEnabled(t *testing.T) {
	if trace.IsEnabled() {
		t.Error("IsEnabled should return false when tracing is not active")
	}

	var buf bytes.Buffer
	err := trace.Start(&buf)
	if err != nil {
		t.Fatalf("trace.Start failed: %v", err)
	}
	defer trace.Stop()

	if !trace.IsEnabled() {
		t.Error("IsEnabled should return true when tracing is active")
	}

	trace.Stop()

	if trace.IsEnabled() {
		t.Error("IsEnabled should return false after Stop")
	}
}

func TestStartStop(t *testing.T) {
	var buf bytes.Buffer
	err := trace.Start(&buf)
	if err != nil {
		t.Fatalf("trace.Start failed: %v", err)
	}

	for i := 0; i < 100; i++ {
		_ = i * i
	}

	trace.Stop()

	if buf.Len() == 0 {
		t.Error("trace buffer is empty")
	}
}

func TestStartTwice(t *testing.T) {
	var buf1, buf2 bytes.Buffer
	err := trace.Start(&buf1)
	if err != nil {
		t.Fatalf("first trace.Start failed: %v", err)
	}
	defer trace.Stop()

	err = trace.Start(&buf2)
	if err == nil {
		t.Error("second trace.Start should fail when already tracing")
	}

	trace.Stop()
}

func TestLog(t *testing.T) {
	var buf bytes.Buffer
	err := trace.Start(&buf)
	if err != nil {
		t.Fatalf("trace.Start failed: %v", err)
	}
	defer trace.Stop()

	ctx := context.Background()
	trace.Log(ctx, "test-category", "test-message")

	trace.Stop()

	if buf.Len() == 0 {
		t.Error("trace buffer is empty after Log")
	}
}

func TestLogf(t *testing.T) {
	var buf bytes.Buffer
	err := trace.Start(&buf)
	if err != nil {
		t.Fatalf("trace.Start failed: %v", err)
	}
	defer trace.Stop()

	ctx := context.Background()
	trace.Logf(ctx, "test-category", "test message: %d", 42)

	trace.Stop()

	if buf.Len() == 0 {
		t.Error("trace buffer is empty after Logf")
	}
}

func TestWithRegion(t *testing.T) {
	var buf bytes.Buffer
	err := trace.Start(&buf)
	if err != nil {
		t.Fatalf("trace.Start failed: %v", err)
	}
	defer trace.Stop()

	ctx := context.Background()
	executed := false
	trace.WithRegion(ctx, "test-region", func() {
		executed = true
	})

	if !executed {
		t.Error("WithRegion function was not executed")
	}

	trace.Stop()

	if buf.Len() == 0 {
		t.Error("trace buffer is empty after WithRegion")
	}
}

func TestRegion(t *testing.T) {
	var buf bytes.Buffer
	err := trace.Start(&buf)
	if err != nil {
		t.Fatalf("trace.Start failed: %v", err)
	}
	defer trace.Stop()

	ctx := context.Background()
	region := trace.StartRegion(ctx, "manual-region")
	if region == nil {
		t.Fatal("StartRegion returned nil")
	}

	for i := 0; i < 10; i++ {
		_ = i * i
	}

	region.End()

	trace.Stop()

	if buf.Len() == 0 {
		t.Error("trace buffer is empty after Region")
	}
}

func TestTask(t *testing.T) {
	var buf bytes.Buffer
	err := trace.Start(&buf)
	if err != nil {
		t.Fatalf("trace.Start failed: %v", err)
	}
	defer trace.Stop()

	ctx := context.Background()
	ctx, task := trace.NewTask(ctx, "test-task")
	if task == nil {
		t.Fatal("NewTask returned nil task")
	}

	trace.Log(ctx, "task-log", "message in task")

	task.End()

	trace.Stop()

	if buf.Len() == 0 {
		t.Error("trace buffer is empty after Task")
	}
}
