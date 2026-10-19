package build

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/crosscompile"
	"github.com/xgo-dev/llgo/internal/pclnmap"
	llssa "github.com/xgo-dev/llgo/ssa"
)

func TestEmbeddedPCLNPruningScope(t *testing.T) {
	t.Setenv("LLGO_PCLNPOST", "1")
	for _, tc := range []struct {
		name                 string
		goos, goarch, target string
		mode                 PCLNMode
		buildMode            BuildMode
		sites, want          bool
	}{
		{"linux", "linux", "amd64", "", PCLNEmbedded, BuildModeExe, true, true},
		{"darwin", "darwin", "arm64", "", PCLNEmbedded, BuildModeExe, true, true},
		{"external", "linux", "amd64", "", PCLNExternal, BuildModeExe, true, false},
		{"none", "linux", "amd64", "", PCLNNone, BuildModeExe, true, false},
		{"shared", "linux", "amd64", "", PCLNEmbedded, BuildModeCShared, true, false},
		{"named target", "linux", "amd64", "custom", PCLNEmbedded, BuildModeExe, true, false},
		{"no sites", "linux", "amd64", "", PCLNEmbedded, BuildModeExe, false, false},
		{"32-bit", "linux", "386", "", PCLNEmbedded, BuildModeExe, true, false},
		{"windows", "windows", "amd64", "", PCLNEmbedded, BuildModeExe, true, false},
	} {
		t.Run(tc.name, func(t *testing.T) {
			ctx := &context{buildConf: &Config{
				Goos: tc.goos, Goarch: tc.goarch, Target: tc.target,
				PCLNMode: tc.mode, BuildMode: tc.buildMode,
				LinkOptions: LinkOptions{DWARF: DWARFOmit},
			}, linkRuntimeSites: &tc.sites, crossCompile: crosscompile.Export{}}
			if got := canPruneEmbeddedPCLN(ctx); got != tc.want {
				t.Fatalf("eligible = %v, want %v", got, tc.want)
			}
			if tc.want {
				t.Setenv("LLGO_PCLNPOST", "0")
				if canPruneEmbeddedPCLN(ctx) {
					t.Fatal("PCLNPOST escape hatch was ignored")
				}
			}
		})
	}
}

func TestRewriteEmbeddedPCLNIRRemapsAllTables(t *testing.T) {
	t.Setenv("LLGO_PCLNPOST", "1")
	prog := llssa.NewProgram(nil)
	defer prog.Dispose()
	prog.EnableFuncInfoSites(true)
	pkg := prog.NewPackage("main", "main")
	defer pkg.Module().Dispose()
	ctx := &context{prog: prog, buildConf: &Config{
		Goos: "linux", Goarch: "amd64", BuildMode: BuildModeExe, PCLNMode: PCLNEmbedded,
	}}
	emitFuncInfoTable(ctx, pkg, []funcInfoRecord{
		{symbol: "main.dead", name: "main.DeadOnly2420", file: "/dead/file.go", line: 10},
		{symbol: "main.live", name: "main.Live", file: "/src/main.go", line: 20},
	}, []pcLineRecord{{id: 7, symbol: "main.dead", file: "/dead/site.go", line: 11}})
	data := *ctx.pclnEmbedded
	data.EntrySites = []pclnmap.Site{{PCOffset: 16, ID: funcInfoSymbolID("main.live")}}
	pruned, err := pclnmap.Prune(data)
	if err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(t.TempDir(), "entry.ll")
	if err := os.WriteFile(path, []byte(pkg.String()), 0o600); err != nil {
		t.Fatal(err)
	}
	if err := rewriteEmbeddedPCLNIR(path, pruned); err != nil {
		t.Fatal(err)
	}
	raw, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	ir := string(raw)
	for _, forbidden := range []string{"DeadOnly2420", "/dead", ".unpruned"} {
		if strings.Contains(ir, forbidden) {
			t.Fatalf("rewritten entry retains %q", forbidden)
		}
	}
	for _, expected := range []string{
		"@__llgo_funcinfo_count = global i64 1",
		"@__llgo_pcline_count = global i64 0",
		"@__llgo_funcinfo_symbol_index_count = hidden global i64 1",
		`@"__llgo_funcinfo_table$data" = private unnamed_addr constant [1 x`,
		`@"__llgo_pcline_table$data" = private unnamed_addr constant [0 x`,
	} {
		if !strings.Contains(ir, expected) {
			t.Fatalf("rewritten entry is missing %q:\n%s", expected, ir)
		}
	}
}
