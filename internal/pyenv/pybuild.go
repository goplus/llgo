package pyenv

import (
	"fmt"
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
	pyHome := filepath.Join(env.LLGoCacheDir(), "python_env", "python")
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
	return filepath.Join(env.LLGoCacheDir(), "python_env", "python")
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
func applyEnv(pyHome string) error {
	if pyHome == "" {
		return nil
	}
	bin := filepath.Join(pyHome, "bin")
	// lib := filepath.Join(pyHome, "lib")

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

	// // macOS: DYLD_LIBRARY_PATH append lib if missing
	// if runtime.GOOS == "darwin" {
	// 	dyld := os.Getenv("DYLD_LIBRARY_PATH")
	// 	if dyld == "" {
	// 		if err := os.Setenv("DYLD_LIBRARY_PATH", lib); err != nil {
	// 			return err
	// 		}
	// 	} else if !strings.Contains(dyld, lib) {
	// 		if err := os.Setenv("DYLD_LIBRARY_PATH", lib+string(os.PathListSeparator)+dyld); err != nil {
	// 			return err
	// 		}
	// 	}
	// }

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

func InstallPackages(pkgs ...string) error {
	pyHome := PythonHome()
	if pyHome == "" || len(pkgs) == 0 {
		return nil
	}
	py := filepath.Join(pyHome, "bin", "python3")
	site := filepath.Join(pyHome, "lib", "python3.12", "site-packages")
	args := []string{"-m", "pip", "install", "--target", site}
	args = append(args, pkgs...)
	cmd := exec.Command(py, args...)
	return cmd.Run()
}

func PipInstall(spec string) error {
	if spec == "" {
		return nil
	}
	return InstallPackages(spec)
}

func IsStdOrPresent(mod string) bool {
	py := filepath.Join(PythonHome(), "bin", "python3")
	code := fmt.Sprintf(`import importlib.util,sys; sys.exit(0 if importlib.util.find_spec(%q) else 1)`, mod)
	cmd := exec.Command(py, "-c", code)
	return cmd.Run() == nil
}

func EnsurePcRpath(pyHome string) error {
	pc := filepath.Join(pyHome, "lib", "pkgconfig", "python3-embed.pc")
	b, err := os.ReadFile(pc)
	if err != nil {
		return err
	}
	lines := strings.Split(string(b), "\n")
	rpath := "-Wl,-rpath," + filepath.Join(pyHome, "lib")
	changed := false
	for i, ln := range lines {
		if strings.HasPrefix(ln, "Libs:") && !strings.Contains(ln, rpath) {
			lines[i] = ln + " " + rpath
			changed = true
			break
		}
	}
	if !changed {
		return nil
	}
	return os.WriteFile(pc, []byte(strings.Join(lines, "\n")), 0644)
}

func FixLibpythonInstallName(pyHome string) error {
	if runtime.GOOS != "darwin" {
		return nil
	}
	libDir := filepath.Join(pyHome, "lib")
	candidates := []string{
		filepath.Join(libDir, "libpython3.12.dylib"),
		filepath.Join(libDir, "libpython3.12m.dylib"),
	}
	var target string
	for _, p := range candidates {
		if _, err := exec.Command("bash", "-lc", "test -f "+quote(p)).CombinedOutput(); err == nil {
			target = p
			break
		}
	}
	if target == "" {
		return nil
	}
	if real, err := filepath.EvalSymlinks(target); err == nil && real != "" {
		target = real
	}
	newID := target
	cmd := exec.Command("install_name_tool", "-id", newID, target)
	if out, err := cmd.CombinedOutput(); err != nil {
		return fmt.Errorf("install_name_tool -id failed: %v, out=%s", err, string(out))
	}
	return nil
}

func quote(s string) string { return "'" + s + "'" }
