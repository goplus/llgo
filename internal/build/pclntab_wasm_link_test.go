package build

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/xgo-dev/llgo/internal/build/funcinfo"
	"github.com/xgo-dev/llgo/internal/pclnmap"
	llssa "github.com/xgo-dev/llgo/ssa"
)

func TestWasmPCLNLiveness(t *testing.T) {
	records := []funcInfoRecord{{symbol: "main.live", name: "main.live", file: "live.go", line: 2}, {symbol: "main.dead", name: "main.dead", file: "dead.go", line: 3}}
	table, err := funcinfo.EncodeWithPCLines(toFuncInfoRecords(records), nil)
	if err != nil {
		t.Fatal(err)
	}
	data := pclnmap.Data{GOARCH: "wasm", PointerSize: 4, Table: table, SymbolIndex: []pclnmap.SymbolIndexEntry{
		{SymbolID: funcInfoSymbolID("main.live"), FuncIndex: 1},
		{SymbolID: funcInfoSymbolID("main.dead"), FuncIndex: 2},
	}}
	for _, names := range []string{"main.live.llvm.12", "", "empty-map", "fully.inlined"} {
		module := []byte("\x00asm\x01\x00\x00\x00")
		if names != "" {
			// name custom section, function map containing a promoted LTO name.
			name := names
			payload := append([]byte{1, 7, byte(len(name))}, name...)
			if names == "empty-map" {
				payload = []byte{0}
			}
			custom := append([]byte{4, 'n', 'a', 'm', 'e', 1, byte(len(payload))}, payload...)
			module = append(module, 0, byte(len(custom)))
			module = append(module, custom...)
		}
		path := filepath.Join(t.TempDir(), "module.wasm")
		if err := os.WriteFile(path, module, 0600); err != nil {
			t.Fatal(err)
		}
		analysis, err := analyzeWasmPCLN(path, data)
		if err != nil {
			t.Fatal(err)
		}
		pruned, err := linkedPCLNData(data, analysis)
		if err != nil {
			t.Fatal(err)
		}
		want := 2
		if names == "main.live.llvm.12" {
			want = 1
		} else if names == "fully.inlined" {
			want = 0
		}
		if len(pruned.Table.Records) != want {
			t.Fatalf("names=%q: records=%d, want %d", names, len(pruned.Table.Records), want)
		}
	}
}

func TestWasmPCLNPruningScope(t *testing.T) {
	for _, tc := range []struct {
		provider string
		entries  bool
		want     bool
	}{
		{"wasi", false, true},
		{"wasi", true, false},
		{"emscripten", false, false},
		{"gojs", false, false},
	} {
		prog := llssa.NewProgram(&llssa.Target{GOOS: "wasip1", GOARCH: "wasm", WasmProvider: tc.provider, WasmFuncInfoEntries: tc.entries})
		ctx := &context{prog: prog, buildConf: &Config{Goarch: "wasm", BuildMode: BuildModeExe, PCLNMode: PCLNEmbedded}}
		if got := canPruneEmbeddedPCLN(ctx); got != tc.want {
			t.Fatalf("%s entries=%v: eligible=%v, want %v", tc.provider, tc.entries, got, tc.want)
		}
		ctx.buildConf.BuildMode = BuildModeCArchive
		if canPruneEmbeddedPCLN(ctx) {
			t.Fatal("pruning library metadata")
		}
		prog.Dispose()
	}
}
