package build

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"path/filepath"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/cl"
	"github.com/xgo-dev/llgo/internal/optlevel"
	"github.com/xgo-dev/llgo/internal/packages"
	llssa "github.com/xgo-dev/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

func TestUnusedGlobalInitCache(t *testing.T) {
	pkg := buildWasmReflectTestProgram(t, `package main; var M = map[int]int{1:2}; func main() {}`)
	ctx := &context{conf: &packages.Config{}, mode: ModeGen, buildConf: &Config{Goos: "wasip1", Goarch: "wasm"}, progSSA: pkg.Prog}
	fingerprint := func(preserve bool) (string, string) {
		ctx.frontendOptions.UnusedGlobalInits = cl.FindUnusedGlobalInits(pkg.Prog, func(*ssa.Global) bool { return preserve })
		ap := &aPackage{SSA: pkg, Package: &packages.Package{PkgPath: "main", ID: "main"}}
		if err := ctx.collectFingerprint(ap); err != nil {
			t.Fatal(err)
		}
		return ap.Fingerprint, ap.Manifest
	}
	pruned, manifest := fingerprint(false)
	kept, _ := fingerprint(true)
	if pruned == kept || !strings.Contains(manifest, "unused_global_inits:") {
		t.Fatal("program-specific initializer plan is absent from cache identity")
	}
	if repeated, _ := fingerprint(false); repeated != pruned {
		t.Fatal("unstable initializer cache identity")
	}
}

func TestUnusedGlobalInitAssemblyReferences(t *testing.T) {
	t.Setenv("LDFLAGS", "")
	pkg := buildWasmReflectTestProgram(t, `package main
var Kept int64 = 42
var Dead int64 = 27
func Read() int64
func main() { Read() }
`)
	dir := t.TempDir()
	path := filepath.Join(dir, "read_wasm.s")
	assembly := []byte("TEXT ·Read(SB),NOSPLIT,$0-8\n\tMOVD ·Kept(SB), R0\n\tMOVD R0, ret+0(FP)\n\tRET\n")
	p := &packages.Package{ID: "main", PkgPath: "main", Dir: dir, Types: pkg.Pkg,
		TypesSizes: &types.StdSizes{WordSize: 4, MaxAlign: 8}, OtherFiles: []string{path, filepath.Join(dir, "textflag.h")}}
	prog := llssa.NewProgram(&llssa.Target{GOOS: "wasip1", GOARCH: "wasm"})
	defer prog.Dispose()
	ctx := &context{prog: prog, progSSA: pkg.Prog,
		buildConf: &Config{BuildMode: BuildModeExe, Goos: "wasip1", Goarch: "wasm", Overlay: map[string][]byte{path: assembly}},
		pkgByID:   map[string]*aPackage{"main": {Package: p, SSA: pkg}}}
	configureUnusedGlobalInits(ctx)
	if names := ctx.frontendOptions.UnusedGlobalInits.Names(pkg); len(names) != 1 || names[0] != pkg.Var("Dead").String() {
		t.Fatalf("pruned %v; assembly-referenced global must survive", names)
	}
	// Arbitrary native inputs cannot be inspected through Go SSA.
	p.OtherFiles = append(p.OtherFiles, filepath.Join(dir, "opaque.c"))
	ctx.frontendOptions.UnusedGlobalInits = nil
	configureUnusedGlobalInits(ctx)
	if ctx.frontendOptions.UnusedGlobalInits != nil {
		t.Fatal("pruned initializers despite opaque native inputs")
	}
}

func TestUnusedGlobalInitLinkAliases(t *testing.T) {
	t.Setenv("LDFLAGS", "")
	pkg := buildWasmReflectTestProgram(t, `package main; var M = map[int]int{1:2}; func main() {}`)
	for _, alias := range []string{"", "source", "target"} {
		prog := llssa.NewProgram(&llssa.Target{GOOS: "wasip1", GOARCH: "wasm"})
		name := llssa.FullName(pkg.Pkg, "M")
		if alias == "source" {
			prog.SetLinkname(name, "C.map")
		}
		if alias == "target" {
			prog.SetLinkname("other.alias", name)
		}
		ctx := &context{prog: prog, progSSA: pkg.Prog, buildConf: &Config{BuildMode: BuildModeExe}}
		configureUnusedGlobalInits(ctx)
		if got := len(ctx.frontendOptions.UnusedGlobalInits.Names(pkg)) != 0; got != (alias == "") {
			t.Fatalf("alias %q: pruned = %v", alias, got)
		}
		prog.Dispose()
	}
}

func TestUnusedGlobalInitScope(t *testing.T) {
	pkg := buildWasmReflectTestProgram(t, `package main; var M = map[int]int{1:2}; func main() {}`)
	for _, tc := range []struct {
		name, arch, ldflags string
		mode                Mode
		buildMode           BuildMode
		level               optlevel.Level
		want                bool
	}{
		{"wasm", "wasm", "", ModeBuild, BuildModeExe, optlevel.Oz, true},
		{"native", "arm64", "", ModeBuild, BuildModeExe, optlevel.Oz, false},
		{"debug", "wasm", "", ModeBuild, BuildModeExe, optlevel.O0, false},
		{"gen", "wasm", "", ModeGen, BuildModeExe, optlevel.Oz, false},
		{"library", "wasm", "", ModeBuild, BuildModeCArchive, optlevel.Oz, false},
		{"native object", "wasm", "extra.o", ModeBuild, BuildModeExe, optlevel.Oz, false},
		{"link export", "wasm", "-Wl,--export=main.M", ModeBuild, BuildModeExe, optlevel.Oz, false},
		{"LTO diagnostics", "wasm", "-Wl,--save-temps -Wl,--lto-obj-path=out.o", ModeBuild, BuildModeExe, optlevel.Oz, true},
		{"combined map and export", "wasm", "-Wl,-Map=out.map,--export=main.M", ModeBuild, BuildModeExe, optlevel.Oz, false},
		{"combined LTO output and root", "wasm", "-Wl,--lto-obj-path=out.o,--undefined=main.M", ModeBuild, BuildModeExe, optlevel.Oz, false},
	} {
		t.Run(tc.name, func(t *testing.T) {
			t.Setenv("LDFLAGS", tc.ldflags)
			prog := llssa.NewProgram(&llssa.Target{GOOS: "wasip1", GOARCH: tc.arch})
			defer prog.Dispose()
			ctx := &context{prog: prog, progSSA: pkg.Prog, mode: tc.mode,
				buildConf: &Config{BuildMode: tc.buildMode, OptLevel: tc.level}}
			configureUnusedGlobalInits(ctx)
			if got := len(ctx.frontendOptions.UnusedGlobalInits.Names(pkg)) != 0; got != tc.want {
				t.Fatalf("pruned=%v, want %v", got, tc.want)
			}
		})
	}
}

func TestUnusedGlobalInitExportAnnotation(t *testing.T) {
	t.Setenv("LDFLAGS", "")
	src := "package main\n//go:linkname\tM\nvar M = map[int]int{1:2}\nfunc main() {}"
	pkg := buildWasmReflectTestProgram(t, src)
	file, err := parser.ParseFile(token.NewFileSet(), "main.go", src, parser.ParseComments)
	if err != nil {
		t.Fatal(err)
	}
	prog := llssa.NewProgram(&llssa.Target{GOOS: "wasip1", GOARCH: "wasm"})
	defer prog.Dispose()
	p := &packages.Package{ID: "main", PkgPath: "main", Types: pkg.Pkg, Syntax: []*ast.File{file}}
	ctx := &context{prog: prog, progSSA: pkg.Prog, buildConf: &Config{BuildMode: BuildModeExe},
		pkgByID: map[string]*aPackage{"main": {Package: p, SSA: pkg}}}
	configureUnusedGlobalInits(ctx)
	if names := ctx.frontendOptions.UnusedGlobalInits.Names(pkg); len(names) != 0 {
		t.Fatalf("single-name exported globals were pruned: %v", names)
	}
}

func TestUnusedGlobalInitRewrite(t *testing.T) {
	t.Setenv("LDFLAGS", "")
	pkg := buildWasmReflectTestProgram(t, `package main; var Version = "dev"; func main() {}`)
	prog := llssa.NewProgram(&llssa.Target{GOOS: "wasip1", GOARCH: "wasm"})
	defer prog.Dispose()
	p := &packages.Package{ID: "main", PkgPath: "main", Types: pkg.Pkg}
	ctx := &context{prog: prog, progSSA: pkg.Prog, buildConf: &Config{BuildMode: BuildModeExe},
		pkgByID: map[string]*aPackage{"main": {Package: p, SSA: pkg, rewriteVars: map[string]string{"Version": "release"}}}}
	configureUnusedGlobalInits(ctx)
	if names := ctx.frontendOptions.UnusedGlobalInits.Names(pkg); len(names) != 0 {
		t.Fatalf("rewritten initializer was pruned: %v", names)
	}
}
