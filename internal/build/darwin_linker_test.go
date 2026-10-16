package build

import (
	"fmt"
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
		{"LLD 23.999999999999999999999999.3", false},
		{"LLD 23.1.999999999999999999999999", false},
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
	prefix := filepath.Join(t.TempDir(), "homebrew with spaces")
	linker := filepath.Join(prefix, "opt", "lld@23", "bin", "ld64.lld")
	if err := os.MkdirAll(filepath.Dir(linker), 0o755); err != nil {
		t.Fatal(err)
	}
	writeVersion := func(version string) {
		t.Helper()
		if err := os.WriteFile(linker, []byte("#!/bin/sh\nprintf '%s\\n' '"+version+"'\n"), 0o755); err != nil {
			t.Fatal(err)
		}
	}
	commands := commandEnv{environ: []string{"HOMEBREW_PREFIX=" + prefix}}
	writeVersion("Homebrew LLD 23.1.3")
	export := crosscompile.Export{CC: "/esp/bin/clang++", LDFLAGS: []string{"-fuse-ld=lld", "-flto=full"}}
	if err := configureDarwinLLD(commands, &export); err != nil {
		t.Fatal(err)
	}
	if export.CC != "/esp/bin/clang++" || export.LinkerIdentity != "Homebrew LLD 23.1.3" ||
		!slices.Equal(export.LDFLAGS, []string{"-fuse-ld=" + linker, "-flto=full"}) {
		t.Fatalf("unexpected linker configuration: %+v", export)
	}
	writeVersion("LLD 23.1.2")
	if _, _, err := resolveDarwinLLD(commands, &crosscompile.Export{}); err == nil || !strings.Contains(err.Error(), "brew upgrade lld@23") {
		t.Fatalf("old linker: %v", err)
	}
	if err := os.Remove(linker); err != nil {
		t.Fatal(err)
	}
	if err := configureDarwinLLD(commands, &crosscompile.Export{}); err == nil || !strings.Contains(err.Error(), "no -fuse-ld=lld default") {
		t.Fatalf("missing default linker flag must fail before probing: %v", err)
	}
	if _, _, err := resolveDarwinLLD(commands, &crosscompile.Export{}); err == nil || !strings.Contains(err.Error(), "brew install lld@23") {
		t.Fatalf("missing linker: %v", err)
	}
}

func TestDarwinLLDProbeOutput(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("executable fixtures use /bin/sh")
	}
	t.Setenv("CCFLAGS", "")
	t.Setenv("LDFLAGS", "")
	linker := filepath.Join(t.TempDir(), "ld64.lld")
	for _, tt := range []struct {
		name, stdout, stderr, wantError string
		exitCode                        int
	}{
		{name: "warning", stdout: "LLD 23.1.3", stderr: "warning: first diagnostic"},
		{name: "different warning", stdout: "LLD 23.1.3", stderr: "warning: changed diagnostic"},
		{name: "version only on stderr", stdout: "unknown linker", stderr: "LLD 23.1.3", wantError: "want LLD 23.x"},
		{name: "failed probe", stdout: "partial output", stderr: "cannot load linker library", exitCode: 1, wantError: "partial output\ncannot load linker library"},
	} {
		t.Run(tt.name, func(t *testing.T) {
			script := fmt.Sprintf("#!/bin/sh\nprintf '%%s\\n' '%s'\nprintf '%%s\\n' '%s' >&2\nexit %d\n", tt.stdout, tt.stderr, tt.exitCode)
			if err := os.WriteFile(linker, []byte(script), 0o755); err != nil {
				t.Fatal(err)
			}
			export := crosscompile.Export{LDFLAGS: []string{"-fuse-ld=lld", "--ld-path=" + linker}}
			err := configureDarwinLLD(commandEnv{}, &export)
			if tt.wantError != "" {
				if err == nil || !strings.Contains(err.Error(), tt.wantError) {
					t.Fatalf("probe error = %v, want %q", err, tt.wantError)
				}
				return
			}
			if err != nil {
				t.Fatal(err)
			}
			if export.LinkerIdentity != tt.stdout {
				t.Fatalf("linker identity = %q, want stdout %q", export.LinkerIdentity, tt.stdout)
			}
		})
	}
}

func TestDarwinLLDExplicitPath(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("executable fixtures use /bin/sh")
	}
	root := t.TempDir()
	custom := filepath.Join(root, "custom linker")
	writeLinker := func(path, version string) {
		t.Helper()
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte("#!/bin/sh\nprintf '%s\\n' '"+version+"'\n"), 0o755); err != nil {
			t.Fatal(err)
		}
	}
	writeLinker(custom, "LLD 23.1.4")
	commands := commandEnv{dir: root, environ: []string{"HOMEBREW_PREFIX=" + root}}
	for _, installed := range []bool{false, true} {
		if installed {
			writeLinker(filepath.Join(root, "opt/lld@23/bin/ld64.lld"), "LLD 22.1.8")
		}
		for _, source := range []string{"CCFLAGS", "LDFLAGS", "config"} {
			t.Run(fmt.Sprintf("installed=%v/%s", installed, source), func(t *testing.T) {
				t.Setenv("CCFLAGS", "")
				t.Setenv("LDFLAGS", "")
				export := crosscompile.Export{LDFLAGS: []string{"-fuse-ld=lld"}}
				if source == "config" {
					export.LDFLAGS = append(export.LDFLAGS, "--ld-path="+custom)
				} else {
					t.Setenv(source, "--ld-path="+custom)
				}
				if err := configureDarwinLLD(commands, &export); err != nil {
					t.Fatal(err)
				}
				if export.LinkerIdentity != "LLD 23.1.4" || export.LDFLAGS[0] != "-fuse-ld="+custom {
					t.Fatalf("wrong linker: %+v", export)
				}
			})
		}
	}
	// A custom linker also works without any Homebrew environment setup.
	withoutBrew := crosscompile.Export{LDFLAGS: []string{"-fuse-ld=lld", "--ld-path=" + custom}}
	if err := configureDarwinLLD(commandEnv{dir: root}, &withoutBrew); err != nil {
		t.Fatal(err)
	}
	// Config flags follow environment flags, and the last --ld-path wins.
	t.Setenv("LDFLAGS", "--ld-path=/missing")
	export := crosscompile.Export{LDFLAGS: []string{"-fuse-ld=lld", "--ld-path=/missing", "--ld-path=./custom linker"}}
	if err := configureDarwinLLD(commands, &export); err != nil {
		t.Fatal(err)
	}
	// Bare names must use the driver's search, including -B, not our PATH.
	driver := filepath.Join(root, "clang++")
	lookup := "#!/bin/sh\ncase \"$*\" in *-B/custom*--print-prog-name=ld64.lld) printf '%s\\n' '" + custom + "';; *) exit 1;; esac\n"
	if err := os.WriteFile(driver, []byte(lookup), 0o755); err != nil {
		t.Fatal(err)
	}
	bare := crosscompile.Export{CC: driver, LDFLAGS: []string{"-fuse-ld=lld", "-B/custom", "--ld-path=ld64.lld"}}
	if err := configureDarwinLLD(commands, &bare); err != nil {
		t.Fatal(err)
	}
	if bare.LDFLAGS[0] != "-fuse-ld="+custom || bare.LinkerIdentity != "LLD 23.1.4" {
		t.Fatalf("wrong driver-selected linker: %+v", bare)
	}
	failedLookup := crosscompile.Export{CC: driver, LDFLAGS: []string{"-fuse-ld=lld", "--ld-path=missing"}}
	if err := configureDarwinLLD(commands, &failedLookup); err == nil || !strings.Contains(err.Error(), "resolve linker") {
		t.Fatalf("driver lookup failure: %v", err)
	}

	writeLinker(custom, "LLD 23.1.5")
	updated := crosscompile.Export{LDFLAGS: []string{"-fuse-ld=lld", "--ld-path=" + custom}}
	if err := configureDarwinLLD(commands, &updated); err != nil {
		t.Fatal(err)
	}
	if updated.LinkerIdentity == export.LinkerIdentity {
		t.Fatal("linker upgrade did not change cache identity")
	}
	for _, path := range []string{"", "/missing", filepath.Join(root, "opt/lld@23/bin/ld64.lld")} {
		export := crosscompile.Export{LDFLAGS: []string{"-fuse-ld=lld", "--ld-path=" + path}}
		if err := configureDarwinLLD(commands, &export); err == nil {
			t.Fatalf("accepted invalid explicit linker %q", path)
		}
	}
}

func TestDarwinLLDRejectsInvalidBuildOverride(t *testing.T) {
	if runtime.GOOS != "darwin" || runtime.GOARCH != "arm64" {
		t.Skip("native macOS arm64 linker selection")
	}
	missing := filepath.Join(t.TempDir(), "missing-ld64.lld")
	t.Setenv("CCFLAGS", "")
	t.Setenv("LDFLAGS", "--ld-path="+missing)
	if _, err := Do([]string{"../../cl/_testgo/print"}, &Config{Mode: ModeBuild}); err == nil || !strings.Contains(err.Error(), "probe LLD") || !strings.Contains(err.Error(), missing) {
		t.Fatalf("build did not reject the invalid linker override: %v", err)
	}
}
