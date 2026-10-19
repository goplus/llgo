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
	"bytes"
	"debug/elf"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/lto"
	"github.com/xgo-dev/llgo/internal/optlevel"
	"github.com/xgo-dev/llgo/internal/packages"
	"github.com/xgo-dev/llgo/internal/pclnpost"
	llssa "github.com/xgo-dev/llgo/ssa"
)

func TestCompactFuncInfoEmission(t *testing.T) {
	t.Setenv("LLGO_PCLNPOST", "1")
	prog := llssa.NewProgram(&llssa.Target{GOOS: "linux", GOARCH: "amd64"})
	defer prog.Dispose()
	prog.EnableFuncInfoSites(true)
	ctx := &context{prog: prog, buildConf: &Config{BuildMode: BuildModeExe, Goos: "linux", Goarch: "amd64", PCLNMode: PCLNEmbedded}}
	entry := genMainModule(ctx, llssa.PkgRuntime, &packages.Package{PkgPath: "example.com/main", ExportFile: "main.a"}, &genConfig{funcInfo: []funcInfoRecord{{symbol: "main.live", name: "main.live", file: "main.go", line: 10}}})
	if ctx.pclnEmbedded != nil {
		t.Fatal("single-link metadata emission must not schedule an embedded relink")
	}
	ir := entry.LPkg.String()
	for _, want := range []string{
		"externally_initialized global ptr", "externally_initialized global i64",
		"@__llgo_funcinfo_sites_end", `section ".llgo_funcinfo_payload"`,
		"@__llgo_funcinfo_compact_header", "@__llgo_funcinfo_compact_marker",
	} {
		if !strings.Contains(ir, want) {
			t.Fatalf("missing %q in compact metadata IR:\n%s", want, ir)
		}
	}
	if strings.Contains(ir, `ptr @"main.live"`) {
		t.Fatal("metadata must not retain function bodies")
	}
}

func TestCompactFuncInfoNativeIntegration(t *testing.T) {
	if runtime.GOOS != "linux" || (runtime.GOARCH != "amd64" && runtime.GOARCH != "arm64") {
		t.Skip("ELF64 embedded metadata")
	}
	setPCLNIntegrationEnv(t)
	// Build once per LTO mode. The unrewritten image must work too; this is
	// the fallback used when post-link validation or publication fails.
	t.Setenv("LLGO_PCLNPOST", "0")
	source := writePCLNIntegrationSource(t, pclntabModesFixture+`
//go:noinline
func metadataDiscardedSentinel() { panic("unreachable metadata fixture") }
`)
	for _, tc := range []struct {
		name string
		mode lto.Mode
	}{{"off", lto.Off}, {"full", lto.Full}, {"thin", lto.Thin}} {
		t.Run(tc.name, func(t *testing.T) {
			bin := filepath.Join(t.TempDir(), "compact-metadata")
			conf := &Config{Mode: ModeBuild, BuildMode: BuildModeExe, OutFile: bin, OptLevel: optlevel.O2, LTO: tc.mode, PCLNMode: PCLNEmbedded, PCLNModeSet: true, LinkOptions: LinkOptions{DWARF: DWARFOmit}}
			if _, err := Do([]string{source}, conf); err != nil {
				t.Fatal(err)
			}
			carrier := func() []byte {
				f, err := elf.Open(bin)
				if err != nil {
					t.Fatal(err)
				}
				defer f.Close()
				s := f.Section("llgo_funcinfo_entry")
				if s == nil {
					t.Fatal("missing metadata carrier")
				}
				b, err := s.Data()
				if err != nil {
					t.Fatal(err)
				}
				return b
			}
			if !bytes.Contains(carrier(), []byte("metadataDiscardedSentinel")) {
				t.Fatal("fixture did not retain dead metadata before rewrite")
			}
			want := map[string]string{"once": "FULL\n", "apis": "caller=FULL frames=FULL func=FULL\n", "closure": "target=FULL funcval=FULL same-entry="}
			for arg, expected := range want {
				if got := runPCLNIntegrationBinary(t, bin, arg); !strings.HasPrefix(got, expected) {
					t.Fatalf("fallback %s: %q, want %q", arg, got, expected)
				}
			}
			before, err := os.Stat(bin)
			if err != nil {
				t.Fatal(err)
			}
			stats, err := pclnpost.Rewrite(bin)
			if err != nil {
				t.Fatal(err)
			}
			if stats.MetadataRecordsAfter == 0 || stats.MetadataRecordsAfter >= stats.MetadataRecordsBefore {
				t.Fatalf("metadata did not shrink: %+v", stats)
			}
			after, err := os.Stat(bin)
			if err != nil {
				t.Fatal(err)
			}
			if after.Size() >= before.Size() {
				t.Fatalf("file did not shrink: %d -> %d", before.Size(), after.Size())
			}
			if bytes.Contains(carrier(), []byte("metadataDiscardedSentinel")) {
				t.Fatal("dead function metadata survived rewrite")
			}
			for arg, expected := range want {
				if got := runPCLNIntegrationBinary(t, bin, arg); !strings.HasPrefix(got, expected) {
					t.Fatalf("compacted %s: %q, want %q", arg, got, expected)
				}
			}
			if out := runPCLNIntegrationBinaryFailure(t, bin, "panic"); !strings.Contains(out, "pcln panic") {
				t.Fatalf("panic lost its value: %s", out)
			}
			raw, err := os.ReadFile(bin)
			if err != nil {
				t.Fatal(err)
			}
			if _, err := pclnpost.Rewrite(bin); err == nil {
				t.Fatal("rewrote an already finalized binary")
			}
			unchanged, err := os.ReadFile(bin)
			if err != nil {
				t.Fatal(err)
			}
			if !bytes.Equal(raw, unchanged) {
				t.Fatal("failed rewrite changed the executable")
			}
			t.Logf("metadata records %d -> %d, file %d -> %d", stats.MetadataRecordsBefore, stats.MetadataRecordsAfter, before.Size(), after.Size())
		})
	}
}
