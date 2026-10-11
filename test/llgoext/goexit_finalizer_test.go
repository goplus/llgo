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

const mainGoexitWorkerChild = "LLGO_TEST_MAIN_GOEXIT_WORKER"

func init() {
	switch os.Getenv(mainGoexitWorkerChild) {
	case "finalizer":
		runtime.SetFinalizer(new([64]byte), func(*[64]byte) {})
	case "cleanup":
		runtime.AddCleanup(new([64]byte), func(int) {}, 0)
	case "timer":
		time.NewTimer(time.Hour).Stop()
	default:
		return
	}
	// Starting a persistent runtime worker must not keep this process alive
	// once its only user goroutine exits.
	runtime.Goexit()
}

func TestMainGoexitWithFinalizerWorker(t *testing.T) {
	testMainGoexitWithWorker(t, "finalizer")
}

func TestMainGoexitWithCleanupWorker(t *testing.T) {
	testMainGoexitWithWorker(t, "cleanup")
}

func TestMainGoexitWithTimerWorker(t *testing.T) {
	testMainGoexitWithWorker(t, "timer")
}

func testMainGoexitWithWorker(t *testing.T, worker string) {
	t.Helper()
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	cmd := exec.CommandContext(ctx, os.Args[0], "-test.run=^$")
	cmd.Env = append(os.Environ(), mainGoexitWorkerChild+"="+worker)
	output, err := cmd.CombinedOutput()
	if ctx.Err() != nil {
		t.Fatalf("%s worker suppressed the main Goexit deadlock: %v\n%s", worker, ctx.Err(), output)
	}
	if err == nil || !strings.Contains(string(output), "no goroutines (main called runtime.Goexit) - deadlock!") {
		t.Fatalf("main Goexit did not report the last user goroutine: %v\n%s", err, output)
	}
}
