//go:build !llgo
// +build !llgo

package dcepass

import (
	"encoding/json"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"testing"

	"github.com/goplus/llgo/cl/irgraph"
	"github.com/goplus/llvm"
)

func TestEmitStrongTypeOverridesCases(t *testing.T) {
	root := filepath.Join("testll")
	entries, err := os.ReadDir(root)
	if err != nil {
		t.Fatalf("read test root: %v", err)
	}

	for _, entry := range entries {
		if !entry.IsDir() {
			continue
		}
		name := entry.Name()
		if !strings.HasPrefix(name, "case_") {
			continue
		}
		t.Run(name, func(t *testing.T) {
			runCase(t, filepath.Join(root, name))
		})
	}
}

func runCase(t *testing.T, caseDir string) {
	t.Helper()

	reach, err := loadReachMethods(filepath.Join(caseDir, "reach.json"))
	if err != nil {
		t.Fatalf("load reach.json: %v", err)
	}

	srcDir := filepath.Join(caseDir, "src")
	srcEntries, err := os.ReadDir(srcDir)
	if err != nil {
		t.Fatalf("read src dir: %v", err)
	}

	var srcFiles []string
	for _, e := range srcEntries {
		if e.IsDir() || !strings.HasSuffix(e.Name(), ".ll") {
			continue
		}
		srcFiles = append(srcFiles, filepath.Join(srcDir, e.Name()))
	}
	sort.Strings(srcFiles)

	ctx := llvm.NewContext()
	defer ctx.Dispose()

	srcMods := make([]llvm.Module, 0, len(srcFiles))
	for _, f := range srcFiles {
		m := parseModuleFromFile(t, ctx, f)
		defer m.Dispose()
		srcMods = append(srcMods, m)
	}

	dst := ctx.NewModule("dcepass.test")
	defer dst.Dispose()

	if _, err := EmitStrongTypeOverrides(dst, srcMods, reach, Options{}); err != nil {
		t.Fatalf("EmitStrongTypeOverrides: %v", err)
	}

	got := normalizeIR(dst.String())
	outFile := filepath.Join(caseDir, "out.ll")
	wantRaw, err := os.ReadFile(outFile)
	if err != nil {
		if os.IsNotExist(err) {
			if got != "" {
				if err := os.WriteFile(outFile, []byte(got+"\n"), 0o644); err != nil {
					t.Fatalf("write out.ll: %v", err)
				}
			}
			return
		}
		t.Fatalf("read out.ll: %v", err)
	}

	want := normalizeIR(string(wantRaw))
	if want == "" {
		if got != "" {
			if err := os.WriteFile(outFile, []byte(got+"\n"), 0o644); err != nil {
				t.Fatalf("update out.ll: %v", err)
			}
		}
		return
	}

	if got != want {
		t.Fatalf("out.ll mismatch\n--- got ---\n%s\n--- want ---\n%s", got, want)
	}
}

func parseModuleFromFile(t *testing.T, ctx llvm.Context, file string) llvm.Module {
	t.Helper()
	buf, err := llvm.NewMemoryBufferFromFile(file)
	if err != nil {
		t.Fatalf("memory buffer %s: %v", file, err)
	}
	mod, err := ctx.ParseIR(buf)
	if err != nil {
		t.Fatalf("parse ll %s: %v", file, err)
	}
	return mod
}

func loadReachMethods(file string) (map[irgraph.SymID]map[int]bool, error) {
	raw, err := os.ReadFile(file)
	if err != nil {
		return nil, err
	}
	var decoded map[string][]int
	if len(strings.TrimSpace(string(raw))) == 0 {
		return map[irgraph.SymID]map[int]bool{}, nil
	}
	if err := json.Unmarshal(raw, &decoded); err != nil {
		return nil, err
	}
	reach := make(map[irgraph.SymID]map[int]bool, len(decoded))
	for typ, idxs := range decoded {
		m := make(map[int]bool, len(idxs))
		for _, idx := range idxs {
			m[idx] = true
		}
		reach[irgraph.SymID(typ)] = m
	}
	return reach, nil
}

func normalizeIR(ir string) string {
	ir = strings.TrimSpace(ir)
	if ir == "" {
		return ""
	}
	var lines []string
	for _, line := range strings.Split(ir, "\n") {
		if strings.HasPrefix(line, "; ModuleID =") {
			continue
		}
		if strings.TrimSpace(line) == "" {
			continue
		}
		lines = append(lines, line)
	}
	return strings.TrimSpace(strings.Join(lines, "\n"))
}
