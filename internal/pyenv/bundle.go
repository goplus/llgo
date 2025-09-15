package pyenv

import (
	"archive/tar"
	"archive/zip"
	"bytes"
	"compress/gzip"
	"fmt"
	"io"
	"io/fs"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
)

// BundleOnedir copies libpython and the standard library (including site-packages). Layout:
// <exe_dir>/python/lib/libpython3.x.{dylib|so}
// <exe_dir>/python/lib/python3.12/**（含 lib-dynload/ 与 site-packages/）
func BundleOnedir(app string) error {
	exeDir := filepath.Dir(app)
	pyHome := PythonHome()
	exelibDir := filepath.Join(exeDir, "lib")
	// 1) Directories
	libDstDir := filepath.Join(exelibDir, "python", "lib")
	stdDst := filepath.Join(exelibDir, "python", "lib", "python3.12")
	if err := os.MkdirAll(libDstDir, 0755); err != nil {
		return err
	}
	if err := os.MkdirAll(stdDst, 0755); err != nil {
		return err
	}

	// 2) libpython → <exe_dir>/python/lib, and set @rpath on macOS
	libSrc, err := findLibpython(filepath.Join(pyHome, "lib"))
	if err != nil {
		return err
	}
	libDst := filepath.Join(libDstDir, filepath.Base(libSrc))
	if err := copyFile(libSrc, libDst); err != nil {
		return err
	}
	if runtime.GOOS == "darwin" {
		_ = exec.Command("install_name_tool", "-id", "@rpath/"+filepath.Base(libDst), libDst).Run()
	}

	// 2.1) 复制 PYHOME/lib 下其它所有动态库到 <exe_dir>/lib/python/lib
	if all, err := listDynLibs(filepath.Join(pyHome, "lib")); err == nil {
		for _, f := range all {
			if filepath.Base(f) == filepath.Base(libSrc) {
				continue
			}
			dst := filepath.Join(libDstDir, filepath.Base(f))
			if err := copyFile(f, dst); err != nil {
				return err
			}
		}
	}

	// 3) Standard library (exclude __pycache__, test/idlelib/tkinter as needed)
	stdSrc := filepath.Join(pyHome, "lib", "python3.12")
	return copyTree(stdSrc, stdDst, func(rel string, d fs.DirEntry) bool {
		// Always use forward-slash to check subpaths
		r := filepath.ToSlash(rel)
		base := strings.ToLower(filepath.Base(r))
		if base == "__pycache__" {
			return false
		}
		// if strings.HasPrefix(r, "site-packages/") || r == "site-packages" {
		// 	return false
		// }
		// Optional further pruning
		if r == "test" || strings.HasPrefix(r, "test/") {
			return false
		}
		// if r == "idlelib" || strings.HasPrefix(r, "idlelib/") {
		// 	return false
		// }
		// if r == "tkinter" || strings.HasPrefix(r, "tkinter/") {
		// 	return false
		// }
		return true
	})
}

// BundleOnedirApp bundles python alongside the given executable and places
// a copy of the executable into <exe_dir>/bin/<name>. On macOS it also tries
// to add an rpath pointing to ../lib/python/lib.
func BundleOnedirApp(exe string) error {
	if err := BundleOnedir(exe); err != nil {
		return err
	}
	exeDir := filepath.Dir(exe)
	distDir := filepath.Join(exeDir, "dist")
	if err := os.MkdirAll(distDir, 0755); err != nil {
		return err
	}

	srcLib := filepath.Join(exeDir, "lib")
	dstLib := filepath.Join(distDir, "lib")
	if err := os.Rename(srcLib, dstLib); err != nil {
		if err := os.MkdirAll(dstLib, 0755); err != nil {
			return err
		}
		if err := copyTree(srcLib, dstLib, func(rel string, d fs.DirEntry) bool { return true }); err != nil {
			return err
		}
		_ = os.RemoveAll(srcLib)
	}

	binDir := filepath.Join(distDir, "bin")
	if err := os.MkdirAll(binDir, 0755); err != nil {
		return err
	}
	newExe := filepath.Join(binDir, filepath.Base(exe))
	if err := copyFile(exe, newExe); err != nil {
		return err
	}
	if runtime.GOOS == "darwin" {
		rpath := "@executable_path/../lib/python/lib"
		_ = exec.Command("install_name_tool", "-add_rpath", rpath, newExe).Run()
	}

	if err := os.Remove(exe); err != nil && !os.IsNotExist(err) {
		return err
	}
	return nil
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
	if err != nil {
		return err
	}
	if info, statErr := os.Stat(src); statErr == nil {
		_ = os.Chmod(dst, info.Mode())
	}
	return nil
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

// BuildPyBundleZip builds a zip payload from cache python with onedir layout inside.
func BuildPyBundleZip() ([]byte, error) {
	pyHome := PythonHome()
	libSrc, err := findLibpython(filepath.Join(pyHome, "lib"))
	if err != nil {
		return nil, err
	}
	stdSrc := filepath.Join(pyHome, "lib", "python3.12")
	var buf bytes.Buffer
	zw := zip.NewWriter(&buf)
	// libpython
	{
		dst := filepath.ToSlash(filepath.Join("lib", "python", "lib", filepath.Base(libSrc)))
		if err := addFileToZip(zw, libSrc, dst, 0644); err != nil {
			_ = zw.Close()
			return nil, err
		}
	}
	if all, err := listDynLibs(filepath.Join(pyHome, "lib")); err == nil {
		for _, f := range all {
			if filepath.Base(f) == filepath.Base(libSrc) {
				continue
			}
			dst := filepath.ToSlash(filepath.Join("lib", "python", "lib", filepath.Base(f)))
			if err := addFileToZip(zw, f, dst, 0644); err != nil {
				_ = zw.Close()
				return nil, err
			}
		}
	}
	// stdlib
	if err := filepath.WalkDir(stdSrc, func(p string, d fs.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		rel, _ := filepath.Rel(stdSrc, p)
		if rel == "." {
			return nil
		}
		r := filepath.ToSlash(rel)
		base := strings.ToLower(filepath.Base(r))
		if base == "__pycache__" {
			if d.IsDir() {
				return filepath.SkipDir
			}
			return nil
		}
		if r == "test" || strings.HasPrefix(r, "test/") {
			if d.IsDir() {
				return filepath.SkipDir
			}
			return nil
		}
		// if r == "idlelib" || strings.HasPrefix(r, "idlelib/") {
		// 	if d.IsDir() {
		// 		return filepath.SkipDir
		// 	}
		// 	return nil
		// }
		// if r == "tkinter" || strings.HasPrefix(r, "tkinter/") {
		// 	if d.IsDir() {
		// 		return filepath.SkipDir
		// 	}
		// 	return nil
		// }
		if d.IsDir() {
			return nil
		}
		dst := filepath.ToSlash(filepath.Join("lib", "python", "lib", "python3.12", rel))
		return addFileToZip(zw, p, dst, 0644)
	}); err != nil {
		_ = zw.Close()
		return nil, err
	}
	if err := zw.Close(); err != nil {
		return nil, err
	}
	return buf.Bytes(), nil
}

// BuildOnefileBinary builds a self-extracting executable embedding payload.zip and app binary.
func BuildOnefileBinary(exe string, out string) error {
	if exe == "" || out == "" {
		return os.ErrInvalid
	}
	payload, err := BuildPyBundleZip()
	if err != nil {
		return err
	}
	appBin, err := os.ReadFile(exe)
	if err != nil {
		return err
	}
	tmpDir, err := os.MkdirTemp("", "pybundle-onefile-*")
	if err != nil {
		return err
	}
	defer os.RemoveAll(tmpDir)
	if err := os.WriteFile(filepath.Join(tmpDir, "payload.zip"), payload, 0644); err != nil {
		return err
	}
	if err := os.WriteFile(filepath.Join(tmpDir, "app.bin"), appBin, 0755); err != nil {
		return err
	}
	if err := os.WriteFile(filepath.Join(tmpDir, "main.go"), []byte(onefileBootMain()), 0644); err != nil {
		return err
	}
	cmd := exec.Command("go", "build", "-o", out, "main.go")
	cmd.Dir = tmpDir
	cmd.Env = append(os.Environ(), "GO111MODULE=off")
	if outb, err := cmd.CombinedOutput(); err != nil {
		return fmt.Errorf("go build: %v\n%s", err, string(outb))
	}
	return nil
}

func addFileToZip(zw *zip.Writer, src string, dst string, mode os.FileMode) error {
	f, err := os.Open(src)
	if err != nil {
		return err
	}
	defer f.Close()
	info, err := f.Stat()
	if err != nil {
		return err
	}
	hdr, err := zip.FileInfoHeader(info)
	if err != nil {
		return err
	}
	hdr.Name = dst
	hdr.Method = zip.Deflate
	hdr.SetMode(mode)
	w, err := zw.CreateHeader(hdr)
	if err != nil {
		return err
	}
	_, err = io.Copy(w, f)
	return err
}

func onefileBootMain() string {
	return `package main

import (
    _ "embed"
    "archive/zip"
    "bytes"
    "crypto/sha256"
    "encoding/hex"
    "fmt"
    "os"
    "os/exec"
    "path/filepath"
)

//go:embed payload.zip
var payload []byte

//go:embed app.bin
var appBin []byte

func main() {
    root, err := extractPayload(payload)
    if err != nil {
        fmt.Fprintln(os.Stderr, "extract failed:", err)
        os.Exit(1)
    }
    appPath := filepath.Join(root, "bin", "app")
    if err := os.MkdirAll(filepath.Dir(appPath), 0755); err != nil { panic(err) }
    if err := os.WriteFile(appPath, appBin, 0755); err != nil { panic(err) }

    os.Setenv("PYTHONHOME", filepath.Join(root, "lib", "python"))

    args := os.Args[1:]
    cmd := exec.Command(appPath, args...)
    cmd.Stdin = os.Stdin
    cmd.Stdout = os.Stdout
    cmd.Stderr = os.Stderr
    if err := cmd.Run(); err != nil {
        if cmd.ProcessState != nil {
            os.Exit(cmd.ProcessState.ExitCode())
        }
        panic(err)
    }
}

func extractPayload(p []byte) (string, error) {
    sum := sha256.Sum256(p)
    tag := hex.EncodeToString(sum[:])
    base, err := os.UserCacheDir()
    if err != nil { return "", err }
    root := filepath.Join(base, "llgo", "pybundle", tag)
    if st, err := os.Stat(root); err == nil && st.IsDir() { return root, nil }
    if err := os.MkdirAll(root, 0755); err != nil { return "", err }
    zr, err := zip.NewReader(bytes.NewReader(p), int64(len(p)))
    if err != nil { return "", err }
    for _, f := range zr.File {
        dst := filepath.Join(root, f.Name)
        if f.FileInfo().IsDir() { if err := os.MkdirAll(dst, 0755); err != nil { return "", err }; continue }
        if err := os.MkdirAll(filepath.Dir(dst), 0755); err != nil { return "", err }
        rc, err := f.Open(); if err != nil { return "", err }
        w, err := os.OpenFile(dst, os.O_CREATE|os.O_WRONLY|os.O_TRUNC, 0644); if err != nil { rc.Close(); return "", err }
        if _, err = w.ReadFrom(rc); err != nil { w.Close(); rc.Close(); return "", err }
        w.Close(); rc.Close()
    }
    return root, nil
}

func prependEnv(key, dir string) {
    cur := os.Getenv(key)
    if cur == "" { os.Setenv(key, dir); return }
    os.Setenv(key, dir+string(os.PathListSeparator)+cur)
}
`
}

func isDynLib(name string) bool {
	if runtime.GOOS == "darwin" {
		return strings.HasSuffix(name, ".dylib")
	}
	// Linux / others
	return strings.HasSuffix(name, ".so") || strings.Contains(name, ".so.")
}

func listDynLibs(dir string) ([]string, error) {
	ents, err := os.ReadDir(dir)
	if err != nil {
		return nil, err
	}
	var out []string
	for _, e := range ents {
		if e.IsDir() {
			continue
		}
		name := e.Name()
		if isDynLib(name) {
			out = append(out, filepath.Join(dir, name))
		}
	}
	return out, nil
}

// ArchiveDir packs the given directory (including the top-level folder) into dst.
// format: "zip" (built-in), "tar" (built-in), "rar" (requires `rar` command).
func ArchiveDir(dir, dst, format string) error {
	switch strings.ToLower(format) {
	case "zip":
		return archiveZip(dir, dst)
	case "tar", "tar.gz":
		return archiveTarGz(dir, dst)
	case "rar":
		return archiveRar(dir, dst)
	default:
		return fmt.Errorf("unsupported archive format: %s", format)
	}
}

func archiveZip(root, dst string) error {
	f, err := os.Create(dst)
	if err != nil {
		return err
	}
	defer f.Close()

	zw := zip.NewWriter(f)
	defer zw.Close()

	parent := filepath.Dir(root)
	return filepath.WalkDir(root, func(p string, d fs.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		rel, _ := filepath.Rel(parent, p) // include top dir name
		rel = filepath.ToSlash(rel)
		if d.IsDir() {
			h := &zip.FileHeader{
				Name:   rel + "/",
				Method: zip.Deflate,
			}
			h.SetMode(0755)
			_, err := zw.CreateHeader(h)
			return err
		}
		info, err := d.Info()
		if err != nil {
			return err
		}
		h, err := zip.FileInfoHeader(info)
		if err != nil {
			return err
		}
		h.Name = rel
		h.Method = zip.Deflate
		w, err := zw.CreateHeader(h)
		if err != nil {
			return err
		}
		in, err := os.Open(p)
		if err != nil {
			return err
		}
		defer in.Close()
		_, err = io.Copy(w, in)
		return err
	})
}

func archiveTarGz(root, dst string) error {
	f, err := os.Create(dst)
	if err != nil {
		return err
	}
	defer f.Close()

	gw := gzip.NewWriter(f)
	defer gw.Close()

	tw := tar.NewWriter(gw)
	defer tw.Close()

	parent := filepath.Dir(root)
	return filepath.WalkDir(root, func(p string, d fs.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		rel, _ := filepath.Rel(parent, p) // include top dir name
		rel = filepath.ToSlash(rel)
		info, err := d.Info()
		if err != nil {
			return err
		}
		hdr, err := tar.FileInfoHeader(info, "")
		if err != nil {
			return err
		}
		hdr.Name = rel
		if err := tw.WriteHeader(hdr); err != nil {
			return err
		}
		if d.IsDir() {
			return nil
		}
		in, err := os.Open(p)
		if err != nil {
			return err
		}
		defer in.Close()
		_, err = io.Copy(tw, in)
		return err
	})
}

func archiveRar(root, dst string) error {
	top := filepath.Base(root)
	cmd := exec.Command("rar", "a", "-r", dst, top)
	cmd.Dir = filepath.Dir(root)
	cmd.Stdout, cmd.Stderr = os.Stdout, os.Stderr
	if err := cmd.Run(); err != nil {
		return fmt.Errorf("rar not available or failed: %w", err)
	}
	return nil
}
