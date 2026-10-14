package build

import (
	"debug/dwarf"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/crosscompile"
	"github.com/xgo-dev/llgo/internal/lto"
	"github.com/xgo-dev/llgo/internal/optlevel"
)

func TestDarwinNativeLinking(t *testing.T) {
	if runtime.GOOS != "darwin" {
		t.Skip("requires the native macOS SDK and Apple linker")
	}
	t.Setenv("MACOSX_DEPLOYMENT_TARGET", "13.0")
	t.Setenv("CC", "clang")
	t.Setenv("CXX", "")
	linkTemps := t.TempDir()
	t.Setenv("TMPDIR", linkTemps)
	const source = `package main
import (
    "fmt"
    "reflect"
    "runtime"
    "strings"
    _ "unsafe"
)
const LLGoFiles = "bridge.cpp"
//go:linkname cppAnswer C.cpp_answer
func cppAnswer() int32
//go:noinline
func first() int { return 7 }
//go:noinline
func second() int { return 7 }
func main() {
    if cppAnswer() != 42 { panic("C++ bridge failed") }
    a, b := reflect.ValueOf(first).Pointer(), reflect.ValueOf(second).Pointer()
    if a == b { panic("distinct functions have the same PC") }
    for _, pc := range []uintptr{a, b} {
        fn := runtime.FuncForPC(pc)
        if fn == nil || (!strings.HasSuffix(fn.Name(), ".first") && !strings.HasSuffix(fn.Name(), ".second")) {
            panic("function metadata was lost")
        }
    }
    fmt.Println(first()+second())
}
`
	dir := t.TempDir()
	path := filepath.Join(dir, "main.go")
	if err := os.WriteFile(path, []byte(source), 0600); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(dir, "bridge.cpp"), []byte(`#include <iostream>
extern "C" int cpp_answer() { std::cout << "cpp-ok" << std::endl; return 42; }
`), 0600); err != nil {
		t.Fatal(err)
	}
	for _, tt := range []struct {
		name  string
		level optlevel.Level
		lto   lto.Mode
	}{
		{"O0", optlevel.O0, lto.Off},
		{"O2", optlevel.O2, lto.Off},
		{"ThinLTO", optlevel.O2, lto.Thin},
		{"FullLTO", optlevel.O2, lto.Full},
	} {
		t.Run(tt.name, func(t *testing.T) {
			conf := NewDefaultConf(ModeBuild)
			conf.OptLevel, conf.LTO = tt.level, tt.lto
			conf.LinkOptions.DWARF = DWARFPreserve
			conf.OutFile = filepath.Join(dir, tt.name)
			if _, err := Do([]string{"file=" + path}, conf); err != nil {
				t.Fatal(err)
			}
			out, err := exec.Command(conf.OutFile).CombinedOutput()
			if err != nil || string(out) != "cpp-ok\n14\n" {
				t.Fatalf("run: %v\n%s", err, out)
			}
			data, _ := openNativeDWARF(t, conf.OutFile)
			if findDWARFNode(readDWARFTree(t, data), dwarf.TagCompileUnit, "main") == nil {
				t.Fatal("main DWARF compile unit was lost")
			}
			if tt.lto.Enabled() {
				if _, err := os.Stat(conf.OutFile + ".dSYM"); err != nil {
					t.Fatal("LTO dSYM missing:", err)
				}
				if temps, err := filepath.Glob(filepath.Join(linkTemps, "llgo-darwin-lto-*")); err != nil || len(temps) != 0 {
					t.Fatalf("LTO temporary objects retained: %q (%v)", temps, err)
				}
			}
			if tt.lto == lto.Full {
				t.Setenv(llgoBuildCache, "off")
				// Rebuilding the same output must refresh its dSYM without
				// retaining whole-program LTO objects for every successful link.
				updated := strings.Replace(source, "func first() int { return 7 }", "func first() int { return 8 }", 1)
				if err := os.WriteFile(path, []byte(updated), 0600); err != nil {
					t.Fatal(err)
				}
				if _, err := Do([]string{"file=" + path}, conf); err != nil {
					t.Fatal(err)
				}
				if out, err := exec.Command(conf.OutFile).CombinedOutput(); err != nil || string(out) != "cpp-ok\n15\n" {
					t.Fatalf("rebuilt output: %v\n%s", err, out)
				}
				data, _ := openNativeDWARF(t, conf.OutFile)
				if findDWARFNode(readDWARFTree(t, data), dwarf.TagCompileUnit, "main") == nil {
					t.Fatal("rebuilt dSYM lost main")
				}
				conf.LinkOptions.DWARF = DWARFOmit
				if _, err := Do([]string{"file=" + path}, conf); err != nil {
					t.Fatal(err)
				}
				if _, err := os.Stat(conf.OutFile + ".dSYM"); !os.IsNotExist(err) {
					t.Fatalf("stale dSYM after -w: %v", err)
				}
				if temps, err := filepath.Glob(filepath.Join(linkTemps, "llgo-darwin-lto-*")); err != nil || len(temps) != 0 {
					t.Fatalf("LTO temporary objects retained after rebuild: %q (%v)", temps, err)
				}
			}
		})
	}
}

func TestDarwinLTOFailureCleansTemporaryObjects(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("uses a Unix dsymutil stub")
	}
	dir := t.TempDir()
	if err := os.WriteFile(filepath.Join(dir, "dsymutil"), []byte("#!/bin/sh\nexit 9\n"), 0755); err != nil {
		t.Fatal(err)
	}
	t.Setenv("PATH", dir+string(os.PathListSeparator)+os.Getenv("PATH"))
	t.Setenv("TMPDIR", dir)
	for _, mode := range []string{"fail", "write"} {
		t.Run(mode, func(t *testing.T) {
			t.Setenv("LLGO_TEST_LINKER_HELPER", mode)
			ctx := &context{
				buildConf: &Config{Goos: "darwin", LTO: lto.Full, LinkOptions: LinkOptions{DWARF: DWARFPreserve}},
				crossCompile: crosscompile.Export{CC: os.Args[0], Toolchain: crosscompile.NativeToolchain{
					Linker: crosscompile.LinkerFlavorApple, ObjectFormat: crosscompile.ObjectFormatMachO,
				}},
				commands: commandEnv{dir: dir, environ: os.Environ()},
			}
			err := linkObjFiles(ctx, filepath.Join(dir, "app"), nil, nil, false)
			if err == nil || mode == "write" && !strings.Contains(err.Error(), "generate Darwin LTO debug symbols") {
				t.Fatalf("link error = %v", err)
			}
			if temps, err := filepath.Glob(filepath.Join(dir, "llgo-darwin-lto-*")); err != nil || len(temps) != 0 {
				t.Fatalf("LTO objects retained after failure: %q (%v)", temps, err)
			}
		})
	}
}
