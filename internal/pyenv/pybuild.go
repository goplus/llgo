package pyenv

import (
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"

	"github.com/goplus/llgo/internal/env"
)

// EnsureBuildEnv ensures the Python build environment by:
// - ensuring the cache directory {LLGoCacheDir}/python_env exists (atomic creation)
// - applying PATH/PYTHONHOME/DYLD_LIBRARY_PATH/PKG_CONFIG_PATH
// Priority: use LLPYG_PYHOME if set; otherwise default to the cache path.
func EnsureBuildEnv() error {
	if err := Ensure(); err != nil {
		return err
	}
	pyHome := getPyHome(filepath.Join(env.LLGoCacheDir(), "python_env", "python"))
	return applyEnv(pyHome)
}

// Verify runs a lightweight check to ensure a usable Python is available
// in current environment. It tries to execute: python -c "import sys; print('OK')".
func Verify() error {
	exe, err := findPythonExec()
	if err != nil {
		return err
	}
	cmd := exec.Command(exe, "-c", "import sys; print('OK')")
	cmd.Stdout, cmd.Stderr = nil, nil
	return cmd.Run()
}

// PythonHome returns the path that should be used as PYTHONHOME,
// preferring LLPYG_PYHOME if set; otherwise defaulting to the llgo cache path.
func PythonHome() string {
	return getPyHome(filepath.Join(env.LLGoCacheDir(), "python_env", "python"))
}

func findPythonExec() (string, error) {
	if p, err := exec.LookPath("python"); err == nil {
		return p, nil
	}
	if p, err := exec.LookPath("python3"); err == nil {
		return p, nil
	}
	return "", exec.ErrNotFound
}

func getPyHome(defaultPath string) string {
	if v := os.Getenv("LLPYG_PYHOME"); v != "" {
		return v
	}
	return defaultPath
}

func applyEnv(pyHome string) error {
	if pyHome == "" {
		return nil
	}
	bin := filepath.Join(pyHome, "bin")
	lib := filepath.Join(pyHome, "lib")

	// PATH: prepend pyHome/bin if not present
	path := os.Getenv("PATH")
	parts := strings.Split(path, string(os.PathListSeparator))
	hasBin := false
	for _, p := range parts {
		if p == bin {
			hasBin = true
			break
		}
	}
	if !hasBin {
		newPath := bin
		if path != "" {
			newPath += string(os.PathListSeparator) + path
		}
		if err := os.Setenv("PATH", newPath); err != nil {
			return err
		}
	}

	// PYTHONHOME
	if err := os.Setenv("PYTHONHOME", pyHome); err != nil {
		return err
	}

	// macOS: DYLD_LIBRARY_PATH append lib if missing
	if runtime.GOOS == "darwin" {
		dyld := os.Getenv("DYLD_LIBRARY_PATH")
		if dyld == "" {
			if err := os.Setenv("DYLD_LIBRARY_PATH", lib); err != nil {
				return err
			}
		} else if !strings.Contains(dyld, lib) {
			if err := os.Setenv("DYLD_LIBRARY_PATH", lib+string(os.PathListSeparator)+dyld); err != nil {
				return err
			}
		}
	}

	// PKG_CONFIG_PATH: add pyHome/lib/pkgconfig
	pkgcfg := filepath.Join(pyHome, "lib", "pkgconfig")
	pcp := os.Getenv("PKG_CONFIG_PATH")
	if pcp == "" {
		_ = os.Setenv("PKG_CONFIG_PATH", pkgcfg)
	} else {
		parts := strings.Split(pcp, string(os.PathListSeparator))
		found := false
		for _, p := range parts {
			if p == pkgcfg {
				found = true
				break
			}
		}
		if !found {
			_ = os.Setenv("PKG_CONFIG_PATH", pkgcfg+string(os.PathListSeparator)+pcp)
		}
	}

	// Avoid interference from custom PYTHONPATH
	_ = os.Unsetenv("PYTHONPATH")
	return nil
}
