//go:build llgo && !wasm && !baremetal && !nogc

package llgoext

import (
	"context"
	"os"
	"os/exec"
	"runtime"
	"strings"
	"testing"
	"time"
)

const mainGoexitFinalizerChild = "LLGO_TEST_MAIN_GOEXIT_FINALIZER"

func init() {
	if os.Getenv(mainGoexitFinalizerChild) != "1" {
		return
	}
	// Starting the persistent finalizer worker must not keep this process alive
	// once its only user goroutine exits.
	runtime.SetFinalizer(new([64]byte), func(*[64]byte) {})
	runtime.Goexit()
}

func TestMainGoexitWithFinalizerWorker(t *testing.T) {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	cmd := exec.CommandContext(ctx, os.Args[0], "-test.run=^$")
	cmd.Env = append(os.Environ(), mainGoexitFinalizerChild+"=1")
	output, err := cmd.CombinedOutput()
	if ctx.Err() != nil {
		t.Fatalf("finalizer worker suppressed the main Goexit deadlock: %v\n%s", ctx.Err(), output)
	}
	if err == nil || !strings.Contains(string(output), "no goroutines (main called runtime.Goexit) - deadlock!") {
		t.Fatalf("main Goexit did not report the last user goroutine: %v\n%s", err, output)
	}
}
