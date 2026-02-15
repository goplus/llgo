package signal_test

import (
	"context"
	"os"
	"os/signal"
	"runtime"
	"syscall"
	"testing"
	"time"
)

func TestNotify(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGWINCH)
	defer signal.Stop(c)

	proc, err := os.FindProcess(os.Getpid())
	if err != nil {
		t.Fatalf("FindProcess error: %v", err)
	}

	err = proc.Signal(syscall.SIGWINCH)
	if err != nil {
		t.Fatalf("Signal error: %v", err)
	}

	select {
	case sig := <-c:
		if sig != syscall.SIGWINCH {
			t.Errorf("Received signal %v, want SIGWINCH", sig)
		}
	case <-time.After(time.Second):
		t.Fatal("Timeout waiting for signal")
	}
}

func TestNotifyMultipleSignals(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	c := make(chan os.Signal, 2)
	signal.Notify(c, syscall.SIGWINCH, syscall.SIGCHLD)
	defer signal.Stop(c)

	proc, err := os.FindProcess(os.Getpid())
	if err != nil {
		t.Fatalf("FindProcess error: %v", err)
	}

	err = proc.Signal(syscall.SIGWINCH)
	if err != nil {
		t.Fatalf("Signal SIGWINCH error: %v", err)
	}

	select {
	case sig := <-c:
		if sig != syscall.SIGWINCH {
			t.Errorf("First signal = %v, want SIGWINCH", sig)
		}
	case <-time.After(time.Second):
		t.Fatal("Timeout waiting for first signal")
	}
}

func TestStop(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGWINCH)
	signal.Stop(c)

	proc, err := os.FindProcess(os.Getpid())
	if err != nil {
		t.Fatalf("FindProcess error: %v", err)
	}

	err = proc.Signal(syscall.SIGWINCH)
	if err != nil {
		t.Fatalf("Signal error: %v", err)
	}

	select {
	case sig := <-c:
		t.Errorf("Received signal %v after Stop", sig)
	case <-time.After(100 * time.Millisecond):
	}
}

func TestReset(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGWINCH)
	signal.Reset(syscall.SIGWINCH)

	proc, err := os.FindProcess(os.Getpid())
	if err != nil {
		t.Fatalf("FindProcess error: %v", err)
	}

	err = proc.Signal(syscall.SIGWINCH)
	if err != nil {
		t.Fatalf("Signal error: %v", err)
	}

	select {
	case sig := <-c:
		t.Errorf("Received signal %v after Reset", sig)
	case <-time.After(100 * time.Millisecond):
	}
}

func TestResetAll(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGWINCH)
	signal.Reset()

	proc, err := os.FindProcess(os.Getpid())
	if err != nil {
		t.Fatalf("FindProcess error: %v", err)
	}

	err = proc.Signal(syscall.SIGWINCH)
	if err != nil {
		t.Fatalf("Signal error: %v", err)
	}

	select {
	case sig := <-c:
		t.Errorf("Received signal %v after Reset()", sig)
	case <-time.After(100 * time.Millisecond):
	}
}

func TestIgnore(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	signal.Ignore(syscall.SIGWINCH)
	defer signal.Reset(syscall.SIGWINCH)

	proc, err := os.FindProcess(os.Getpid())
	if err != nil {
		t.Fatalf("FindProcess error: %v", err)
	}

	err = proc.Signal(syscall.SIGWINCH)
	if err != nil {
		t.Fatalf("Signal error: %v", err)
	}

	time.Sleep(100 * time.Millisecond)
}

func TestIgnored(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	wasIgnored := signal.Ignored(syscall.SIGWINCH)

	signal.Ignore(syscall.SIGWINCH)
	defer signal.Reset(syscall.SIGWINCH)

	if !signal.Ignored(syscall.SIGWINCH) {
		t.Error("Expected SIGWINCH to be ignored after Ignore()")
	}

	signal.Reset(syscall.SIGWINCH)

	afterReset := signal.Ignored(syscall.SIGWINCH)
	if afterReset != wasIgnored {
		t.Logf("Signal ignored state changed after Reset: was=%v, after=%v", wasIgnored, afterReset)
	}
}

func TestNotifyContext(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	ctx, stop := signal.NotifyContext(context.Background(), syscall.SIGWINCH)
	defer stop()

	select {
	case <-ctx.Done():
		t.Error("Context should not be done before signal")
	case <-time.After(100 * time.Millisecond):
	}

	proc, err := os.FindProcess(os.Getpid())
	if err != nil {
		t.Fatalf("FindProcess error: %v", err)
	}

	err = proc.Signal(syscall.SIGWINCH)
	if err != nil {
		t.Fatalf("Signal error: %v", err)
	}

	select {
	case <-ctx.Done():
	case <-time.After(time.Second):
		t.Fatal("Timeout waiting for context cancellation")
	}
}

func TestNotifyContextStop(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	ctx, stop := signal.NotifyContext(context.Background(), syscall.SIGWINCH)

	stop()

	select {
	case <-ctx.Done():
	case <-time.After(time.Second):
		t.Fatal("Context should be cancelled after stop()")
	}
}

func TestMultipleChannels(t *testing.T) {
	if runtime.GOOS == "windows" || runtime.GOOS == "plan9" {
		t.Skip("Skipping on Windows and Plan 9")
	}

	c1 := make(chan os.Signal, 1)
	c2 := make(chan os.Signal, 1)

	signal.Notify(c1, syscall.SIGWINCH)
	signal.Notify(c2, syscall.SIGWINCH)
	defer signal.Stop(c1)
	defer signal.Stop(c2)

	proc, err := os.FindProcess(os.Getpid())
	if err != nil {
		t.Fatalf("FindProcess error: %v", err)
	}

	err = proc.Signal(syscall.SIGWINCH)
	if err != nil {
		t.Fatalf("Signal error: %v", err)
	}

	receivedC1 := false
	receivedC2 := false

	timeout := time.After(time.Second)
	for !receivedC1 || !receivedC2 {
		select {
		case <-c1:
			receivedC1 = true
		case <-c2:
			receivedC2 = true
		case <-timeout:
			t.Fatal("Timeout waiting for signals on both channels")
		}
	}
}
