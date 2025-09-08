package pyenv

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"slices"
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

func Verify() error {
	exe, err := findPythonExec()
	if err != nil {
		return err
	}
	// Require Python 3.12
	out, err := exec.Command(exe, "-c", "import sys; print(f'{sys.version_info[0]}.{sys.version_info[1]}')").CombinedOutput()
	if err != nil {
		return fmt.Errorf("failed to query Python version: %v", err)
	}
	ver := strings.TrimSpace(string(out))
	if ver != "3.12" {
		return fmt.Errorf("Python 3.12 is required, but detected %s. Please set PYTHONHOME to a 3.12 runtime or install python@3.12.", ver)
	}

	cmd := exec.Command(exe, "-c", "import sys; print('OK')")
	cmd.Stdout, cmd.Stderr = nil, nil
	return cmd.Run()
}

// PythonHome returns the path that should be used as PYTHONHOME,
func PythonHome() string {
	// if v := os.Getenv("PYTHONHOME"); v != "" {
	// 	return v
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
		if !slices.Contains(parts, pkgcfg) {
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

	// pre-run info
	fmt.Printf("[pip] Packages   : %v\n", pkgs)
	fmt.Printf("[pip] Target     : %s\n", site)
	fmt.Printf("[pip] Interpreter: %s\n", py)
	fmt.Printf("[pip] Tip: if the network is slow, set a mirror, e.g.\n")
	fmt.Printf("       export PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple\n")
	fmt.Printf("       %s -m pip install -i $PIP_INDEX_URL --target %s %v\n", py, site, pkgs)

	cmd := exec.Command(py, args...)
	cmd.Stdout, cmd.Stderr = os.Stdout, os.Stderr
	if err := cmd.Run(); err != nil {
		fmt.Fprintf(os.Stderr, "\n[pip] Install failed: %v\n", err)
		fmt.Fprintf(os.Stderr, "[pip] Troubleshooting:\n")
		fmt.Fprintf(os.Stderr, "  - Check network/proxy or use a mirror (set PIP_INDEX_URL)\n")
		fmt.Fprintf(os.Stderr, "  - Pin a stable version to avoid incompatibilities, e.g. numpy==1.26.4\n")
		fmt.Fprintf(os.Stderr, "  - For source builds, ensure toolchain and consider --no-binary :all:\n")
		fmt.Fprintf(os.Stderr, "  - Ensure Python Home has compatible wheels/deps: %s\n", pyHome)
		return err
	}

	// post-run notice and separation from following output
	fmt.Println("\n[pip] Install completed successfully.")
	fmt.Printf("[pip] Installed to: %s\n", site)
	fmt.Println("------------------------------------------------------------")
	fmt.Println()
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
	dedup := func(ss []string) []string {
		m := make(map[string]struct{}, len(ss))
		var out []string
		for _, s := range ss {
			if s == "" {
				continue
			}
			if _, ok := m[s]; ok {
				continue
			}
			m[s] = struct{}{}
			out = append(out, s)
		}
		return out
	}
	hasLibpython := func(dir string) bool {
		if dir == "" {
			return false
		}
		ents, err := os.ReadDir(dir)
		if err != nil {
			return false
		}
		for _, e := range ents {
			name := e.Name()
			if strings.HasPrefix(name, "libpython") && strings.HasSuffix(name, ".dylib") {
				return true
			}
		}
		return false
	}
	parseLFlags := func(out string) []string {
		var dirs []string
		for _, f := range strings.Fields(out) {
			if strings.HasPrefix(f, "-L") && len(f) > 2 {
				dirs = append(dirs, f[2:])
			}
		}
		return dirs
	}
	runPkgConfigDefault := func(args ...string) (string, error) {
		cmd := exec.Command("pkg-config", args...)
		env := os.Environ()
		var filtered []string
		for _, kv := range env {
			if strings.HasPrefix(kv, "PKG_CONFIG_PATH=") || strings.HasPrefix(kv, "PKG_CONFIG_LIBDIR=") {
				continue
			}
			filtered = append(filtered, kv)
		}
		cmd.Env = filtered
		b, err := cmd.CombinedOutput()
		return strings.TrimSpace(string(b)), err
	}

	var rpaths []string

	// pyLib := filepath.Join(pyHome, "lib")
	// if hasLibpython(pyLib) {
	// 	rpaths = append(rpaths, pyLib)
	// }

	names := []string{"python-3.12-embed", "python3-embed", "python-3.12", "python3"}
	for _, name := range names {
		if out, err := runPkgConfigDefault("--libs", name); err == nil && out != "" {
			for _, d := range parseLFlags(out) {
				if hasLibpython(d) || d != "" {
					rpaths = append(rpaths, d)
				}
			}
			if ld, err := runPkgConfigDefault("--variable=libdir", name); err == nil && ld != "" {
				if hasLibpython(ld) || ld != "" {
					rpaths = append(rpaths, ld)
				}
			}
			break
		}
	}
	return dedup(rpaths)
}
