package env

import (
	"os"
	"path/filepath"
	"strings"
)

const (
	LLGoCompilerPkg = "github.com/goplus/llgo"
)

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
	data, err := os.ReadFile(filepath.Join(root, "go.mod"))
	if err != nil {
		return "", false
	}
	// Check module name
	if !strings.Contains(string(data), "module "+LLGoCompilerPkg+"\n") {
		return "", false
	}
	return root, true
}
