//go:build windows

package goroot

import (
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"
)

func TestRunnerEnvPreservesWindowsPath(t *testing.T) {
	if os.Getenv("LLGO_GOROOT_PATH_HELPER") == "1" {
		if _, err := exec.LookPath("cmd.exe"); err != nil {
			os.Exit(1)
		}
		return
	}
	executable, err := os.Executable()
	if err != nil {
		t.Fatal(err)
	}
	inherited := os.Getenv("PATH")
	for _, item := range os.Environ() {
		key, _, _ := strings.Cut(item, "=")
		if strings.EqualFold(key, "PATH") {
			t.Cleanup(func() {
				_ = os.Unsetenv("PATH")
				_ = os.Setenv(key, inherited)
			})
			break
		}
	}
	for _, key := range []string{"PATH", "Path", "pAtH"} {
		t.Run(key, func(t *testing.T) {
			t.Setenv("PATH", inherited)
			// Windows retains an environment variable's original spelling
			// when updating it, so remove the old entry before renaming it.
			if err := os.Unsetenv("PATH"); err != nil {
				t.Fatal(err)
			}
			if err := os.Setenv(key, inherited); err != nil {
				t.Fatal(err)
			}
			root := t.TempDir()
			env := runnerEnv(root, root, filepath.Join(root, "gopath"),
				[]string{"LLGO_GOROOT_PATH_HELPER=1"})
			_, stderr, code, _, err := runProgram(root, executable, env, 5*time.Second,
				"-test.run=^TestRunnerEnvPreservesWindowsPath$", "-test.count=1")
			if err != nil || code != 0 {
				t.Fatalf("child lost the inherited %s: exit=%d err=%v stderr=%s", key, code, err, strings.TrimSpace(string(stderr)))
			}
		})
	}
}
