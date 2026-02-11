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

	"github.com/goplus/llgo/internal/relocgraph"
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

	if err := EmitStrongTypeOverrides(dst, srcMods, reach); err != nil {
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

func loadReachMethods(file string) (map[relocgraph.SymID]map[int]bool, error) {
	raw, err := os.ReadFile(file)
	if err != nil {
		return nil, err
	}
	var decoded map[string][]int
	if len(strings.TrimSpace(string(raw))) == 0 {
		return map[relocgraph.SymID]map[int]bool{}, nil
	}
	if err := json.Unmarshal(raw, &decoded); err != nil {
		return nil, err
	}
	reach := make(map[relocgraph.SymID]map[int]bool, len(decoded))
	for typ, idxs := range decoded {
		m := make(map[int]bool, len(idxs))
		for _, idx := range idxs {
			m[idx] = true
		}
		reach[relocgraph.SymID(typ)] = m
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
		line = strings.TrimSpace(line)
		if line == "" {
			continue
		}
		lines = append(lines, line)
	}
	return strings.TrimSpace(strings.Join(lines, "\n"))
}

func TestMethodArrayValidation(t *testing.T) {
	tests := []struct {
		name    string
		src     string
		wantOK  bool
		wantLen int
	}{
		{
			name: "no_fields",
			src: `
source_filename = "test"
@g = global {} {}
`,
			wantOK: false,
		},
		{
			name: "last_field_not_array",
			src: `
source_filename = "test"
@g = global { i8 } { i8 0 }
`,
			wantOK: false,
		},
		{
			name: "array_elem_not_struct",
			src: `
source_filename = "test"
@g = global { [1 x i8] } { [1 x i8] zeroinitializer }
`,
			wantOK: false,
		},
		{
			name: "method_struct_wrong_field_count",
			src: `
source_filename = "test"
%"github.com/goplus/llgo/runtime/abi.Method" = type { ptr, ptr, ptr }
@g = global { [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { [1 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }
`,
			wantOK: false,
		},
		{
			name: "method_struct_wrong_name",
			src: `
source_filename = "test"
%"example/Method" = type { ptr, ptr, ptr, ptr }
@g = global { [1 x %"example/Method"] } { [1 x %"example/Method"] zeroinitializer }
`,
			wantOK: false,
		},
		{
			name: "ok",
			src: `
source_filename = "test"
%"github.com/goplus/llgo/runtime/abi.Method" = type { ptr, ptr, ptr, ptr }
@name = private constant [1 x i8] c"A"
@g = global { [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { ptr @name, ptr null, ptr null, ptr null }] }
`,
			wantOK:  true,
			wantLen: 1,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			ctx := llvm.NewContext()
			defer ctx.Dispose()

			mod := parseModuleFromSource(t, ctx, tt.src)
			defer mod.Dispose()

			g := mod.NamedGlobal("g")
			if g.IsNil() {
				t.Fatalf("global g not found")
			}
			methodsVal, elemTy, ok := methodArray(g.Initializer())
			if ok != tt.wantOK {
				t.Fatalf("methodArray ok=%v, want %v", ok, tt.wantOK)
			}
			if !tt.wantOK {
				return
			}
			if methodsVal.OperandsCount() != tt.wantLen {
				t.Fatalf("method array len=%d, want %d", methodsVal.OperandsCount(), tt.wantLen)
			}
			if elemTy.StructName() != "github.com/goplus/llgo/runtime/abi.Method" {
				t.Fatalf("elem struct name=%q", elemTy.StructName())
			}
		})
	}
}

func parseModuleFromSource(t *testing.T, ctx llvm.Context, src string) llvm.Module {
	t.Helper()
	file := filepath.Join(t.TempDir(), "test.ll")
	if err := os.WriteFile(file, []byte(strings.TrimSpace(src)+"\n"), 0o644); err != nil {
		t.Fatalf("write test ll: %v", err)
	}
	return parseModuleFromFile(t, ctx, file)
}
