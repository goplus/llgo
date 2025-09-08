package pyenv

import (
	"archive/zip"
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"io"
	"io/fs"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
)

// BuildPyBundleZip creates a zip archive in memory that contains the Python runtime
// laid out under:
//
//	lib/python/lib/libpython3.x.{dylib|so}
//	lib/python/lib/python3.12/**
//
// It returns the zip bytes.
func BuildPyBundleZip() ([]byte, error) {
	pyHome := PythonHome()

	// Locate libpython
	libSrc, err := findLibpython(filepath.Join(pyHome, "lib"))
	if err != nil {
		return nil, err
	}
	stdSrc := filepath.Join(pyHome, "lib", "python3.12")

	var buf bytes.Buffer
	zw := zip.NewWriter(&buf)

	// 1) Add libpython to lib/python/lib/
	{
		dst := filepath.ToSlash(filepath.Join("lib", "python", "lib", filepath.Base(libSrc)))
		if err := addFileToZip(zw, libSrc, dst, 0644); err != nil {
			_ = zw.Close()
			return nil, fmt.Errorf("add libpython: %w", err)
		}
	}

	// 2) Add standard library to lib/python/lib/python3.12/**
	err = filepath.WalkDir(stdSrc, func(p string, d fs.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		rel, _ := filepath.Rel(stdSrc, p)
		if rel == "." {
			return nil
		}
		// Prune
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
		if r == "idlelib" || strings.HasPrefix(r, "idlelib/") {
			if d.IsDir() {
				return filepath.SkipDir
			}
			return nil
		}
		if r == "tkinter" || strings.HasPrefix(r, "tkinter/") {
			if d.IsDir() {
				return filepath.SkipDir
			}
			return nil
		}
		dst := filepath.ToSlash(filepath.Join("lib", "python", "lib", "python3.12", rel))
		if d.IsDir() {
			// Directories are implicit in zip, no need to create explicitly
			return nil
		}
		return addFileToZip(zw, p, dst, 0644)
	})
	if err != nil {
		_ = zw.Close()
		return nil, err
	}

	if err := zw.Close(); err != nil {
		return nil, err
	}
	return buf.Bytes(), nil
}

// WritePyBundleBinary builds a self-extracting helper binary that embeds the
// Python bundle zip (produced on the fly) and extracts it at runtime into a
// cache directory, then prints the extracted root directory path to stdout.
// The binary is useful as a redistributable Python runtime carrier.
func WritePyBundleBinary(output string) error {
	payload, err := BuildPyBundleZip()
	if err != nil {
		return err
	}
	tmpDir, err := os.MkdirTemp("", "pybundle-build-*")
	if err != nil {
		return err
	}
	defer os.RemoveAll(tmpDir)

	payloadPath := filepath.Join(tmpDir, "payload.zip")
	if err := os.WriteFile(payloadPath, payload, 0644); err != nil {
		return err
	}

	mainSrc := bootloaderMain()
	mainPath := filepath.Join(tmpDir, "main.go")
	if err := os.WriteFile(mainPath, []byte(mainSrc), 0644); err != nil {
		return err
	}

	// Build the helper using the host Go toolchain.
	cmd := exec.Command("go", "build", "-o", output, "main.go")
	cmd.Dir = tmpDir
	// Ensure module mode off for a single-file build, if possible.
	cmd.Env = append(os.Environ(), "GO111MODULE=off")
	out, err := cmd.CombinedOutput()
	if err != nil {
		return fmt.Errorf("go build failed: %v\n%s", err, string(out))
	}
	return nil
}

// addFileToZip adds a file from src to the zip writer under dst path.
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

// bootloaderMain returns the source of a tiny self-extracting bootloader.
// It embeds payload.zip and extracts it to a content-addressed cache directory,
// then prints the extraction root to stdout. No Python initialization is done
// here; the caller can use the extracted path to run with the desired layout.
func bootloaderMain() string {
	return `package main

import (
    "archive/zip"
    "bytes"
    _ "embed"
    "crypto/sha256"
    "encoding/hex"
    "fmt"
    "io"
    "os"
    "path/filepath"
)

//go:embed payload.zip
var payload []byte

func main() {
    root, err := extractToCache(payload)
    if err != nil {
        fmt.Fprintln(os.Stderr, "extract failed:", err)
        os.Exit(1)
    }
    // Print the root directory that contains lib/python/lib/...
    fmt.Println(root)
}

func extractToCache(p []byte) (string, error) {
    sum := sha256.Sum256(p)
    tag := hex.EncodeToString(sum[:8])
    base, err := os.UserCacheDir()
    if err != nil { return "", err }
    root := filepath.Join(base, "llgo", "pybundle", tag)
    // If already extracted, fast path
    if st, err := os.Stat(root); err == nil && st.IsDir() {
        return root, nil
    }
    if err := os.MkdirAll(root, 0755); err != nil { return "", err }
    zr, err := zip.NewReader(bytes.NewReader(p), int64(len(p)))
    if err != nil { return "", err }
    for _, f := range zr.File {
        dst := filepath.Join(root, f.Name)
        if f.FileInfo().IsDir() {
            if err := os.MkdirAll(dst, 0755); err != nil { return "", err }
            continue
        }
        if err := os.MkdirAll(filepath.Dir(dst), 0755); err != nil { return "", err }
        rc, err := f.Open()
        if err != nil { return "", err }
        w, err := os.OpenFile(dst, os.O_CREATE|os.O_WRONLY|os.O_TRUNC, 0644)
        if err != nil { rc.Close(); return "", err }
        if _, err = io.Copy(w, rc); err != nil { w.Close(); rc.Close(); return "", err }
        w.Close()
        rc.Close()
    }
    return root, nil
}
`
}

// ComputeBundleHash returns a short hash string of the current bundle content
// (helpful for naming/caching).
func ComputeBundleHash() (string, error) {
	p, err := BuildPyBundleZip()
	if err != nil {
		return "", err
	}
	sum := sha256.Sum256(p)
	return hex.EncodeToString(sum[:8]), nil
}

// Platform note: on macOS, libpython must be loaded from disk. This bundler
// ensures the onedir-like layout under the extracted root:
//   <root>/lib/python/lib/libpython3.x.dylib
//   <root>/lib/python/lib/python3.12/**
// which matches PYTHONHOME set to <root>/lib/python (so stdlib is at
// PYTHONHOME/lib/python3.12), or rpath set to @executable_path/../lib/python/lib.
// The caller is responsible for choosing and applying the runtime init policy.
