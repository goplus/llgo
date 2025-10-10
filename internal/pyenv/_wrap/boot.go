package main

import (
	"archive/zip"
	"bytes"
	"crypto/sha256"
	_ "embed"
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
	if err := os.MkdirAll(filepath.Dir(appPath), 0755); err != nil {
		panic(err)
	}
	if err := os.WriteFile(appPath, appBin, 0755); err != nil {
		panic(err)
	}

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
	if err != nil {
		return "", err
	}
	root := filepath.Join(base, "llgo", "pybundle", tag)
	if st, err := os.Stat(root); err == nil && st.IsDir() {
		return root, nil
	}
	if err := os.MkdirAll(root, 0755); err != nil {
		return "", err
	}
	zr, err := zip.NewReader(bytes.NewReader(p), int64(len(p)))
	if err != nil {
		return "", err
	}
	for _, f := range zr.File {
		dst := filepath.Join(root, f.Name)
		if f.FileInfo().IsDir() {
			if err := os.MkdirAll(dst, 0755); err != nil {
				return "", err
			}
			continue
		}
		if err := os.MkdirAll(filepath.Dir(dst), 0755); err != nil {
			return "", err
		}
		rc, err := f.Open()
		if err != nil {
			return "", err
		}
		w, err := os.OpenFile(dst, os.O_CREATE|os.O_WRONLY|os.O_TRUNC, 0644)
		if err != nil {
			rc.Close()
			return "", err
		}
		if _, err = w.ReadFrom(rc); err != nil {
			w.Close()
			rc.Close()
			return "", err
		}
		w.Close()
		rc.Close()
	}
	return root, nil
}

func prependEnv(key, dir string) {
	cur := os.Getenv(key)
	if cur == "" {
		os.Setenv(key, dir)
		return
	}
	os.Setenv(key, dir+string(os.PathListSeparator)+cur)
}
