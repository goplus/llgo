package env

import (
	"bytes"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
)

const (
	LLGoCompilerPkg    = "github.com/goplus/llgo"
	LLGoRuntimePkgName = "runtime"
	LLGoRuntimePkg     = LLGoCompilerPkg + "/" + LLGoRuntimePkgName
	envFileName        = "/compiler/internal/env/env.go"
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
	llgoRootEnv := os.Getenv("LLGO_ROOT")
	if llgoRootEnv != "" {
		if root, ok := isLLGoRoot(llgoRootEnv); ok {
			return root
		}
		fmt.Fprintf(os.Stderr, "WARNING: LLGO_ROOT is not a valid LLGO root: %s\n", llgoRootEnv)
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
	if filepath.Base(dir) == "bin" {
		// Get parent directory of bin
		root := filepath.Dir(dir)
		if root, ok := isLLGoRoot(root); ok {
			return root
		}
	}
	if Devel() {
		root, err := getRuntimePkgDirByCaller()
		if err != nil {
			return ""
		}
		if root, ok := isLLGoRoot(root); ok {
			fmt.Fprintln(os.Stderr, "WARNING: Using LLGO root for devel: "+root)
			return root
		}
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

func getRuntimePkgDirByCaller() (string, error) {
	_, file, _, ok := runtime.Caller(0)
	if !ok {
		return "", fmt.Errorf("cannot get caller")
	}
	if !strings.HasSuffix(file, envFileName) {
		return "", fmt.Errorf("wrong caller")
	}
	// check file exists
	if _, err := os.Stat(file); os.IsNotExist(err) {
		return "", fmt.Errorf("file %s not exists", file)
	}
	modPath := strings.TrimSuffix(file, envFileName)
	if st, err := os.Stat(modPath); os.IsNotExist(err) || !st.IsDir() {
		return "", fmt.Errorf("not llgo compiler root: %s", modPath)
	}
	return modPath, nil
}
