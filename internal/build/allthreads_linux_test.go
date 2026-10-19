package build

import (
	"context"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"
)

func TestAllThreadsNativeExecutable(t *testing.T) {
	if runtime.GOOS != "linux" || (runtime.GOARCH != "amd64" && runtime.GOARCH != "arm64") {
		t.Skip("native Linux executable")
	}
	setPCLNIntegrationEnv(t)
	dir := t.TempDir()
	source := filepath.Join(dir, "main.go")
	if err := os.WriteFile(source, []byte(`package main
import "syscall"
func main() {
 ready, done, exited := make(chan struct{}), make(chan struct{}), make(chan struct{})
 go func(){ close(ready); <-done; close(exited) }()
 <-ready
 for i:=0;i<25;i++ {
  pid,_,err := syscall.AllThreadsSyscall(syscall.SYS_GETPID,0,0,0)
  if err!=0 || pid!=uintptr(syscall.Getpid()) { panic("owned executable all-thread call failed") }
 }
 close(done); <-exited
 println("allthreads-exe-ok")
}
`), 0o600); err != nil {
		t.Fatal(err)
	}
	conf := NewDefaultConf(ModeBuild)
	conf.OutFile = filepath.Join(dir, "owned")
	if _, err := Do([]string{source}, conf); err != nil {
		t.Fatal(err)
	}
	cmd := exec.Command(conf.OutFile)
	cmd.Env = append(os.Environ(), "GC_MARKERS=1")
	if out, err := cmd.CombinedOutput(); err != nil || !strings.Contains(string(out), "allthreads-exe-ok") {
		t.Fatalf("owned executable: %v\n%s", err, out)
	}
}

func TestAllThreadsNativeProtocol(t *testing.T) {
	if runtime.GOOS != "linux" || (runtime.GOARCH != "amd64" && runtime.GOARCH != "arm64") {
		t.Skip("native Linux 64-bit signal protocol")
	}
	root, err := filepath.Abs("../..")
	if err != nil {
		t.Fatal(err)
	}
	for _, sanitize := range []bool{false, true} {
		name := "native"
		if sanitize {
			name = "asan-ubsan"
		}
		t.Run(name, func(t *testing.T) {
			binary := filepath.Join(t.TempDir(), "protocol")
			args := []string{"-Wall", "-Wextra", "-Werror", "-O2", "-pthread", "-o", binary,
				filepath.Join(root, "internal/build/testdata/allthreads/protocol.c"),
				filepath.Join(root, "runtime/internal/stacktrace/_wrap/traceback_unix.c")}
			if sanitize {
				args = append(args, "-fsanitize=address,undefined")
			}
			if out, err := exec.Command("cc", args...).CombinedOutput(); err != nil {
				t.Fatalf("compile: %v\n%s", err, out)
			}
			ctx, cancel := context.WithTimeout(context.Background(), time.Minute)
			defer cancel()
			out, err := exec.CommandContext(ctx, binary).CombinedOutput()
			if err != nil || !strings.Contains(string(out), "allthreads-ok") {
				t.Fatalf("cohort, cancellation and creation/exit stress: %v\n%s", err, out)
			}
			if !sanitize {
				out, err = exec.CommandContext(ctx, binary, "mismatch").CombinedOutput()
				exit, ok := err.(*exec.ExitError)
				if !ok || exit.ExitCode() != 2 || !strings.Contains(string(out), "results differ") {
					t.Fatalf("partial-state failure: %v\n%s", err, out)
				}
			}
		})
	}
}
