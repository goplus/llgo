//go:build !wasm

package cgo

import (
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
)

// Use a standalone executable so main-package and dependency exports are both
// exercised through their real C entry points.
func TestCExportForeignThreadsFromExecutableAndDependency(t *testing.T) {
	switch runtime.GOOS {
	case "darwin", "linux", "windows":
	default:
		t.Skip("hosted native C callbacks")
	}
	dir, err := filepath.Abs("testdata/foreigncallback")
	if err != nil {
		t.Fatal(err)
	}
	output := filepath.Join(t.TempDir(), "callback")
	if runtime.GOOS == "windows" {
		output += ".exe"
	}
	buildCExportFixture(t, dir, output)
	out, err := exec.Command(output).CombinedOutput()
	const want = "Go-thread reentry: ok\nC-thread reentry: ok\nok"
	if err != nil || strings.TrimSpace(strings.ReplaceAll(string(out), "\r\n", "\n")) != want {
		t.Fatalf("native thread C exports: %v\n%s", err, out)
	}
	t.Log(strings.TrimSpace(string(out)))
}
