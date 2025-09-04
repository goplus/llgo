package pyenv

import (
	"io"
	"io/fs"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
)

// BundleOnedir 仅拷贝 libpython 与标准库（排除 site-packages），布局：
// <exe_dir>/Frameworks/libpython3.x.{dylib|so}
// <exe_dir>/python/lib/python3.12/**（含 lib-dynload/，不含 site-packages/）
func BundleOnedir(app string) error {
	exeDir := filepath.Dir(app)
	pyHome := PythonHome()

	// 1) 目录
	fwDir := filepath.Join(exeDir, "Frameworks")
	stdDst := filepath.Join(exeDir, "python", "lib", "python3.12")
	if err := os.MkdirAll(fwDir, 0755); err != nil {
		return err
	}
	if err := os.MkdirAll(stdDst, 0755); err != nil {
		return err
	}

	// 2) libpython → Frameworks，并在 macOS 上设置 @rpath
	libSrc, err := findLibpython(filepath.Join(pyHome, "lib"))
	if err != nil {
		return err
	}
	libDst := filepath.Join(fwDir, filepath.Base(libSrc))
	if err := copyFile(libSrc, libDst); err != nil {
		return err
	}
	if runtime.GOOS == "darwin" {
		_ = exec.Command("install_name_tool", "-id", "@rpath/"+filepath.Base(libDst), libDst).Run()
	}

	// 3) 标准库（排除 site-packages、__pycache__、test/idlelib/tkinter 可按需裁剪）
	stdSrc := filepath.Join(pyHome, "lib", "python3.12")
	return copyTree(stdSrc, stdDst, func(rel string, d fs.DirEntry) bool {
		// 统一使用正斜杠判断子路径
		r := filepath.ToSlash(rel)
		base := strings.ToLower(filepath.Base(r))
		if base == "__pycache__" {
			return false
		}
		if strings.HasPrefix(r, "site-packages/") || r == "site-packages" {
			return false
		}
		// 可选进一步裁剪（放开注释即可）
		if r == "test" || strings.HasPrefix(r, "test/") {
			return false
		}
		if r == "idlelib" || strings.HasPrefix(r, "idlelib/") {
			return false
		}
		if r == "tkinter" || strings.HasPrefix(r, "tkinter/") {
			return false
		}
		return true
	})
}

func findLibpython(dir string) (string, error) {
	ents, err := os.ReadDir(dir)
	if err != nil {
		return "", err
	}
	for _, e := range ents {
		name := e.Name()
		// macOS
		if strings.HasPrefix(name, "libpython3.") && strings.HasSuffix(name, ".dylib") {
			return filepath.Join(dir, name), nil
		}
		// Linux
		if strings.HasPrefix(name, "libpython3.") && (strings.HasSuffix(name, ".so") || strings.Contains(name, ".so.")) {
			return filepath.Join(dir, name), nil
		}
	}
	return "", os.ErrNotExist
}

func copyFile(src, dst string) error {
	in, err := os.Open(src)
	if err != nil {
		return err
	}
	defer in.Close()
	if err := os.MkdirAll(filepath.Dir(dst), 0755); err != nil {
		return err
	}
	out, err := os.Create(dst)
	if err != nil {
		return err
	}
	defer out.Close()
	_, err = io.Copy(out, in)
	return err
}

func copyTree(src, dst string, keep func(rel string, d fs.DirEntry) bool) error {
	return filepath.WalkDir(src, func(p string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		rel, _ := filepath.Rel(src, p)
		if rel == "." {
			return nil
		}
		if !keep(rel, d) {
			if d.IsDir() {
				return filepath.SkipDir
			}
			return nil
		}
		to := filepath.Join(dst, rel)
		if d.IsDir() {
			return os.MkdirAll(to, 0755)
		}
		return copyFile(p, to)
	})
}
