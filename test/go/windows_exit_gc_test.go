//go:build windows && !nogc

package gotest

import (
	"context"
	"os"
	"os/exec"
	"runtime"
	"strconv"
	"sync/atomic"
	"testing"
	"time"
)

var windowsExitGCObjects [8][]byte

func TestWindowsExitDuringGC(t *testing.T) {
	const helperEnv = "LLGO_TEST_WINDOWS_EXIT_GC"
	if value := os.Getenv(helperEnv); value != "" {
		iteration, err := strconv.Atoi(value)
		if err != nil {
			t.Fatal(err)
		}
		ready := make(chan struct{}, len(windowsExitGCObjects)+1)
		start := make(chan struct{})
		for i := range windowsExitGCObjects {
			go func(i int) {
				ready <- struct{}{}
				<-start
				for range 256 {
					windowsExitGCObjects[i] = make([]byte, 4096)
				}
			}(i)
		}
		var collecting uint32
		go func() {
			ready <- struct{}{}
			<-start
			atomic.StoreUint32(&collecting, 1)
			runtime.GC()
		}()
		for range len(windowsExitGCObjects) + 1 {
			<-ready
		}
		close(start)
		for atomic.LoadUint32(&collecting) == 0 {
		}
		// Vary exit timing without allocating or starting the timer scheduler.
		// Bound background work so the test isolates shutdown, not starvation
		// under a collector loop that never lets other threads acquire its lock.
		for range iteration % 4 * 10000 {
			atomic.LoadUint32(&collecting)
		}
		os.Exit(iteration % 2 * 23)
	}

	for iteration := range 32 {
		ctx, cancel := context.WithTimeout(context.Background(), 20*time.Second)
		cmd := exec.CommandContext(ctx, os.Args[0], "-test.run=^TestWindowsExitDuringGC$")
		cmd.Env = append(os.Environ(), helperEnv+"="+strconv.Itoa(iteration))
		output, err := cmd.CombinedOutput()
		timedOut := ctx.Err() != nil
		cancel()
		want := iteration % 2 * 23
		if timedOut || cmd.ProcessState == nil || cmd.ProcessState.ExitCode() != want {
			t.Fatalf("iteration %d: child err=%v, state=%v, timeout=%v, want exit %d\n%s",
				iteration, err, cmd.ProcessState, timedOut, want, output)
		}
	}
}
