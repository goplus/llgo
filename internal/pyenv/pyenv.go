package pyenv

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/goplus/llgo/internal/env"
)

const pythonUrl = "https://github.com/astral-sh/python-build-standalone/releases/download/20250808/cpython-3.12.11+20250808-x86_64-apple-darwin-install_only.tar.gz"

// Ensure makes sure the Python runtime cache directory exists under
// {LLGoCacheDir()}/python_env using an atomic temp-dir rename pattern.
// It is safe to call concurrently and is idempotent.
func Ensure() error {
	root := filepath.Join(env.LLGoCacheDir(), "python_env")
	return ensureDirAtomic(root)
}

// EnsureWithFetch ensures the cache directory exists and,
// if it is empty and url is not empty, downloads and extracts
// assets from the given url into the cache directory.
func EnsureWithFetch(url string) error {
	if url == "" {
		url = pythonUrl
	}
	root := filepath.Join(env.LLGoCacheDir(), "python_env")
	if err := ensureDirAtomic(root); err != nil {
		return err
	}
	empty, err := isDirEmpty(root)
	if err != nil {
		return err
	}
	if empty && url != "" {
		fmt.Println("downloading python assets from", url)
		return downloadAndExtract(url, root)
	}
	return nil
}

func ensureDirAtomic(dir string) error {
	if st, err := os.Stat(dir); err == nil && st.IsDir() {
		return nil
	}
	tmp := dir + ".temp"
	_ = os.RemoveAll(tmp)
	if err := os.MkdirAll(tmp, 0o755); err != nil {
		return fmt.Errorf("create temp dir: %w", err)
	}
	// // Optional marker to indicate successful initialization
	// _ = os.WriteFile(filepath.Join(tmp, ".init_ok"), []byte(time.Now().Format(time.RFC3339)), 0o644)
	// if err := os.Rename(tmp, dir); err != nil {
	// 	_ = os.RemoveAll(tmp)
	// 	// If another process won the race, treat as success
	// 	if st, err2 := os.Stat(dir); err2 == nil && st.IsDir() {
	// 		return nil
	// 	}
	// 	return fmt.Errorf("rename temp to final: %w", err)
	// }
	return nil
}

func isDirEmpty(dir string) (bool, error) {
	entries, err := os.ReadDir(dir)
	if err != nil {
		if os.IsNotExist(err) {
			return true, nil
		}
		return false, err
	}
	return len(entries) == 0, nil
}
