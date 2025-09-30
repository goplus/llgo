package pyenv

import (
	"bytes"
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
	pyHome := PythonHome()
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
	// if pyHome := os.Getenv("PYTHONHOME"); pyHome != "" {
	// 	return pyHome
	// }
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

	// pre-run info (verbose only)
	if isVerbose() {
		fmt.Printf("[pip] Packages   : %v\n", pkgs)
		fmt.Printf("[pip] Target     : %s\n", site)
		fmt.Printf("[pip] Interpreter: %s\n", py)
	}
	// fmt.Printf("[pip] Tip: if the network is slow, set a mirror, e.g.\n")
	// fmt.Printf("       export PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple\n")
	// fmt.Printf("       %s -m pip install -i $PIP_INDEX_URL --target %s %v\n", py, site, pkgs)

	cmd := exec.Command(py, args...)
	if isVerbose() {
		cmd.Stdout, cmd.Stderr = os.Stdout, os.Stderr
	} else {
		// Suppress pip outputs when not verbose; still show error message below if failed
		var discard bytes.Buffer
		cmd.Stdout, cmd.Stderr = &discard, &discard
	}
	if err := cmd.Run(); err != nil {
		fmt.Fprintf(os.Stderr, "\n[pip] Install failed: %v\n", err)
		fmt.Fprintf(os.Stderr, "[pip] Troubleshooting:\n")
		fmt.Fprintf(os.Stderr, "  - Check network/proxy or use a mirror (set PIP_INDEX_URL)\n")
		fmt.Fprintf(os.Stderr, "  - Pin a stable version to avoid incompatibilities, e.g. numpy==1.26.4\n")
		fmt.Fprintf(os.Stderr, "  - For source builds, ensure toolchain and consider --no-binary :all:\n")
		fmt.Fprintf(os.Stderr, "  - Ensure Python Home has compatible wheels/deps: %s\n", pyHome)
		return err
	}

	// post-run notice (verbose only)
	if isVerbose() {
		fmt.Println("\n[pip] Install completed successfully.")
		fmt.Printf("[pip] Installed to: %s\n", site)
		fmt.Println("------------------------------------------------------------")
		fmt.Println()
	}
	return nil
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
	var target string
	// Fuzzy match: pick the first libpython3.*.dylib under <PYHOME>/lib
	if ents, err := os.ReadDir(libDir); err == nil {
		for _, e := range ents {
			name := e.Name()
			if strings.HasPrefix(name, "libpython3.") && strings.HasSuffix(name, ".dylib") {
				target = filepath.Join(libDir, name)
				break
			}
		}
	}
	if target == "" {
		return nil
	}
	if real, err := filepath.EvalSymlinks(target); err == nil && real != "" {
		target = real
	}
	base := filepath.Base(target)
	newID := "@rpath/" + base
	cmd := exec.Command("install_name_tool", "-id", newID, target)
	if out, err := cmd.CombinedOutput(); err != nil {
		return fmt.Errorf("install_name_tool -id failed: %v, out=%s", err, string(out))
	}
	return nil
}

func quote(s string) string { return "'" + s + "'" }

func FindPythonRpaths(pyHome string) []string {
	return []string{filepath.Join(pyHome, "lib")}
}

func PyInitFromExeDirCSource() string {
	return `#include <Python.h>
#include <dlfcn.h>
#include <limits.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

static void parent_dir(char* path) {
	size_t n = strlen(path);
	while (n > 0 && path[n-1] == '/') path[--n] = '\0';
	char* s = strrchr(path, '/');
	if (!s) { path[0]='.'; path[1]='\0'; return; }
	if (s == path) s[1] = '\0';
	else *s = '\0';
}

void __llgo_py_init_from_exedir(void) {
	Dl_info info;
	if (dladdr((void*)Py_Initialize, &info) == 0 || !info.dli_fname) return;

	char p[PATH_MAX]; strncpy(p, info.dli_fname, sizeof(p)-1); p[sizeof(p)-1]='\0';

	char d1[PATH_MAX]; strncpy(d1, p, sizeof(d1)-1); d1[sizeof(d1)-1]='\0';
	parent_dir(d1); // d1 = dirname(p)

	char d2[PATH_MAX]; strncpy(d2, d1, sizeof(d1)-1); d2[sizeof(d1)-1]='\0';
	parent_dir(d2); // d2 = dirname(d1)

	char home[PATH_MAX]; snprintf(home, sizeof(home), "%s", d2);

	wchar_t *wHome = Py_DecodeLocale(home, NULL);
	if (!wHome) return;

	PyStatus st;
	PyConfig cfg; PyConfig_InitPythonConfig(&cfg);
	cfg.module_search_paths_set = 0;
	st = PyConfig_SetString(&cfg, &cfg.home, wHome);
	PyMem_RawFree(wHome);
	if (PyStatus_Exception(st)) { PyConfig_Clear(&cfg); return; }

	st = Py_InitializeFromConfig(&cfg);
	PyConfig_Clear(&cfg);
	(void)st;
}
`
}
