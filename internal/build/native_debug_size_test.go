/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package build

import (
	"debug/dwarf"
	"debug/elf"
	"debug/macho"
	"path/filepath"
	"runtime"
	"strconv"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/crosscompile"
	"github.com/xgo-dev/llgo/internal/lto"
	"github.com/xgo-dev/llgo/internal/optlevel"
)

func TestLinuxDWARFCompressionArgs(t *testing.T) {
	target := crosscompile.Export{
		Toolchain: crosscompile.NativeToolchain{ObjectFormat: crosscompile.ObjectFormatELF},
		DebugInfo: configurableDebugInfo().DebugInfo,
	}
	for _, tt := range []struct {
		name string
		conf Config
		want bool
	}{
		{"default", Config{Goos: "linux", BuildMode: BuildModeExe}, true},
		{"shared", Config{Goos: "linux", BuildMode: BuildModeCShared, LinkOptions: LinkOptions{DWARF: DWARFPreserve}}, true},
		{"disabled", Config{Goos: "linux", LinkOptions: LinkOptions{DisableDWARFCompression: true}}, false},
		{"omit", Config{Goos: "linux", LinkOptions: LinkOptions{DWARF: DWARFOmit}}, false},
		{"archive", Config{Goos: "linux", BuildMode: BuildModeCArchive}, false},
		{"fixed-target", Config{Goos: "linux", Target: "esp32c3", LinkOptions: LinkOptions{DWARF: DWARFPreserve}}, false},
		{"other-platform", Config{Goos: "darwin"}, false},
	} {
		t.Run(tt.name, func(t *testing.T) {
			args := strings.Join(debugInfoLinkerArgs(&tt.conf, &target), " ")
			if got := strings.Contains(args, "--compress-debug-sections=zlib"); got != tt.want {
				t.Fatalf("linker args %q: compression=%v, want %v", args, got, tt.want)
			}
		})
	}
}

func TestLinuxCompressedDWARF(t *testing.T) {
	if runtime.GOOS != "linux" {
		t.Skip("native ELF compression integration")
	}
	for _, disabled := range []bool{false, true} {
		t.Run(strconv.FormatBool(disabled), func(t *testing.T) {
			bin := filepath.Join(t.TempDir(), "compressed-dwarf")
			conf := &Config{Mode: ModeBuild, OutFile: bin, LinkOptions: LinkOptions{DWARF: DWARFPreserve, DisableDWARFCompression: disabled}}
			if _, err := Do([]string{"./testdata/ldflagsstrip"}, conf); err != nil {
				t.Fatal(err)
			}
			if out := runBinary(t, bin); !strings.Contains(out, "main.caller main.go true") {
				t.Fatalf("runtime PCLN output: %s", out)
			}
			f, err := elf.Open(bin)
			if err != nil {
				t.Fatal(err)
			}
			defer f.Close()
			info := f.Section(".debug_info")
			if info == nil || (info.Flags&elf.SHF_COMPRESSED != 0) == disabled {
				t.Fatalf(".debug_info compression does not match disabled=%v", disabled)
			}
			if f.Section(".symtab") == nil {
				t.Fatal("DWARF compression removed ordinary symbols")
			}
			data, err := f.DWARF()
			if err != nil {
				t.Fatal(err)
			}
			if findDWARFNode(readDWARFTree(t, data), dwarf.TagSubprogram, "main.caller") == nil {
				t.Fatal("compressed DWARF lost main.caller")
			}
		})
	}
}

func TestDarwinDWARFSizeSymbols(t *testing.T) {
	if runtime.GOOS != "darwin" {
		t.Skip("native Mach-O export and debug-map integration")
	}
	t.Setenv("LDFLAGS", "")
	t.Setenv(llgoFuncInfo, "1")
	t.Setenv(llgoFuncInfoSites, "1")
	source := dwarfPCLNProbe
	for _, marker := range []string{"CALLER", "FRAMES", "LOG"} {
		source = strings.ReplaceAll(source, marker+"_LINE", strconv.Itoa(dwarfPCLNMarkerLine(source, marker+"_MARK")))
	}
	fixture := writePCLNIntegrationSource(t, source)
	for _, mode := range []lto.Mode{lto.Off, lto.Full, lto.Thin} {
		t.Run(mode.String(), func(t *testing.T) {
			bin := filepath.Join(t.TempDir(), "debug-size")
			conf := &Config{Mode: ModeBuild, OutFile: bin, OptLevel: optlevel.Os, LTO: mode, LinkOptions: LinkOptions{DWARF: DWARFPreserve}}
			if _, err := Do([]string{fixture}, conf); err != nil {
				t.Fatal(err)
			}
			if got := runBinary(t, bin); got != "PCLN_DWARF_OK\n" {
				t.Fatalf("runtime line metadata: %s", got)
			}
			if !machoHasStabs(t, bin) {
				t.Fatal("DWARF size optimization removed the dsymutil debug map")
			}
			f, err := macho.Open(bin)
			if err != nil {
				t.Fatal(err)
			}
			defer f.Close()
			for _, sym := range f.Symtab.Syms {
				if sym.Sect != 0 && sym.Type&0xe0 == 0 && sym.Type&0x11 == 1 {
					t.Fatalf("unexpected public definition %s", sym.Name)
				}
			}
			data, _ := openNativeDWARF(t, bin)
			if findDWARFNode(readDWARFTree(t, data), dwarf.TagSubprogram, "main.main") == nil {
				t.Fatal("dsymutil lost main.main")
			}
			if mode == lto.Full {
				older := filepath.Join(t.TempDir(), "older-debug-size")
				if err := copyFileAtomic(bin, older); err != nil {
					t.Fatal(err)
				}
				if _, err := Do([]string{fixture}, conf); err != nil {
					t.Fatal(err)
				}
				data, _ := openNativeDWARF(t, older)
				if findDWARFNode(readDWARFTree(t, data), dwarf.TagSubprogram, "main.main") == nil {
					t.Fatal("rebuild invalidated the previous LTO debug map")
				}
			}
			verifyPCLNIntegrationSignature(t, bin)
		})
	}
}
