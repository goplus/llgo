// Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
// Licensed under the Apache License, Version 2.0.

package build

import (
	"bytes"
	"debug/dwarf"
	"debug/macho"
	"debug/pe"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/crosscompile"
	"github.com/xgo-dev/llgo/internal/lto"
)

func TestNativeDWARFCompressionPolicy(t *testing.T) {
	for _, name := range []string{"default", "disabled", "omit", "archive", "named-target", "ELF"} {
		t.Run(name, func(t *testing.T) {
			conf := Config{Goos: "darwin", LinkOptions: LinkOptions{DWARF: DWARFPreserve, DWARFCompression: DWARFCompressionEnabled}}
			target := configurableDebugInfo()
			target.Toolchain.ObjectFormat = crosscompile.ObjectFormatMachO
			switch name {
			case "default":
				conf.LinkOptions.DWARFCompression = DWARFCompressionDefault
			case "disabled":
				conf.LinkOptions.DWARFCompression = DWARFCompressionDisabled
			case "omit":
				conf.LinkOptions.DWARF = DWARFOmit
			case "archive":
				conf.BuildMode = BuildModeCArchive
			case "named-target":
				conf.Target = "custom"
			case "ELF":
				target.Toolchain.ObjectFormat = crosscompile.ObjectFormatELF
			}
			// A skipped policy must not open the missing artifact or run dsymutil.
			if err := finalizeNativeDWARFCompression(&context{buildConf: &conf, crossCompile: target}, filepath.Join(t.TempDir(), "missing"), false); err != nil {
				t.Fatal(err)
			}
		})
	}
}

func TestNativeDWARFCompressionRejectsWithoutReplacing(t *testing.T) {
	dir := t.TempDir()
	path := filepath.Join(dir, "invalid.exe")
	original := []byte("MZ invalid input")
	if err := os.WriteFile(path, original, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := compressNativeArtifact(path); err == nil {
		t.Fatal("invalid input accepted")
	}
	got, err := os.ReadFile(path)
	if err != nil || !bytes.Equal(got, original) {
		t.Fatalf("failed compression replaced original: %q, %v", got, err)
	}
	files, err := os.ReadDir(dir)
	if err != nil || len(files) != 1 {
		t.Fatalf("failed compression leaked temporary files: %v, %v", files, err)
	}
}

func TestGeneratedDSYMLifecycle(t *testing.T) {
	for _, generated := range []bool{false, true} {
		output := filepath.Join(t.TempDir(), "program")
		marker := dsymMarkerPath(nativeDSYMPath(output))
		if err := os.MkdirAll(filepath.Dir(marker), 0o755); err != nil {
			t.Fatal(err)
		}
		contents := "manual bundle"
		if generated {
			contents = generatedDSYMMarker
		}
		if err := os.WriteFile(marker, []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
		conf := Config{Goos: "darwin", LinkOptions: LinkOptions{DWARFCompression: DWARFCompressionDisabled}}
		target := configurableDebugInfo()
		target.Toolchain.ObjectFormat = crosscompile.ObjectFormatMachO
		if err := finalizeNativeDWARFCompression(&context{buildConf: &conf, crossCompile: target}, output, false); err != nil {
			t.Fatal(err)
		}
		_, err := os.Stat(nativeDSYMPath(output))
		if os.IsNotExist(err) != generated {
			t.Fatalf("dSYM removal did not respect ownership (generated=%v): %v", generated, err)
		}
	}
}

func TestDarwinDSYMFailurePreservesPrevious(t *testing.T) {
	if runtime.GOOS != "darwin" {
		t.Skip("requires dsymutil")
	}
	root := t.TempDir()
	output := filepath.Join(root, "missing-executable")
	previous := filepath.Join(nativeDSYMPath(output), "previous")
	if err := os.MkdirAll(filepath.Dir(previous), 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(previous, []byte("older bundle"), 0o600); err != nil {
		t.Fatal(err)
	}
	ctx := &context{commands: commandEnv{dir: root, environ: os.Environ()}}
	if err := compressDarwinDSYM(ctx, output, false); err == nil {
		t.Fatal("missing debug map was accepted")
	}
	got, err := os.ReadFile(previous)
	if err != nil || string(got) != "older bundle" {
		t.Fatalf("failed generation damaged older bundle: %q, %v", got, err)
	}
	files, err := os.ReadDir(root)
	if err != nil || len(files) != 1 {
		t.Fatalf("failed generation leaked staging files: %v, %v", files, err)
	}
}

func TestDarwinNativeDWARFCompression(t *testing.T) {
	if runtime.GOOS != "darwin" {
		t.Skip("native dSYM integration")
	}
	for _, mode := range []lto.Mode{lto.Off, lto.Full, lto.Thin} {
		t.Run(mode.String(), func(t *testing.T) {
			bin := filepath.Join(t.TempDir(), "compressed-dwarf")
			conf := &Config{Mode: ModeBuild, OutFile: bin, LTO: mode, LinkOptions: LinkOptions{DWARF: DWARFPreserve, DWARFCompression: DWARFCompressionEnabled}}
			if _, err := Do([]string{"./testdata/ldflagsstrip"}, conf); err != nil {
				t.Fatal(err)
			}
			if out := runBinary(t, bin); !strings.Contains(out, "main.caller main.go true") {
				t.Fatalf("runtime PCLN output: %s", out)
			}
			verifyPCLNIntegrationSignature(t, bin)
			path := filepath.Join(nativeDSYMPath(bin), "Contents", "Resources", "DWARF", filepath.Base(bin))
			f, err := macho.Open(path)
			if err != nil {
				t.Fatal(err)
			}
			defer f.Close()
			if f.Section("__zdebug_info") == nil {
				t.Fatal("generated dSYM lacks compressed debug info")
			}
			data, err := f.DWARF()
			if err != nil {
				t.Fatal(err)
			}
			if findDWARFNode(readDWARFTree(t, data), dwarf.TagSubprogram, "main.caller") == nil {
				t.Fatal("compressed dSYM lost main.caller")
			}
			plain := filepath.Join(t.TempDir(), "plain.dwarf")
			if out, err := exec.Command("dsymutil", "-f", "-o", plain, bin).CombinedOutput(); err != nil {
				t.Fatalf("dsymutil: %v: %s", err, out)
			}
			a, _ := os.Stat(plain)
			b, _ := os.Stat(path)
			if a == nil || b == nil || b.Size() >= a.Size() {
				t.Fatal("dSYM compression did not reduce file size")
			}
			t.Logf("dSYM: %d -> %d bytes", a.Size(), b.Size())
			// Rebuild also exercises replacing a previously published bundle.
			if mode == lto.Off {
				if _, err := Do([]string{"./testdata/ldflagsstrip"}, conf); err != nil {
					t.Fatal(err)
				}
				if err := validateDSYMDWARF(path); err != nil {
					t.Fatal(err)
				}
				conf.LinkOptions.DWARFCompression = DWARFCompressionDisabled
				if _, err := Do([]string{"./testdata/ldflagsstrip"}, conf); err != nil {
					t.Fatal(err)
				}
				if _, err := os.Stat(nativeDSYMPath(bin)); !os.IsNotExist(err) {
					t.Fatalf("opt-out retained a compressed dSYM that masks the debug map: %v", err)
				}
			}
			f.Close()
			removeOutFmts(&OutFmtDetails{Out: bin, DSYM: nativeDSYMPath(bin)})
			if _, err := os.Stat(nativeDSYMPath(bin)); !os.IsNotExist(err) {
				t.Fatalf("temporary-output cleanup retained dSYM: %v", err)
			}
		})
	}
}

func TestCompressedDSYMOutput(t *testing.T) {
	conf := &Config{Mode: ModeBuild, Goos: "darwin", DebugArtifactMode: DebugArtifactEmbedded, OutFile: filepath.Join(t.TempDir(), "program"), LinkOptions: LinkOptions{DWARF: DWARFPreserve, DWARFCompression: DWARFCompressionEnabled}}
	target := configurableDebugInfo()
	target.Toolchain.ObjectFormat = crosscompile.ObjectFormatMachO
	out, err := buildOutFmts("program", conf, false, &target)
	if err != nil {
		t.Fatal(err)
	}
	if out.DSYM != nativeDSYMPath(out.Out) {
		t.Fatalf("compressed dSYM is missing from owned outputs: %+v", out)
	}
	if err := os.WriteFile(out.Out, []byte("exe"), 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.MkdirAll(out.DSYM, 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(out.DSYM, "debug"), []byte("dwarf"), 0o644); err != nil {
		t.Fatal(err)
	}
	artifacts, err := CollectArtifacts(conf, out)
	if err != nil || len(artifacts) != 2 || artifacts[1].Format != "dsym" || artifacts[1].Size != 5 {
		t.Fatalf("compressed dSYM was not reported: %v, %v", artifacts, err)
	}
	removeOutFmts(out)
	if _, err := os.Stat(out.DSYM); !os.IsNotExist(err) {
		t.Fatalf("cleanup retained the compressed dSYM: %v", err)
	}
}

func TestCompressedSymbolStripFailurePreservesPrevious(t *testing.T) {
	root := t.TempDir()
	out := &OutFmtDetails{Out: filepath.Join(root, "program"), DSYM: filepath.Join(root, "program.dSYM")}
	if err := os.WriteFile(out.Out, []byte("linked executable"), 0o751); err != nil {
		t.Fatal(err)
	}
	if err := os.Mkdir(out.DSYM, 0o755); err != nil {
		t.Fatal(err)
	}
	previous := filepath.Join(out.DSYM, "previous")
	if err := os.WriteFile(previous, []byte("older bundle"), 0o644); err != nil {
		t.Fatal(err)
	}
	conf := &Config{Goos: "darwin", LinkOptions: LinkOptions{DWARF: DWARFPreserve, DWARFCompression: DWARFCompressionEnabled}}
	ctx := &context{buildConf: conf, crossCompile: configurableDebugInfo()}
	run := func(name string, args ...string) error {
		if name != "dsymutil" {
			t.Fatalf("reached %s after generating a dSYM without DWARF", name)
		}
		return os.Mkdir(args[2], 0o755)
	}
	if err := stripNativeSymbolsWith(ctx, out, nil, false, run); err == nil {
		t.Fatal("missing staged DWARF was accepted")
	}
	for path, want := range map[string]string{out.Out: "linked executable", previous: "older bundle"} {
		if data, err := os.ReadFile(path); err != nil || string(data) != want {
			t.Fatalf("failed compression replaced %s: %q, %v", path, data, err)
		}
	}
	if files, err := os.ReadDir(root); err != nil || len(files) != 2 {
		t.Fatalf("failed compression leaked staging files: %v, %v", files, err)
	}
}

func TestDarwinStrippedNativeDWARFCompression(t *testing.T) {
	if runtime.GOOS != "darwin" {
		t.Skip("native stripped dSYM integration")
	}
	bin := filepath.Join(t.TempDir(), "stripped-compressed-dwarf")
	conf := &Config{Mode: ModeBuild, OutFile: bin, LinkOptions: LinkOptions{OmitSymbolTable: true, DWARF: DWARFPreserve, DWARFCompression: DWARFCompressionEnabled}}
	for _, compression := range []DWARFCompressionMode{DWARFCompressionEnabled, DWARFCompressionDisabled} {
		conf.LinkOptions.DWARFCompression = compression
		if _, err := Do([]string{"./testdata/ldflagsstrip"}, conf); err != nil {
			t.Fatal(err)
		}
		if out := runBinary(t, bin); !strings.Contains(out, "main.caller main.go true") {
			t.Fatalf("stripped output lost runtime caller information: %s", out)
		}
		verifyPCLNIntegrationSignature(t, bin)
		if machoHasStabs(t, bin) || pclnIntegrationHasSymbolTable(t, bin) {
			t.Fatal("-s retained the debug map or ordinary symbols")
		}
		path := filepath.Join(nativeDSYMPath(bin), "Contents", "Resources", "DWARF", filepath.Base(bin))
		f, err := macho.Open(path)
		if err != nil {
			t.Fatal(err)
		}
		if (f.Section("__zdebug_info") != nil) != (compression == DWARFCompressionEnabled) {
			t.Fatalf("stripped dSYM compression does not match mode %d", compression)
		}
		data, err := f.DWARF()
		if err != nil {
			t.Fatal(err)
		}
		if findDWARFNode(readDWARFTree(t, data), dwarf.TagSubprogram, "main.caller") == nil {
			t.Fatal("stripped dSYM lost main.caller")
		}
		f.Close()
	}
}

func TestWindowsNativeDWARFCompression(t *testing.T) {
	if runtime.GOOS != "windows" {
		t.Skip("native PE runtime integration")
	}
	for _, mode := range []DWARFCompressionMode{DWARFCompressionDefault, DWARFCompressionEnabled, DWARFCompressionDisabled} {
		bin := filepath.Join(t.TempDir(), "compressed-dwarf.exe")
		conf := &Config{Mode: ModeBuild, OutFile: bin, LinkOptions: LinkOptions{DWARF: DWARFPreserve, DWARFCompression: mode}}
		if _, err := Do([]string{"./testdata/ldflagsstrip"}, conf); err != nil {
			t.Fatal(err)
		}
		if out := runBinary(t, bin); !strings.Contains(out, "main.caller main.go true") {
			t.Fatalf("runtime PCLN output: %s", out)
		}
		f, err := pe.Open(bin)
		if err != nil {
			t.Fatal(err)
		}
		if (f.Section(".zdebug_info") != nil) != (mode == DWARFCompressionEnabled) {
			t.Fatalf("compression did not match explicit mode %d", mode)
		}
		data, err := f.DWARF()
		if err != nil {
			t.Fatal(err)
		}
		if findDWARFNode(readDWARFTree(t, data), dwarf.TagSubprogram, "main.caller") == nil {
			t.Fatal("compressed PE lost main.caller")
		}
		f.Close()
	}
}
