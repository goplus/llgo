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
	"unique"
	"unsafe"
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
	case "unique":
		unique.Make("main-goexit-worker")
	case "active-finalizer", "active-cleanup":
		startActiveGoexitCallback(os.Getenv(mainGoexitWorkerChild))
	default:
		return
	}
	// Only workers currently executing user callbacks may keep this process
	// alive after the main goroutine exits.
	runtime.Goexit()
}

//llgo:type C
type goexitCollectorFinalizer func(unsafe.Pointer, unsafe.Pointer)

//go:linkname registerGoexitCollectorFinalizer C.GC_register_finalizer
func registerGoexitCollectorFinalizer(unsafe.Pointer, goexitCollectorFinalizer, unsafe.Pointer, *goexitCollectorFinalizer, *unsafe.Pointer)

func startActiveGoexitCallback(worker string) {
	entered := make(chan struct{})
	callback := func() {
		close(entered)
		waitForLastUserAfterMainGoexit()
		// Goexit from the callback must release its user count exactly once,
		// leaving the new user goroutine alive to finish the process.
		go func() {
			waitForLastUserAfterMainGoexit()
			println("ACTIVE_CALLBACK_COMPLETED")
			os.Exit(0)
		}()
		runtime.Goexit()
	}
	p := new([64]byte)
	if worker == "active-finalizer" {
		runtime.SetFinalizer(p, func(*[64]byte) { callback() })
	} else {
		runtime.AddCleanup(p, func(int) { callback() }, 0)
	}
	// Invoke the registered collector callback directly so this test checks
	// running-worker accounting independently of conservative root lifetimes.
	var collectorCallback goexitCollectorFinalizer
	var data unsafe.Pointer
	registerGoexitCollectorFinalizer(unsafe.Pointer(p), nil, nil, &collectorCallback, &data)
	if collectorCallback == nil {
		panic("worker did not register its collector callback")
	}
	collectorCallback(unsafe.Pointer(p), data)
	<-entered
}

func waitForLastUserAfterMainGoexit() {
	for {
		count, mainExited := runtimeGStateForTesting()
		if count == 1 && mainExited {
			return
		}
		runtime.Gosched()
	}
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

func TestMainGoexitWithUniqueCleanupWorker(t *testing.T) {
	testMainGoexitWithWorker(t, "unique")
}

func TestMainGoexitWithActiveFinalizer(t *testing.T) {
	testMainGoexitWithWorker(t, "active-finalizer")
}

func TestMainGoexitWithActiveCleanup(t *testing.T) {
	testMainGoexitWithWorker(t, "active-cleanup")
}

func testMainGoexitWithWorker(t *testing.T, worker string) {
	t.Helper()
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	cmd := exec.CommandContext(ctx, os.Args[0], "-test.run=^$")
	cmd.Env = append(os.Environ(), mainGoexitWorkerChild+"="+worker)
	output, err := cmd.CombinedOutput()
	if ctx.Err() != nil {
		t.Fatalf("%s worker did not finish after main Goexit: %v\n%s", worker, ctx.Err(), output)
	}
	if strings.HasPrefix(worker, "active-") {
		if err != nil || !strings.Contains(string(output), "ACTIVE_CALLBACK_COMPLETED") {
			t.Fatalf("main Goexit interrupted the running %s callback: %v\n%s", worker, err, output)
		}
		return
	}
	if err == nil || !strings.Contains(string(output), "no goroutines (main called runtime.Goexit) - deadlock!") {
		t.Fatalf("main Goexit did not report the last user goroutine: %v\n%s", err, output)
	}
}
