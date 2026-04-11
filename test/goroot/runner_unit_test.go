package goroot

import (
	"os"
	"path/filepath"
	"reflect"
	"runtime"
	"strings"
	"testing"
	"time"
)

func TestParseDirective(t *testing.T) {
	dir := t.TempDir()
	file := filepath.Join(dir, "case.go")
	if err := os.WriteFile(file, []byte("// run\n\npackage main\n"), 0644); err != nil {
		t.Fatal(err)
	}
	directive, args, ok := parseDirective(file)
	if !ok {
		t.Fatal("expected directive to be found")
	}
	if directive != "run" {
		t.Fatalf("directive=%q, want run", directive)
	}
	if len(args) != 0 {
		t.Fatalf("args=%v, want none", args)
	}
}

func TestParseDirectiveWithArgs(t *testing.T) {
	dir := t.TempDir()
	file := filepath.Join(dir, "case.go")
	if err := os.WriteFile(file, []byte("// errorcheckandrundir -1\n\npackage ignored\n"), 0644); err != nil {
		t.Fatal(err)
	}
	directive, args, ok := parseDirective(file)
	if !ok {
		t.Fatal("expected directive to be found")
	}
	if directive != "errorcheckandrundir" {
		t.Fatalf("directive=%q, want errorcheckandrundir", directive)
	}
	if !reflect.DeepEqual(args, []string{"-1"}) {
		t.Fatalf("args=%v, want [-1]", args)
	}
}

func TestParseDirectiveQuotedArgs(t *testing.T) {
	dir := t.TempDir()
	file := filepath.Join(dir, "case.go")
	src := `// runindir -gomodversion "1.23" -gcflags='all=-N -l'

package ignored
`
	if err := os.WriteFile(file, []byte(src), 0o644); err != nil {
		t.Fatal(err)
	}
	directive, args, ok := parseDirective(file)
	if !ok {
		t.Fatal("expected directive to be found")
	}
	if directive != "runindir" {
		t.Fatalf("directive=%q, want runindir", directive)
	}
	want := []string{"-gomodversion", "1.23", "-gcflags=all=-N -l"}
	if !reflect.DeepEqual(args, want) {
		t.Fatalf("args=%v, want %v", args, want)
	}
}

func TestReleaseTagsFor(t *testing.T) {
	got := releaseTagsFor("go1.24.11")
	want := []string{
		"go1.1", "go1.2", "go1.3", "go1.4", "go1.5", "go1.6", "go1.7", "go1.8",
		"go1.9", "go1.10", "go1.11", "go1.12", "go1.13", "go1.14", "go1.15", "go1.16",
		"go1.17", "go1.18", "go1.19", "go1.20", "go1.21", "go1.22", "go1.23", "go1.24",
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("releaseTagsFor()=%v, want %v", got, want)
	}
}

func TestXFailMatch(t *testing.T) {
	cfg := xfailConfig{
		Entries: []xfailEntry{{
			Version:   "go1.24",
			Platform:  "darwin/arm64",
			Directive: "run",
			Case:      "fixedbugs/*",
			Reason:    "known issue",
		}},
	}
	tc := testCase{RelPath: "fixedbugs/bug123.go", Directive: "run"}
	match, reason := cfg.Match("go1.24.11", "darwin/arm64", tc)
	if !match {
		t.Fatal("expected xfail match")
	}
	if reason != "known issue" {
		t.Fatalf("reason=%q, want known issue", reason)
	}
}

func TestFlakyMatch(t *testing.T) {
	cfg := xfailConfig{
		Flakes: []xfailEntry{{
			Version:   "go1.25",
			Platform:  "linux/amd64",
			Directive: "run",
			Case:      "fixedbugs/issue11256.go",
			Reason:    "flaky issue",
		}},
	}
	tc := testCase{RelPath: "fixedbugs/issue11256.go", Directive: "run"}
	match, reason := cfg.MatchFlaky("go1.25.0", "linux/amd64", tc)
	if !match {
		t.Fatal("expected flaky match")
	}
	if reason != "flaky issue" {
		t.Fatalf("reason=%q, want flaky issue", reason)
	}
}

func TestMatchGoVersion(t *testing.T) {
	tests := []struct {
		version   string
		goVersion string
		want      bool
	}{
		{version: "go1.24", goVersion: "go1.24", want: true},
		{version: "go1.24", goVersion: "go1.24.11", want: true},
		{version: "go1.24", goVersion: "go1.24rc1", want: true},
		{version: "go1.24", goVersion: "go1.24beta1", want: true},
		{version: "go1.2", goVersion: "go1.24.11", want: false},
		{version: "go1.25", goVersion: "go1.24.11", want: false},
	}
	for _, tt := range tests {
		if got := matchGoVersion(tt.version, tt.goVersion); got != tt.want {
			t.Fatalf("matchGoVersion(%q, %q)=%v, want %v", tt.version, tt.goVersion, got, tt.want)
		}
	}
}

func TestHostSkipMatch(t *testing.T) {
	cfg := xfailConfig{
		HostSkips: []xfailEntry{{
			Version:   "go1.24",
			Platform:  "darwin/arm64",
			Directive: "run",
			Case:      "fixedbugs/*",
			Reason:    "host-unsafe",
		}},
	}
	tc := testCase{RelPath: "fixedbugs/bug123.go", Directive: "run"}
	match, reason := cfg.MatchHostSkip("go1.24.11", "darwin/arm64", tc)
	if !match {
		t.Fatal("expected host skip match")
	}
	if reason != "host-unsafe" {
		t.Fatalf("reason=%q, want host-unsafe", reason)
	}
}

func TestTimeoutMatch(t *testing.T) {
	cfg := xfailConfig{
		Timeouts: []timeoutEntry{{
			Version:   "go1.24",
			Platform:  "darwin/arm64",
			Directive: "run",
			Case:      "fixedbugs/*",
			Timeout:   "90s",
			Reason:    "slow case",
		}},
	}
	tc := testCase{RelPath: "fixedbugs/bug123.go", Directive: "run"}
	timeout, reason, ok := cfg.MatchTimeout("go1.24.11", "darwin/arm64", tc)
	if !ok {
		t.Fatal("expected timeout match")
	}
	if timeout != 90*time.Second {
		t.Fatalf("timeout=%s, want 90s", timeout)
	}
	if reason != "slow case" {
		t.Fatalf("reason=%q, want slow case", reason)
	}
}

func TestEffectiveBuildTimeout(t *testing.T) {
	if got := effectiveBuildTimeout(3*time.Minute, 20*time.Second); got != 3*time.Minute {
		t.Fatalf("effectiveBuildTimeout()=%s, want 3m", got)
	}
	if got := effectiveBuildTimeout(3*time.Minute, 4*time.Minute); got != 4*time.Minute {
		t.Fatalf("effectiveBuildTimeout()=%s, want 4m", got)
	}
}

func TestRunProgramTimeout(t *testing.T) {
	if os.Getenv("LLGO_GOROOT_HELPER") == "sleep" {
		time.Sleep(200 * time.Millisecond)
		return
	}

	stdout, stderr, exitCode, elapsed, err := runProgram(
		t.TempDir(),
		os.Args[0],
		append(os.Environ(), "LLGO_GOROOT_HELPER=sleep"),
		50*time.Millisecond,
		"-test.run=TestRunProgramTimeout",
	)
	if err == nil {
		t.Fatal("expected timeout")
	}
	if exitCode == 0 {
		t.Fatalf("exitCode=%d, want non-zero on timeout", exitCode)
	}
	if len(stdout) != 0 {
		t.Fatalf("stdout=%q, want empty", stdout)
	}
	if len(stderr) != 0 {
		t.Fatalf("stderr=%q, want empty", stderr)
	}
	if !strings.Contains(err.Error(), "timed out after") {
		t.Fatalf("err=%v, want timeout", err)
	}
	if elapsed < 50*time.Millisecond {
		t.Fatalf("elapsed=%s, want >= 50ms", elapsed)
	}
}

func TestRunGeneratedProgramUsesProvidedTimeout(t *testing.T) {
	dir := t.TempDir()
	tool := filepath.Join(dir, "fake-tool.sh")
	script := "#!/bin/sh\nsleep 0.2\n"
	if err := os.WriteFile(tool, []byte(script), 0o755); err != nil {
		t.Fatal(err)
	}
	ws := caseWorkspace{workDir: dir}
	_, _, exitCode, elapsed, err := runGeneratedProgram(ws, tool, os.Environ(), "generated.go", "fake", 50*time.Millisecond)
	if err == nil {
		t.Fatal("expected timeout")
	}
	if !strings.Contains(err.Error(), "timed out after 50ms") {
		t.Fatalf("err=%v, exitCode=%d, want timeout mentioning 50ms", err, exitCode)
	}
	if elapsed < 50*time.Millisecond {
		t.Fatalf("elapsed=%s, want >= 50ms", elapsed)
	}
}

func TestNormalizeOutputStripsLogTimestamp(t *testing.T) {
	in := []byte("2026/03/13 00:56:11 listing stdlib export files: open : no such file or directory\n")
	got := string(normalizeOutput(in))
	want := "listing stdlib export files: open : no such file or directory\n"
	if got != want {
		t.Fatalf("normalizeOutput()=%q, want %q", got, want)
	}
}

func TestShardCases(t *testing.T) {
	cases := []testCase{
		{RelPath: "a.go"},
		{RelPath: "b.go"},
		{RelPath: "c.go"},
		{RelPath: "d.go"},
		{RelPath: "e.go"},
	}
	got := shardCases(t, cases, 1, 3)
	want := []testCase{
		{RelPath: "b.go"},
		{RelPath: "e.go"},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("shardCases()=%v, want %v", got, want)
	}
}

func TestDiscoverCasesSkipsMissingDir(t *testing.T) {
	testRoot := t.TempDir()
	existingDir := filepath.Join(testRoot, "fixedbugs")
	if err := os.MkdirAll(existingDir, 0o755); err != nil {
		t.Fatal(err)
	}
	file := filepath.Join(existingDir, "case.go")
	if err := os.WriteFile(file, []byte("// run\n\npackage main\n"), 0o644); err != nil {
		t.Fatal(err)
	}

	got := discoverCases(t, testRoot, toolchainEnv{
		GOOS:       runtime.GOOS,
		GOARCH:     runtime.GOARCH,
		CGOEnabled: "1",
	}, []string{"fixedbugs", "internal/runtime/sys"}, nil, 0, loadDirectiveMode(t, "legacy"))
	want := []testCase{{
		RelPath:      "fixedbugs/case.go",
		Dir:          existingDir,
		FileName:     "case.go",
		Directive:    "run",
		DirectiveArg: []string{},
	}}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("discoverCases()=%v, want %v", got, want)
	}
}

func TestDiscoverCasesRunLikeModeIncludesDirectiveArgs(t *testing.T) {
	testRoot := t.TempDir()
	dir := filepath.Join(testRoot, "fixedbugs")
	if err := os.MkdirAll(dir, 0o755); err != nil {
		t.Fatal(err)
	}
	files := map[string]string{
		"run.go":       "// run -gcflags=-d=checkptr\n\npackage main\n",
		"runoutput.go": "// runoutput ./rotate.go\n\npackage main\n",
		"rundir.go":    "// rundir\n\npackage ignored\n",
	}
	for name, src := range files {
		if err := os.WriteFile(filepath.Join(dir, name), []byte(src), 0o644); err != nil {
			t.Fatal(err)
		}
	}

	got := discoverCases(t, testRoot, toolchainEnv{
		GOOS:       runtime.GOOS,
		GOARCH:     runtime.GOARCH,
		CGOEnabled: "1",
	}, []string{"fixedbugs"}, nil, 0, loadDirectiveMode(t, "runlike"))
	if len(got) != 3 {
		t.Fatalf("len(discoverCases())=%d, want 3", len(got))
	}
	if got[0].Directive != "rundir" && got[1].Directive != "rundir" && got[2].Directive != "rundir" {
		t.Fatalf("discoverCases()=%v, want rundir to be included", got)
	}
}

func TestDiscoverCasesCIModeExcludesBuildrundir(t *testing.T) {
	testRoot := t.TempDir()
	dir := filepath.Join(testRoot, "fixedbugs")
	if err := os.MkdirAll(dir, 0o755); err != nil {
		t.Fatal(err)
	}
	files := map[string]string{
		"run.go":        "// run arg1\n\npackage main\n",
		"race.go":       "// run -race\n\npackage main\n",
		"runoutput.go":  "// runoutput\n\npackage main\n",
		"rundir.go":     "// rundir\n\npackage ignored\n",
		"runindir.go":   "// runindir\n\npackage ignored\n",
		"buildrun.go":   "// buildrun\n\npackage main\n",
		"builddir.go":   "// buildrundir\n\npackage ignored\n",
		"errorcheck.go": "// errorcheckandrundir -1\n\npackage ignored\n",
	}
	for name, src := range files {
		if err := os.WriteFile(filepath.Join(dir, name), []byte(src), 0o644); err != nil {
			t.Fatal(err)
		}
	}

	got := discoverCases(t, testRoot, toolchainEnv{
		GOOS:       runtime.GOOS,
		GOARCH:     runtime.GOARCH,
		CGOEnabled: "1",
	}, []string{"fixedbugs"}, nil, 0, loadDirectiveMode(t, "ci"))

	if len(got) != 3 {
		t.Fatalf("len(discoverCases())=%d, want 3", len(got))
	}
	for _, tc := range got {
		switch tc.Directive {
		case "run", "runoutput", "buildrun":
		default:
			t.Fatalf("unexpected directive in ci mode: %q", tc.Directive)
		}
		if tc.FileName == "race.go" {
			t.Fatalf("ci mode unexpectedly included -race case: %+v", tc)
		}
	}
}

func TestParseDirectiveOptions(t *testing.T) {
	opts, err := parseDirectiveOptions("runindir", []string{"-gomodversion", "1.23", "-goexperiment", "fieldtrack", "-ldflags", "-strictdups=2", "-w=0", "arg1"}, 20*time.Second)
	if err != nil {
		t.Fatal(err)
	}
	if opts.GoModVersion != "1.23" {
		t.Fatalf("GoModVersion=%q, want 1.23", opts.GoModVersion)
	}
	if !reflect.DeepEqual(opts.ProgramArgs, []string{"arg1"}) {
		t.Fatalf("ProgramArgs=%v, want [arg1]", opts.ProgramArgs)
	}
	if !reflect.DeepEqual(opts.BuildFlags, []string{"-ldflags", "-strictdups=2 -w=0"}) {
		t.Fatalf("BuildFlags=%v", opts.BuildFlags)
	}
	if !reflect.DeepEqual(opts.ExtraEnv, []string{"GOEXPERIMENT=fieldtrack"}) {
		t.Fatalf("ExtraEnv=%v", opts.ExtraEnv)
	}
}

func TestSplitSourceFiles(t *testing.T) {
	files, args := splitSourceFiles("index0.go", []string{"./index.go", "arg1", "arg2"})
	if !reflect.DeepEqual(files, []string{"index0.go", "index.go"}) {
		t.Fatalf("files=%v, want [index0.go index.go]", files)
	}
	if !reflect.DeepEqual(args, []string{"arg1", "arg2"}) {
		t.Fatalf("args=%v, want [arg1 arg2]", args)
	}
}

func TestEnsureModuleWorkspace(t *testing.T) {
	dir := t.TempDir()
	if err := ensureModuleWorkspace(dir, "llgo-goroot-runoutput", "1.14"); err != nil {
		t.Fatal(err)
	}
	data, err := os.ReadFile(filepath.Join(dir, "go.mod"))
	if err != nil {
		t.Fatal(err)
	}
	want := "module llgo-goroot-runoutput\ngo 1.14\n"
	if string(data) != want {
		t.Fatalf("go.mod=%q, want %q", data, want)
	}
}

func TestToolchainGoModVersion(t *testing.T) {
	dir := t.TempDir()
	if err := os.WriteFile(filepath.Join(dir, "VERSION"), []byte("go1.24.11\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	got, err := toolchainGoModVersion(dir)
	if err != nil {
		t.Fatal(err)
	}
	if got != "1.24" {
		t.Fatalf("toolchainGoModVersion()=%q, want 1.24", got)
	}
}

func TestStageRundirLayoutRewritesRelativeImports(t *testing.T) {
	srcDir := t.TempDir()
	if err := os.WriteFile(filepath.Join(srcDir, "a.go"), []byte("package a\nconst X = 1\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(srcDir, "b.go"), []byte("package b\nimport \"./a\"\nconst Y = a.X\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(srcDir, "main.go"), []byte("package main\nimport \"./b\"\nfunc main(){_ = b.Y}\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	dstDir := t.TempDir()
	if err := stageRundirLayout(dstDir, srcDir, false); err != nil {
		t.Fatal(err)
	}
	got, err := os.ReadFile(filepath.Join(dstDir, "b", "b.go"))
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(got), "\"../a\"") {
		t.Fatalf("rewritten file=%q, want import ../a", got)
	}
}
