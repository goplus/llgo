package env

import (
	"bytes"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
)

const (
	LLGoCompilerPkg    = "github.com/goplus/llgo"
	LLGoRuntimePkgName = "runtime"
	LLGoRuntimePkg     = LLGoCompilerPkg + "/" + LLGoRuntimePkgName
)

func GOROOT() string {
	root := os.Getenv("GOROOT")
	if root != "" {
		return root
	}
	cmd := exec.Command("go", "env", "GOROOT")
	var out bytes.Buffer
	cmd.Stdout = &out
	err := cmd.Run()
	if err == nil {
		return strings.TrimSpace(out.String())
	}
	panic("cannot get GOROOT: " + err.Error())
}

func LLGoRuntimeDir() string {
	root := LLGoROOT()
	if root != "" {
		return filepath.Join(root, LLGoRuntimePkgName)
	}
	return ""
}

func LLGoROOT() string {
	if root, ok := isLLGoRoot(os.Getenv("LLGO_ROOT")); ok {
		return root
	}
	// Get executable path
	exe, err := os.Executable()
	if err != nil {
		return ""
	}
	// Resolve any symlinks
	exe, err = filepath.EvalSymlinks(exe)
	if err != nil {
		return ""
	}
	// Check if parent directory is bin
	dir := filepath.Dir(exe)
	if filepath.Base(dir) != "bin" {
		return ""
	}
	// Get parent directory of bin
	root := filepath.Dir(dir)
	if root, ok := isLLGoRoot(root); ok {
		return root
	}
	return ""
}

func isLLGoRoot(root string) (string, bool) {
	if root == "" {
		return "", false
	}
	root, err := filepath.Abs(root)
	if err != nil {
		return "", false
	}
	// Check for go.mod
	data, err := os.ReadFile(filepath.Join(root, LLGoRuntimePkgName, "go.mod"))
	if err != nil {
		return "", false
	}
	// Check module name
	if !strings.Contains(string(data), "module "+LLGoRuntimePkg+"\n") {
		return "", false
	}
	return root, true
}
