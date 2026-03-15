package goroot

import (
	"os"
	"path/filepath"
	"reflect"
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

func TestRunProgramTimeout(t *testing.T) {
	if os.Getenv("LLGO_GOROOT_HELPER") == "sleep" {
		time.Sleep(200 * time.Millisecond)
		return
	}

	stdout, stderr, exitCode, err := runProgram(
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
}

func TestNormalizeOutputStripsLogTimestamp(t *testing.T) {
	in := []byte("2026/03/13 00:56:11 listing stdlib export files: open : no such file or directory\n")
	got := string(normalizeOutput(in))
	want := "listing stdlib export files: open : no such file or directory\n"
	if got != want {
		t.Fatalf("normalizeOutput()=%q, want %q", got, want)
	}
}
