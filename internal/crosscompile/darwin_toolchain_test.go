package crosscompile

import (
	"os"
	"path/filepath"
	"reflect"
	"slices"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/lto"
	"github.com/xgo-dev/llgo/internal/optlevel"
)

func TestDarwinToolchain(t *testing.T) {
	sdk := t.TempDir()
	if err := os.WriteFile(filepath.Join(sdk, "SDKSettings.json"), []byte(`{"Version":"27.0"}`), 0600); err != nil {
		t.Fatal(err)
	}
	for _, tt := range []struct {
		name    string
		input   NativeToolchainInput
		linker  LinkerFlavor
		version string
		wantErr string
	}{
		{name: "Apple default", linker: LinkerFlavorApple, version: "27.0"},
		{name: "deployment override", input: NativeToolchainInput{Environ: []string{"MACOSX_DEPLOYMENT_TARGET=13.0"}}, linker: LinkerFlavorApple, version: "13.0"},
		{name: "LLD", input: NativeToolchainInput{ExternalFlags: []string{"-fuse-ld=lld", "-Wl,-rpath,/tmp"}}, linker: LinkerFlavorMachO, version: "27.0"},
		{name: "absolute LLD", input: NativeToolchainInput{ExternalFlags: []string{"-fuse-ld=/llvm/bin/ld64.lld"}}, linker: LinkerFlavorMachO, version: "27.0"},
		{name: "environment LLD", input: NativeToolchainInput{Environ: []string{"LDFLAGS=-fuse-ld=lld"}}, linker: LinkerFlavorMachO, version: "27.0"},
		{name: "driver LLD", input: NativeToolchainInput{CC: []string{"clang", "-fuse-ld=lld"}}, linker: LinkerFlavorMachO, version: "27.0"},
		{name: "CXX precedence", input: NativeToolchainInput{CC: []string{"clang", "-fuse-ld=lld"}, CXX: []string{"clang++", "-fuse-ld=/usr/bin/ld"}}, linker: LinkerFlavorApple, version: "27.0"},
		{name: "extld precedence", input: NativeToolchainInput{CXX: []string{"clang++", "-fuse-ld=lld"}, ExternalLinker: []string{"clang++", "-fuse-ld=/usr/bin/ld"}}, linker: LinkerFlavorApple, version: "27.0"},
		{name: "flags precedence", input: NativeToolchainInput{Environ: []string{"LDFLAGS=-fuse-ld=lld"}, ExternalFlags: []string{"-fuse-ld=/usr/bin/ld"}}, linker: LinkerFlavorApple, version: "27.0"},
		{name: "ld path", input: NativeToolchainInput{ExternalFlags: []string{"--ld-path=/llvm/bin/ld64.lld", "-fuse-ld=/usr/bin/ld"}}, linker: LinkerFlavorMachO, version: "27.0"},
		{name: "plugin", input: NativeToolchainInput{RequireLLD: true}, linker: LinkerFlavorMachO, version: "27.0"},
		{name: "plugin with Apple ld", input: NativeToolchainInput{RequireLLD: true, ExternalFlags: []string{"-fuse-ld=/usr/bin/ld"}}, wantErr: "pass plugins require ld64.lld"},
		{name: "bad version", input: NativeToolchainInput{Environ: []string{"MACOSX_DEPLOYMENT_TARGET=bad"}}, wantErr: "invalid macOS deployment target"},
		{name: "pre-arm64 macOS", input: NativeToolchainInput{Environ: []string{"MACOSX_DEPLOYMENT_TARGET=10.15"}}, wantErr: "requires macOS 11 or later"},
		{name: "unknown linker", input: NativeToolchainInput{ExternalFlags: []string{"-fuse-ld=custom"}}, wantErr: "unsupported Darwin linker"},
	} {
		t.Run(tt.name, func(t *testing.T) {
			input := tt.input
			input.Environ = append([]string{"MACOSX_DEPLOYMENT_TARGET=27.0"}, input.Environ...)
			input.Environ = append(slices.Clone(input.Environ), "SDKROOT="+sdk)
			export := Export{CC: "clang++", Toolchain: nativeToolchain("darwin")}
			resolvedSDK, err := configureDarwinToolchain(&export, "arm64-apple-macosx", input)
			if tt.wantErr != "" {
				if err == nil || !strings.Contains(err.Error(), tt.wantErr) {
					t.Fatalf("error = %v, want %q", err, tt.wantErr)
				}
				return
			}
			if err != nil {
				t.Fatal(err)
			}
			if resolvedSDK != sdk {
				t.Fatalf("SDK = %q, want %q", resolvedSDK, sdk)
			}
			if export.Toolchain.Linker != tt.linker || export.LLVMTarget != "arm64-apple-macosx"+tt.version || export.Toolchain.TargetTriple != export.LLVMTarget || export.Toolchain.SDKVersion != "27.0" {
				t.Fatalf("unexpected Darwin profile: %+v", export)
			}
			if len(input.CXX) == 0 && (export.CXX != export.CC || !slices.Equal(export.CXXArgs, append(slices.Clone(export.CCArgs), "--driver-mode=g++"))) {
				t.Fatalf("default C++ driver = %q %q", export.CXX, export.CXXArgs)
			}
			for _, pair := range []struct {
				input, got []string
				command    string
			}{
				{input.CC, export.CCArgs, export.CC},
				{input.CXX, export.CXXArgs, export.CXX},
				{input.ExternalLinker, export.LinkerArgs, export.Linker},
			} {
				if len(pair.input) != 0 && (pair.command != pair.input[0] || !reflect.DeepEqual(pair.got, pair.input[1:])) {
					t.Fatalf("command %q %q, want %q", pair.command, pair.got, pair.input)
				}
			}
			if !slices.Equal(export.LDFLAGS[len(export.LDFLAGS)-len(input.ExternalFlags):], input.ExternalFlags) {
				t.Fatalf("external flags lost: %q", export.LDFLAGS)
			}
		})
	}
}

func TestDarwinLinkerFlags(t *testing.T) {
	for _, mode := range []lto.Mode{lto.Off, lto.Thin, lto.Full} {
		for _, level := range []optlevel.Level{optlevel.O0, optlevel.O2, optlevel.O3, optlevel.Os, optlevel.Oz} {
			flags := nativeLinkerFlags(nativeToolchain("darwin"), level, mode)
			if !slices.Contains(flags, "-fuse-ld=/usr/bin/ld") || !slices.Contains(flags, "-Wl,-no_deduplicate") {
				t.Fatalf("Apple linker flags = %q", flags)
			}
			if mode.Enabled() && (!slices.Contains(flags, mode.ClangFlag()) || !slices.Contains(flags, "-Wl,-mllvm,-O"+ltoOptimizationLevel(level))) {
				t.Fatalf("Apple LTO flags = %q", flags)
			}
			for _, flag := range flags {
				if strings.Contains(flag, "--lto-") || strings.Contains(flag, "--icf=") || strings.Contains(flag, "--error-limit=") {
					t.Fatalf("LLD-only flag for Apple ld: %s", flag)
				}
			}
		}
	}
}

func TestMacOSVersionValidation(t *testing.T) {
	for _, version := range []string{"11", "13.0", "27.0.1"} {
		if !validMacOSVersion(version) {
			t.Errorf("rejected %q", version)
		}
	}
	for _, version := range []string{"", "9.0", "27.", "27.0.0.1", "27beta", "27.-1", "65536"} {
		if validMacOSVersion(version) {
			t.Errorf("accepted %q", version)
		}
	}
}

func TestDarwinSDKFailures(t *testing.T) {
	for _, tt := range []struct{ name, settings, want string }{
		{"missing SDK", "", "resolve macOS SDK"},
		{"missing settings", "", "read macOS SDK settings"},
		{"malformed settings", "{", "read macOS SDK settings"},
		{"missing version", "{}", "invalid macOS SDK version"},
		{"invalid version", `{"Version":"27beta"}`, "invalid macOS SDK version"},
	} {
		t.Run(tt.name, func(t *testing.T) {
			sdk := t.TempDir()
			if tt.name == "missing SDK" {
				sdk = filepath.Join(sdk, "missing")
			}
			if tt.settings != "" {
				if err := os.WriteFile(filepath.Join(sdk, "SDKSettings.json"), []byte(tt.settings), 0600); err != nil {
					t.Fatal(err)
				}
			}
			_, err := configureDarwinToolchain(&Export{}, "arm64-apple-macosx", NativeToolchainInput{Environ: []string{"SDKROOT=" + sdk}})
			if err == nil || !strings.Contains(err.Error(), tt.want) {
				t.Fatalf("error = %v, want %q", err, tt.want)
			}
		})
	}
}

func TestDarwinSettingsIgnoredForCrossTargets(t *testing.T) {
	t.Setenv("SDKROOT", filepath.Join(t.TempDir(), "missing-sdk"))
	t.Setenv("MACOSX_DEPLOYMENT_TARGET", "invalid")
	t.Setenv("CC", "'malformed-compiler")
	input := NativeToolchainInput{CC: []string{"missing-compiler"}, Environ: os.Environ()}
	for _, tt := range []struct{ goos, goarch, target string }{
		{"js", "wasm", ""},
		{"wasip1", "wasm", ""},
		{"", "", "rp2040"},
		{"", "", "esp32"},
		{"", "", "esp32c3"},
		{"", "", "arduino"},
	} {
		t.Run(tt.goos+tt.target, func(t *testing.T) {
			export, err := UseWithGOARMAndToolchain(tt.goos, tt.goarch, "", tt.target, false, optlevel.O2, lto.Off, false, input)
			if err != nil {
				t.Fatal(err)
			}
			if export.Toolchain.Linker == LinkerFlavorApple || export.CC == "missing-compiler" || slices.Contains(export.LDFLAGS, "-fuse-ld=/usr/bin/ld") {
				t.Fatalf("cross target inherited Darwin toolchain: %+v", export)
			}
		})
	}
}
