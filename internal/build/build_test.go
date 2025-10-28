//go:build !llgo
// +build !llgo

package build

import (
	"bytes"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/mockable"
)

func mockRun(args []string, cfg *Config) {
	mockable.EnableMock()
	defer func() {
		if r := recover(); r != nil {
			if r != "exit" {
				panic(r)
			} else {
				exitCode := mockable.ExitCode()
				if (exitCode != 0) != false {
					panic(fmt.Errorf("got exit code %d", exitCode))
				}
			}
		}
	}()
	file, _ := os.CreateTemp("", "llgo-*")
	cfg.OutFile = file.Name()
	file.Close()
	os.Remove(cfg.OutFile)
	_, err := Do(args, cfg)
	if err != nil {
		panic(err)
	}
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

func TestBuildWithXFlag(t *testing.T) {
	if testing.Short() {
		t.Skip("skipping integration-style test in short mode")
	}

	helloDir := filepath.Join("..", "..", "cl", "_testgo", "hellox")
	info, err := os.Stat(helloDir)
	if err != nil || !info.IsDir() {
		t.Skipf("hello test module not found: %v", err)
	}

	cfg := &Config{Mode: ModeBuild, Verbose: true}
	overrideValue := "hello-from-test"
	addGlobalString(cfg, "main.Hello="+overrideValue, nil)
	fmt.Printf("global names in test: %v\n", cfg.GlobalNames)
	mockRun([]string{helloDir}, cfg)

	cmd := exec.Command(cfg.OutFile)
	cmd.Dir = helloDir
	cmd.Env = append(os.Environ(), "LLGO_SKIP_LLC=1")
	out, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("running built binary failed: %v\n%s", err, out)
	}

	if !strings.Contains(string(out), overrideValue) {
		t.Fatalf("expected output to contain overridden value, got: %s", out)
	}
}

// TestGenerateOutputFilenames removed - functionality moved to filename_test.go
