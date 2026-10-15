package build

import (
	"os"
	"path/filepath"
	"runtime"
	"slices"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/crosscompile"
)

func TestDarwinLLDVersion(t *testing.T) {
	for _, tt := range []struct {
		version string
		want    bool
	}{
		{"LLD 23.1.3 (https://github.com/llvm/llvm-project abc)", true},
		{"Homebrew LLD 23.1.4", true},
		{"LLD 23.2.0", true},
		{"LLD 22.1.8", false},
		{"LLD 23.1.2", false},
		{"LLD 23.0.0", false},
		{"LLD 23.1.3git", false},
		{"LLD 24.1.0", false},
		{"clang version 23.1.3", false},
	} {
		if got := compatibleDarwinLLD(tt.version); got != tt.want {
			t.Errorf("compatibleDarwinLLD(%q) = %v, want %v", tt.version, got, tt.want)
		}
	}
}

func TestDarwinLLDScope(t *testing.T) {
	for _, tt := range []struct {
		name, hostOS, hostArch, goos, goarch, target string
		mode                                         Mode
		buildMode                                    BuildMode
		want                                         bool
	}{
		{"native", "darwin", "arm64", "darwin", "arm64", "", ModeBuild, BuildModeExe, true},
		{"shared", "darwin", "arm64", "darwin", "arm64", "", ModeBuild, BuildModeCShared, true},
		{"run", "darwin", "arm64", "darwin", "arm64", "", ModeRun, BuildModeExe, true},
		{"test", "darwin", "arm64", "darwin", "arm64", "", ModeTest, BuildModeExe, true},
		{"archive", "darwin", "arm64", "darwin", "arm64", "", ModeBuild, BuildModeCArchive, false},
		{"IR", "darwin", "arm64", "darwin", "arm64", "", ModeGen, BuildModeExe, false},
		{"Intel", "darwin", "amd64", "darwin", "amd64", "", ModeBuild, BuildModeExe, false},
		{"cross", "darwin", "arm64", "darwin", "amd64", "", ModeBuild, BuildModeExe, false},
		{"embedded", "darwin", "arm64", "darwin", "arm64", "esp32", ModeBuild, BuildModeExe, false},
		{"wasm", "darwin", "arm64", "js", "wasm", "", ModeBuild, BuildModeExe, false},
		{"linux", "linux", "arm64", "linux", "arm64", "", ModeBuild, BuildModeExe, false},
	} {
		t.Run(tt.name, func(t *testing.T) {
			conf := &Config{Goos: tt.goos, Goarch: tt.goarch, Target: tt.target, Mode: tt.mode, BuildMode: tt.buildMode}
			if got := needsExternalDarwinLLD(tt.hostOS, tt.hostArch, conf); got != tt.want {
				t.Fatalf("needsExternalDarwinLLD = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestResolveDarwinLLD(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("executable fixtures use /bin/sh")
	}
	root := t.TempDir()
	writeLinker := func(dir, version string) string {
		t.Helper()
		dir = filepath.Join(root, dir)
		if err := os.MkdirAll(dir, 0o755); err != nil {
			t.Fatal(err)
		}
		path := filepath.Join(dir, "ld64.lld")
		if err := os.WriteFile(path, []byte("#!/bin/sh\nprintf '%s\\n' '"+version+"'\n"), 0o755); err != nil {
			t.Fatal(err)
		}
		return path
	}
	old := writeLinker("old", "LLD 22.1.8")
	good := writeLinker("new linker, with spaces", "Homebrew LLD 23.1.3")
	commands := commandEnv{dir: root, environ: []string{"PATH=" + filepath.Dir(old) + string(os.PathListSeparator) + filepath.Dir(good)}}
	path, version, err := resolveDarwinLLD(commands)
	if err != nil || path != good || version != "Homebrew LLD 23.1.3" {
		t.Fatalf("resolveDarwinLLD = %q, %q, %v", path, version, err)
	}
	// The selected path overrides the compiler's sibling linker without
	// changing the compiler or losing LTO flags and explicit --ld-path options.
	export := crosscompile.Export{CC: "/esp/bin/clang++", LDFLAGS: []string{"-target", "arm64-apple-macos", "-fuse-ld=lld", "-flto=full", "--ld-path=/explicit/linker"}}
	if err := configureDarwinLLD(commands, &export); err != nil {
		t.Fatal(err)
	}
	if export.CC != "/esp/bin/clang++" || export.Linker != "" || export.LinkerIdentity != version ||
		!slices.Equal(export.LDFLAGS, []string{"-target", "arm64-apple-macos", "-fuse-ld=" + good, "-flto=full", "--ld-path=/explicit/linker"}) {
		t.Fatalf("unexpected linker configuration: %+v", export)
	}
	// An explicit wrong or missing linker must not silently fall back to PATH.
	for _, override := range []string{old, filepath.Join(root, "missing")} {
		explicit := commands
		explicit.environ = append(slices.Clone(commands.environ), "LLGO_LLD="+override)
		if _, _, err := resolveDarwinLLD(explicit); err == nil || !strings.Contains(err.Error(), override) {
			t.Fatalf("override %q: %v", override, err)
		}
	}
	commands.environ = []string{"LLGO_LLD=" + filepath.Join("new linker, with spaces", "ld64.lld")}
	if path, _, err := resolveDarwinLLD(commands); err != nil || path != good {
		t.Fatalf("relative explicit path = %q, %v", path, err)
	}
}
