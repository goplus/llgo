package build

import (
	"debug/dwarf"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"testing"

	"github.com/xgo-dev/llgo/internal/lto"
	"github.com/xgo-dev/llgo/internal/optlevel"
)

func TestDarwinNativeLinking(t *testing.T) {
	if runtime.GOOS != "darwin" {
		t.Skip("requires the native macOS SDK and Apple linker")
	}
	t.Setenv("MACOSX_DEPLOYMENT_TARGET", "13.0")
	const source = `package main
import (
    "fmt"
    "reflect"
    "runtime"
    "strings"
)
//go:noinline
func first() int { return 7 }
//go:noinline
func second() int { return 7 }
func main() {
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
			if err != nil || string(out) != "14\n" {
				t.Fatalf("run: %v\n%s", err, out)
			}
			data, _ := openNativeDWARF(t, conf.OutFile)
			if findDWARFNode(readDWARFTree(t, data), dwarf.TagCompileUnit, "main") == nil {
				t.Fatal("main DWARF compile unit was lost")
			}
		})
	}
}
