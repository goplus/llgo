package build

import (
	"bytes"
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"slices"
	"strings"

	llruntime "github.com/goplus/llgo/runtime"
)

func cloneOverlay(src map[string][]byte) map[string][]byte {
	if len(src) == 0 {
		return nil
	}
	dup := make(map[string][]byte, len(src))
	for k, v := range src {
		dup[k] = slices.Clone(v)
	}
	return dup
}

func buildSourcePatchOverlay(base map[string][]byte, runtimeDir string) (map[string][]byte, error) {
	return buildSourcePatchOverlayForGOROOT(base, runtimeDir, runtime.GOROOT())
}

func buildSourcePatchOverlayForGOROOT(base map[string][]byte, runtimeDir, goroot string) (map[string][]byte, error) {
	var out map[string][]byte
	for _, pkgPath := range llruntime.SourcePatchPkgPaths() {
		changed, next, err := applySourcePatchForPkg(base, out, runtimeDir, goroot, pkgPath)
		if err != nil {
			return nil, err
		}
		if !changed {
			continue
		}
		out = next
	}
	if out == nil {
		return base, nil
	}
	return out, nil
}

func applySourcePatchForPkg(base, current map[string][]byte, runtimeDir, goroot, pkgPath string) (bool, map[string][]byte, error) {
	patchDir := filepath.Join(runtimeDir, "internal", "lib", filepath.FromSlash(pkgPath))
	entries, err := os.ReadDir(patchDir)
	if err != nil {
		if os.IsNotExist(err) {
			return false, current, nil
		}
		return false, nil, fmt.Errorf("read source patch dir %s: %w", pkgPath, err)
	}

	srcDir := filepath.Join(goroot, "src", filepath.FromSlash(pkgPath))
	srcEntries, err := os.ReadDir(srcDir)
	if err != nil {
		return false, nil, fmt.Errorf("read stdlib dir %s: %w", pkgPath, err)
	}

	var (
		out       = current
		changed   bool
		patchSrcs = make(map[string][]byte)
		skipAll   bool
	)
	readOverlay := func(filename string) ([]byte, error) {
		if out != nil {
			if src, ok := out[filename]; ok {
				return src, nil
			}
		}
		if src, ok := base[filename]; ok {
			return src, nil
		}
		return os.ReadFile(filename)
	}

	for _, entry := range entries {
		if entry.IsDir() {
			continue
		}
		name := entry.Name()
		if !strings.HasSuffix(name, ".go") || strings.HasSuffix(name, "_test.go") {
			continue
		}
		filename := filepath.Join(patchDir, name)
		src, err := readOverlay(filename)
		if err != nil {
			return false, nil, fmt.Errorf("read source patch file %s: %w", filename, err)
		}
		patchSrcs[name] = slices.Clone(src)
		if bytes.Contains(src, []byte("llgo:skipall")) {
			skipAll = true
		}
	}
	if len(patchSrcs) == 0 {
		return false, current, nil
	}

	ensureOverlay := func() {
		if out == nil {
			out = cloneOverlay(base)
			if out == nil {
				out = make(map[string][]byte)
			}
		}
	}

	if skipAll {
		for _, entry := range srcEntries {
			if entry.IsDir() {
				continue
			}
			name := entry.Name()
			if !strings.HasSuffix(name, ".go") || strings.HasSuffix(name, "_test.go") {
				continue
			}
			filename := filepath.Join(srcDir, name)
			src, err := readOverlay(filename)
			if err != nil {
				return false, nil, fmt.Errorf("read stdlib source file %s: %w", filename, err)
			}
			stub, err := packageStubSource(src)
			if err != nil {
				return false, nil, fmt.Errorf("build stdlib stub %s: %w", filename, err)
			}
			ensureOverlay()
			out[filename] = stub
			changed = true
		}
	}

	for name, src := range patchSrcs {
		target := filepath.Join(srcDir, "z_llgo_patch_"+name)
		ensureOverlay()
		out[target] = src
		changed = true
	}
	return changed, out, nil
}

func packageStubSource(src []byte) ([]byte, error) {
	lines := strings.SplitAfter(string(src), "\n")
	var buf strings.Builder
	for _, line := range lines {
		buf.WriteString(line)
		if strings.HasPrefix(strings.TrimSpace(line), "package ") {
			return []byte(buf.String()), nil
		}
	}
	return nil, fmt.Errorf("package clause not found")
}
