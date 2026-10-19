package build

import (
	"encoding/binary"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"slices"
	"strconv"
	"strings"
	"testing"
	"unicode/utf16"

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
		{"install", "darwin", "arm64", "darwin", "arm64", "", ModeInstall, BuildModeExe, true},
		{"compile test", "darwin", "arm64", "darwin", "arm64", "", ModeCmpTest, BuildModeExe, true},
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
	t.Setenv("CCFLAGS", "")
	t.Setenv("LDFLAGS", "")
	prefix := filepath.Join(t.TempDir(), "homebrew with spaces")
	linker := filepath.Join(prefix, "opt", "lld@23", "bin", "ld64.lld")
	commands := commandEnv{environ: []string{"HOMEBREW_PREFIX=" + prefix}}
	writeTestDarwinLLD(t, linker, "Homebrew LLD 23.1.3")
	export := crosscompile.Export{CC: "/esp/bin/clang++", LDFLAGS: []string{"-fuse-ld=lld", "-flto=full"}}
	if err := configureDarwinLLD(commands, &export); err != nil {
		t.Fatal(err)
	}
	if export.CC != "/esp/bin/clang++" || export.LinkerIdentity != "Homebrew LLD 23.1.3" ||
		!slices.Equal(export.LDFLAGS, []string{"-fuse-ld=" + linker, "-flto=full"}) {
		t.Fatalf("unexpected linker configuration: %+v", export)
	}
	writeTestDarwinLLD(t, linker, "LLD 23.1.2")
	if _, _, err := resolveDarwinLLD(commands, &crosscompile.Export{}); err == nil || !strings.Contains(err.Error(), "brew install --skip-link lld") {
		t.Fatalf("old linker: %v", err)
	}
	if err := os.Remove(linker); err != nil {
		t.Fatal(err)
	}
	if err := configureDarwinLLD(commands, &crosscompile.Export{}); err == nil || !strings.Contains(err.Error(), "no -fuse-ld=lld default") {
		t.Fatalf("missing default linker flag must fail before probing: %v", err)
	}
	if _, _, err := resolveDarwinLLD(commands, &crosscompile.Export{}); err == nil || !strings.Contains(err.Error(), "brew install --skip-link lld") {
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
			writeTestDarwinFile(t, linker, script, 0755)
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

func TestDarwinLLDHomebrewFormulas(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("executable fixtures use /bin/sh")
	}
	t.Setenv("CCFLAGS", "")
	t.Setenv("LDFLAGS", "")
	for _, tt := range []struct {
		name, versioned, unversioned, want string
	}{
		{"current formula", "", "LLD 23.1.3", "lld"},
		{"versioned formula", "LLD 23.1.4", "", "lld@23"},
		{"prefer pinned major", "LLD 23.1.3", "LLD 23.1.4", "lld@23"},
		{"new unversioned major", "LLD 23.1.3", "LLD 24.1.0", "lld@23"},
		{"outdated versioned formula", "LLD 23.1.2", "LLD 23.1.3", "lld"},
		{"outdated unversioned formula", "", "LLD 23.1.2", ""},
		{"unsupported major", "", "LLD 24.1.0", ""},
		{"missing formulas", "", "", ""},
	} {
		t.Run(tt.name, func(t *testing.T) {
			prefix := filepath.Join(t.TempDir(), "brew with spaces")
			for formula, version := range map[string]string{"lld@23": tt.versioned, "lld": tt.unversioned} {
				if version != "" {
					writeTestDarwinLLD(t, filepath.Join(prefix, "opt", formula, "bin", "ld64.lld"), version)
				}
			}
			export := crosscompile.Export{LDFLAGS: []string{"-fuse-ld=lld"}}
			err := configureDarwinLLD(commandEnv{environ: []string{"HOMEBREW_PREFIX=" + prefix}}, &export)
			if tt.want == "" {
				if err == nil || !strings.Contains(err.Error(), "brew install --skip-link lld") {
					t.Fatalf("invalid installation: %v", err)
				}
				return
			}
			want := "-fuse-ld=" + filepath.Join(prefix, "opt", tt.want, "bin", "ld64.lld")
			if err != nil || export.LDFLAGS[0] != want || !compatibleDarwinLLD(export.LinkerIdentity) {
				t.Fatalf("linker = %+v, %v; want %q", export, err, want)
			}
		})
	}
}

func TestDarwinLLDUnversionedBuild(t *testing.T) {
	if runtime.GOOS != "darwin" || runtime.GOARCH != "arm64" {
		t.Skip("native macOS arm64 linker selection")
	}
	t.Setenv("CCFLAGS", "")
	t.Setenv("LDFLAGS", "")
	linker, _, err := resolveDarwinLLD(commandEnv{}, &crosscompile.Export{LDFLAGS: []string{"-fuse-ld=lld"}})
	if err != nil {
		t.Fatal(err)
	}
	prefix := t.TempDir()
	unversioned := filepath.Join(prefix, "opt", "lld", "bin", "ld64.lld")
	if err := os.MkdirAll(filepath.Dir(unversioned), 0755); err != nil {
		t.Fatal(err)
	}
	if err := os.Symlink(linker, unversioned); err != nil {
		t.Fatal(err)
	}
	t.Setenv("HOMEBREW_PREFIX", prefix)
	conf := NewDefaultConf(ModeBuild)
	conf.OutFile = filepath.Join(prefix, "large-array-return")
	if _, err := Do([]string{"./testdata/largearrayreturn"}, conf); err != nil {
		t.Fatalf("build with only the unversioned Homebrew linker: %v", err)
	}
	if out := runBinary(t, conf.OutFile); !strings.HasSuffix(strings.TrimSpace(out), "99 0 0 0 98 98 6 1\n97") {
		t.Fatalf("unexpected native output: %q", out)
	}
}

func TestDarwinLLDExplicitPath(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("executable fixtures use /bin/sh")
	}
	root := t.TempDir()
	custom := filepath.Join(root, "custom linker")
	writeTestDarwinLLD(t, custom, "LLD 23.1.4")
	commands := commandEnv{dir: root, environ: []string{"HOMEBREW_PREFIX=" + root}}
	for _, source := range []string{"CCFLAGS", "LDFLAGS", "config"} {
		t.Run(source, func(t *testing.T) {
			t.Setenv("CCFLAGS", "")
			t.Setenv("LDFLAGS", "")
			export := crosscompile.Export{LDFLAGS: []string{"-fuse-ld=lld"}}
			if source == "config" {
				// Check an incompatible default once; the other cases have none.
				writeTestDarwinLLD(t, filepath.Join(root, "opt/lld@23/bin/ld64.lld"), "LLD 22.1.8")
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
	writeTestDarwinFile(t, driver, lookup, 0755)
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

	writeTestDarwinLLD(t, custom, "LLD 23.1.5")
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

// Exercise response-file selection with the real driver, including its quoting
// and path semantics, without executing a link job.
func TestDarwinLLDResponseFiles(t *testing.T) {
	compiler, err := exec.LookPath("clang++")
	if err != nil || runtime.GOOS == "windows" {
		t.Skip("requires a Clang GNU driver and executable shell fixtures")
	}
	root := t.TempDir()
	first := filepath.Join(root, "first linker/ld64.lld")
	second := filepath.Join(root, `second $"\ linker/ld64.lld`)
	writeTestDarwinLLD(t, first, "LLD 23.1.3")
	writeTestDarwinLLD(t, second, "LLD 23.1.4")
	writeTestDarwinFile(t, filepath.Join(root, "flags.rsp"), `--ld-path="first linker/ld64.lld"`, 0600)
	writeTestDarwinFile(t, filepath.Join(root, "real/sub/nested.rsp"), "@flags.rsp", 0600)
	if err := os.Symlink(filepath.Join(root, "real/sub"), filepath.Join(root, "link")); err != nil {
		t.Fatal(err)
	}
	writeTestDarwinFile(t, filepath.Join(root, "real/nested.rsp"), "@flags.rsp", 0600)
	writeTestDarwinFile(t, filepath.Join(root, "nested.rsp"), "--ld-path=/wrong-cleaned-path", 0600)
	windows := filepath.Join(root, `windows\linker/ld64.lld`)
	writeTestDarwinLLD(t, windows, "LLD 23.1.3")
	writeTestDarwinFile(t, filepath.Join(root, "windows.rsp"), `--ld-path="windows\linker/ld64.lld"`, 0600)
	data := []byte{0xff, 0xfe}
	for _, r := range utf16.Encode([]rune(`--ld-path="first linker/ld64.lld"`)) {
		data = binary.LittleEndian.AppendUint16(data, r)
	}
	writeTestDarwinFile(t, filepath.Join(root, "utf16.rsp"), string(data), 0600)
	commands := commandEnv{dir: root, environ: []string{"HOMEBREW_PREFIX=" + root}}
	t.Setenv("CCFLAGS", "")
	for _, tt := range []struct {
		name, env, want, version string
		flags                    []string
	}{
		{"missing default", "@flags.rsp", first, "LLD 23.1.3", nil},
		{"nested", "@real/sub/nested.rsp", first, "LLD 23.1.3", nil},
		{"symlink traversal", "@link/../nested.rsp", first, "LLD 23.1.3", nil},
		{"config overrides response", "@flags.rsp", second, "LLD 23.1.4", []string{"--ld-path=" + second}},
		{"response overrides direct", "--ld-path=" + first, first, "LLD 23.1.3", []string{"--ld-path=" + second, "@flags.rsp"}},
		{"Windows quoting", "@windows.rsp", windows, "LLD 23.1.3", []string{"--rsp-quoting=windows"}},
		{"UTF16", "@utf16.rsp", first, "LLD 23.1.3", nil},
		{"bare name", "@flags.rsp", first, "LLD 23.1.3", []string{"-B" + filepath.Dir(first), "--ld-path=ld64.lld"}},
	} {
		t.Run(tt.name, func(t *testing.T) {
			t.Setenv("LDFLAGS", tt.env)
			export := crosscompile.Export{CC: compiler, LDFLAGS: append([]string{"-fuse-ld=lld", "--target=arm64-apple-macos14"}, tt.flags...)}
			if err := configureDarwinLLD(commands, &export); err != nil {
				t.Fatal(err)
			}
			if export.LDFLAGS[0] != "-fuse-ld="+tt.want || export.LinkerIdentity != tt.version {
				t.Fatalf("wrong linker/fingerprint: %+v", export)
			}
		})
	}
	// An outdated default must not block an override. Editing the same response
	// file must also update both the selected path and its cache identity.
	writeTestDarwinLLD(t, filepath.Join(root, "opt/lld@23/bin/ld64.lld"), "LLD 22.1.8")
	t.Setenv("LDFLAGS", "@flags.rsp")
	writeTestDarwinFile(t, filepath.Join(root, "flags.rsp"), strconv.Quote("--ld-path="+second), 0600)
	export := crosscompile.Export{CC: compiler, LDFLAGS: []string{"-fuse-ld=lld", "--target=arm64-apple-macos14"}}
	if err := configureDarwinLLD(commands, &export); err != nil || export.LinkerIdentity != "LLD 23.1.4" || export.LDFLAGS[0] != "-fuse-ld="+second {
		t.Fatalf("stale linker identity: %+v, %v", export, err)
	}
	writeTestDarwinFile(t, filepath.Join(root, "flags.rsp"), "-Wl,-dead_strip", 0600)
	fallback := filepath.Join(root, "opt/lld@23/bin/ld64.lld")
	writeTestDarwinLLD(t, fallback, "LLD 23.1.3")
	base := crosscompile.Export{CC: compiler, LDFLAGS: []string{"-fuse-ld=lld", "--target=arm64-apple-macos14"}}
	if path, _, err := resolveDarwinLLD(commands, &base); err != nil || path != fallback {
		t.Fatalf("response file without an override: %q, %v", path, err)
	}
	for _, content := range []string{"@flags.rsp", "--ld-path=/missing", "-invalid-driver-option"} {
		writeTestDarwinFile(t, filepath.Join(root, "flags.rsp"), content, 0600)
		if _, _, err := resolveDarwinLLD(commands, &export); err == nil {
			t.Fatalf("accepted invalid response file %q", content)
		}
	}
}

func TestDarwinLLDSymlinkTraversal(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("executable fixtures use /bin/sh")
	}
	compiler, _ := exec.LookPath("clang++")
	t.Setenv("CCFLAGS", "")
	t.Setenv("LDFLAGS", "")
	root := t.TempDir()
	if err := os.MkdirAll(filepath.Join(root, "real/sub"), 0755); err != nil {
		t.Fatal(err)
	}
	if err := os.Symlink(filepath.Join(root, "real/sub"), filepath.Join(root, "link")); err != nil {
		t.Fatal(err)
	}
	writeTestDarwinLLD(t, filepath.Join(root, "ld64.lld"), "LLD 23.1.3")
	t.Chdir(root)
	for _, version := range []string{"LLD 22.1.8", "LLD 23.1.4"} {
		writeTestDarwinLLD(t, filepath.Join(root, "real/ld64.lld"), version)
		for _, tt := range []struct{ dir, flag string }{
			{"", "--ld-path=link/../ld64.lld"},
			{root, "--ld-path=" + root + "/link/../ld64.lld"},
			{".", "@link.rsp"},
		} {
			if tt.flag == "@link.rsp" && compiler == "" {
				continue
			}
			writeTestDarwinFile(t, filepath.Join(root, "link.rsp"), "--ld-path=link/../ld64.lld", 0600)
			export := crosscompile.Export{CC: compiler, LDFLAGS: []string{"-fuse-ld=lld", "--target=arm64-apple-macos14", tt.flag}}
			err := configureDarwinLLD(commandEnv{dir: tt.dir}, &export)
			if version == "LLD 22.1.8" {
				if err == nil || !strings.Contains(err.Error(), version) {
					t.Fatalf("%q bypassed version gate: %v", tt.flag, err)
				}
			} else if err != nil || export.LinkerIdentity != version ||
				!filepath.IsAbs(strings.TrimPrefix(export.LDFLAGS[0], "-fuse-ld=")) ||
				!strings.HasSuffix(export.LDFLAGS[0], "/link/../ld64.lld") {
				t.Fatalf("%q: wrong linker/fingerprint %+v, %v", tt.flag, export, err)
			}
		}
	}
}

func TestDarwinDriverDiagnostics(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("executable fixtures use /bin/sh")
	}
	driver := filepath.Join(t.TempDir(), "clang++")
	for _, tt := range []struct {
		output, want string
		exit         int
	}{
		{"clang: error: cannot read response file", "expected one driver job, got 0", 0},
		{" \"/one\" \"arg\"\n \"/two\" \"arg\"\n", "got 2", 0},
		{"clang: error: invalid option", "invalid option", 1},
	} {
		writeTestDarwinFile(t, driver, fmt.Sprintf("#!/bin/sh\ncat <<'EOF' >&2\n%s\nEOF\nexit %d\n", tt.output, tt.exit), 0755)
		if _, err := darwinDriverLinker(commandEnv{}, driver, nil); err == nil || !strings.Contains(err.Error(), tt.want) {
			t.Fatalf("driver diagnostic: %v, want %q", err, tt.want)
		}
	}
}

func writeTestDarwinLLD(t *testing.T, path, version string) {
	t.Helper()
	writeTestDarwinFile(t, path, "#!/bin/sh\nprintf '%s\\n' '"+version+"'\n", 0755)
}

func writeTestDarwinFile(t *testing.T, path, content string, mode os.FileMode) {
	t.Helper()
	if err := os.MkdirAll(filepath.Dir(path), 0755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, []byte(content), mode); err != nil {
		t.Fatal(err)
	}
}
