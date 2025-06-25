//go:build !llgo
// +build !llgo

package build

import (
	"bytes"
	"fmt"
	"io"
	"os"
	"testing"

	"github.com/goplus/llgo/internal/mockable"
)

func mockRun(args []string, cfg *Config) {
	const maxAttempts = 3
	var lastErr error
	var lastPanic interface{}
	for attempt := 0; attempt < maxAttempts; attempt++ {
		mockable.EnableMock()
		func() {
			defer func() {
				if r := recover(); r != nil {
					if r != "exit" {
						lastPanic = r
					} else {
						exitCode := mockable.ExitCode()
						if (exitCode != 0) != false {
							lastPanic = fmt.Errorf("got exit code %d", exitCode)
						}
					}
				}
			}()
			file, _ := os.CreateTemp("", "llgo-*")
			cfg.OutFile = file.Name()
			file.Close()
			defer os.Remove(cfg.OutFile)
			_, err := Do(args, cfg)
			if err == nil {
				return // Success, return immediately from the inner function
			}
			lastErr = err
		}()

		if lastPanic == nil && lastErr == nil {
			return // Success, return from mockRun
		}
		// Continue to next attempt if this one failed
	}
	// If we get here, all attempts failed
	if lastPanic != nil {
		panic(lastPanic)
	}
	panic(fmt.Errorf("all %d attempts failed, last error: %v", maxAttempts, lastErr))
}

func TestRun(t *testing.T) {
	mockRun([]string{"../../cl/_testgo/print"}, &Config{Mode: ModeRun})
}

func TestTest(t *testing.T) {
	// FIXME(zzy): with builtin package test in a llgo test ./... will cause duplicate symbol error
	mockRun([]string{"../../cl/_testgo/runtest"}, &Config{Mode: ModeTest})
}

func TestExtest(t *testing.T) {
	originalStdout := os.Stdout
	defer func() { os.Stdout = originalStdout }()

	r, w, err := os.Pipe()
	if err != nil {
		t.Fatalf("os.Pipe failed: %v", err)
	}
	os.Stdout = w
	outputChan := make(chan string)
	go func() {
		var data bytes.Buffer
		io.Copy(&data, r)
		outputChan <- data.String()
	}()

	mockRun([]string{"../../cl/_testgo/runextest/..."}, &Config{Mode: ModeTest})

	w.Close()
	got := <-outputChan
	expected := "PASS\nPASS\nPASS\nPASS\n"
	if got != expected {
		t.Errorf("Expected output %q, but got %q", expected, got)
	}
}

func TestCmpTest(t *testing.T) {
	mockRun([]string{"../../cl/_testgo/runtest"}, &Config{Mode: ModeCmpTest})
}
