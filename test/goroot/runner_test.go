package goroot

import (
	"bufio"
	"bytes"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"go/build"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"regexp"
	"runtime"
	"strconv"
	"strings"
	"testing"
	"time"

	"gopkg.in/yaml.v3"
)

var (
	flagGOROOT  = flag.String("goroot", os.Getenv("LLGO_GOROOT"), "Go toolchain root whose GOROOT/test sources should be used")
	flagGoCmd   = flag.String("go", os.Getenv("LLGO_GO"), "go binary used as baseline (default: <goroot>/bin/go)")
	flagLLGO    = flag.String("llgo", os.Getenv("LLGO_TEST_LLGO"), "llgo binary used for comparisons (default: build from current checkout)")
	flagDirs    = flag.String("dirs", strings.Join(defaultGoRootTestDirs, ","), "comma-separated GOROOT/test subdirectories to scan")
	flagCase    = flag.String("case", os.Getenv("LLGO_GOROOT_CASE"), "regexp selecting cases by relative path")
	flagLimit   = flag.Int("limit", 0, "maximum number of matching cases to run")
	flagShardI  = flag.Int("shard-index", 0, "0-based shard index used to partition matching cases")
	flagShardN  = flag.Int("shard-total", 1, "number of shards used to partition matching cases")
	flagKeep    = flag.Bool("keepwork", false, "keep temporary work directories for debugging")
	flagXFail   = flag.String("xfail", filepath.Join("test", "goroot", "xfail.yaml"), "xfail configuration path relative to repo root")
	flagBuildTO = flag.Duration("build-timeout", 3*time.Minute, "timeout for each go/llgo build step; 0 disables the timeout")
	flagRunTO   = flag.Duration("run-timeout", 20*time.Second, "timeout for the compiled program run step; 0 disables the timeout")
	flagSlowBld = flag.Duration("slow-build", 10*time.Second, "log build steps that exceed this duration; 0 disables slow-build logging")
	flagSlowRun = flag.Duration("slow-run", 5*time.Second, "log run steps that exceed this duration; 0 disables slow-run logging")
)

var defaultGoRootTestDirs = []string{
	".",
	"ken",
	"chan",
	"interface",
	"internal/runtime/sys",
	"syntax",
	"dwarf",
	"fixedbugs",
	"codegen",
	"abi",
	"typeparam",
	"typeparam/mdempsky",
	"arenas",
}

type toolchainEnv struct {
	GOOS        string
	GOARCH      string
	GOVERSION   string
	CGOEnabled  string `json:"CGO_ENABLED"`
	ReleaseTags []string
}

type testCase struct {
	RelPath      string
	Dir          string
	FileName     string
	Directive    string
	DirectiveArg []string
}

type xfailConfig struct {
	Entries   []xfailEntry   `yaml:"xfails"`
	HostSkips []xfailEntry   `yaml:"host_skips"`
	Timeouts  []timeoutEntry `yaml:"timeouts"`
}

type xfailEntry struct {
	Version   string `yaml:"version"`
	Platform  string `yaml:"platform"`
	Directive string `yaml:"directive"`
	Case      string `yaml:"case"`
	Reason    string `yaml:"reason"`
}

type timeoutEntry struct {
	Version   string `yaml:"version"`
	Platform  string `yaml:"platform"`
	Directive string `yaml:"directive"`
	Case      string `yaml:"case"`
	Timeout   string `yaml:"timeout"`
	Reason    string `yaml:"reason"`
}

func TestGoRootRunCases(t *testing.T) {
	if *flagGOROOT == "" {
		t.Skip("set -goroot or LLGO_GOROOT to run external GOROOT/test cases")
	}

	repoRoot := repoRoot(t)
	goroot, err := filepath.Abs(*flagGOROOT)
	if err != nil {
		t.Fatalf("resolve goroot: %v", err)
	}
	goCmd := *flagGoCmd
	if goCmd == "" {
		goCmd = filepath.Join(goroot, "bin", "go")
	}
	if _, err := os.Stat(goCmd); err != nil {
		t.Fatalf("stat go command %q: %v", goCmd, err)
	}

	envInfo := loadToolchainEnv(t, goCmd)
	testRoot := filepath.Join(goroot, "test")
	info, err := os.Stat(testRoot)
	if err != nil {
		t.Fatalf("stat GOROOT/test root %q: %v", testRoot, err)
	}
	if !info.IsDir() {
		t.Fatalf("GOROOT/test root %q is not a directory", testRoot)
	}

	llgoBin := *flagLLGO
	if llgoBin == "" {
		llgoBin = buildLLGOBinary(t, repoRoot)
	}
	xfails := loadXFailConfig(t, repoRoot, *flagXFail)
	caseFilter := compileCaseFilter(t, *flagCase)
	cases := discoverCases(t, testRoot, envInfo, parseDirs(*flagDirs), caseFilter, *flagLimit)
	if len(cases) == 0 {
		t.Fatalf("no matching // run cases found under %s", testRoot)
	}
	cases = shardCases(t, cases, *flagShardI, *flagShardN)
	if len(cases) == 0 {
		t.Skipf("no matching cases selected for shard %d/%d", *flagShardI, *flagShardN)
	}

	t.Logf("goroot=%s goversion=%s goos=%s goarch=%s shard=%d/%d cases=%d", goroot, envInfo.GOVERSION, envInfo.GOOS, envInfo.GOARCH, *flagShardI, *flagShardN, len(cases))
	for _, tc := range cases {
		tc := tc
		t.Run(tc.RelPath, func(t *testing.T) {
			if match, reason := xfails.MatchHostSkip(envInfo.GOVERSION, runtime.GOOS+"/"+runtime.GOARCH, tc); match {
				t.Skipf("skipping host-unsafe case: %s", reason)
			}
			runTimeout := *flagRunTO
			if timeout, reason, ok := xfails.MatchTimeout(envInfo.GOVERSION, envInfo.GOOS+"/"+envInfo.GOARCH, tc); ok {
				runTimeout = timeout
				t.Logf("using timeout override %s: %s", timeout, reason)
			}
			err := runCase(t, repoRoot, goroot, goCmd, llgoBin, tc, runTimeout)
			match, reason := xfails.Match(envInfo.GOVERSION, envInfo.GOOS+"/"+envInfo.GOARCH, tc)
			switch {
			case err == nil && match:
				t.Fatalf("unexpected success for xfail case: %s", reason)
			case err != nil && match:
				t.Logf("expected failure: %s", reason)
			case err != nil:
				t.Fatal(err)
			}
		})
	}
}

func repoRoot(t *testing.T) string {
	t.Helper()
	wd, err := os.Getwd()
	if err != nil {
		t.Fatalf("getwd: %v", err)
	}
	root, err := filepath.Abs(filepath.Join(wd, "..", ".."))
	if err != nil {
		t.Fatalf("resolve repo root: %v", err)
	}
	return root
}

func loadToolchainEnv(t *testing.T, goCmd string) toolchainEnv {
	t.Helper()
	cmd := exec.Command(goCmd, "env", "-json", "GOOS", "GOARCH", "GOVERSION", "CGO_ENABLED")
	cmd.Env = append(os.Environ(), "GOENV=off", "GOFLAGS=")
	var stdout bytes.Buffer
	var stderr bytes.Buffer
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr
	if err := cmd.Run(); err != nil {
		t.Fatalf("%s env failed: %v\nstdout:\n%s\nstderr:\n%s", goCmd, err, stdout.Bytes(), stderr.Bytes())
	}
	var info toolchainEnv
	if err := json.Unmarshal(stdout.Bytes(), &info); err != nil {
		t.Fatalf("decode %s env output: %v\nstdout:\n%s\nstderr:\n%s", goCmd, err, stdout.Bytes(), stderr.Bytes())
	}
	info.ReleaseTags = releaseTagsFor(info.GOVERSION)
	return info
}

func buildLLGOBinary(t *testing.T, repoRoot string) string {
	t.Helper()
	outDir := t.TempDir()
	outPath := filepath.Join(outDir, "llgo")
	if runtime.GOOS == "windows" {
		outPath += ".exe"
	}
	cmd := exec.Command("go", "build", "-tags=dev", "-o", outPath, "./cmd/llgo")
	cmd.Dir = repoRoot
	var out bytes.Buffer
	cmd.Stdout = &out
	cmd.Stderr = &out
	if err := cmd.Run(); err != nil {
		t.Fatalf("build llgo failed: %v\n%s", err, out.Bytes())
	}
	return outPath
}

func loadXFailConfig(t *testing.T, repoRoot, relPath string) xfailConfig {
	t.Helper()
	path := relPath
	if !filepath.IsAbs(path) {
		path = filepath.Join(repoRoot, relPath)
	}
	data, err := os.ReadFile(path)
	if errors.Is(err, os.ErrNotExist) {
		return xfailConfig{}
	}
	if err != nil {
		t.Fatalf("read xfail file %q: %v", path, err)
	}
	var cfg xfailConfig
	if err := yaml.Unmarshal(data, &cfg); err != nil {
		t.Fatalf("parse xfail file %q: %v", path, err)
	}
	return cfg
}

func compileCaseFilter(t *testing.T, expr string) *regexp.Regexp {
	t.Helper()
	if expr == "" {
		return nil
	}
	re, err := regexp.Compile(expr)
	if err != nil {
		t.Fatalf("compile case regexp %q: %v", expr, err)
	}
	return re
}

func parseDirs(csv string) []string {
	parts := strings.Split(csv, ",")
	out := make([]string, 0, len(parts))
	for _, part := range parts {
		part = strings.TrimSpace(part)
		if part == "" {
			continue
		}
		out = append(out, part)
	}
	return out
}

func discoverCases(t *testing.T, testRoot string, envInfo toolchainEnv, dirs []string, filter *regexp.Regexp, limit int) []testCase {
	t.Helper()
	ctx := build.Default
	ctx.GOOS = envInfo.GOOS
	ctx.GOARCH = envInfo.GOARCH
	ctx.CgoEnabled = envInfo.CGOEnabled == "1"
	ctx.GOROOT = filepath.Dir(testRoot)
	ctx.ReleaseTags = envInfo.ReleaseTags

	var cases []testCase
	for _, relDir := range dirs {
		absDir := filepath.Join(testRoot, filepath.FromSlash(relDir))
		entries, err := os.ReadDir(absDir)
		if err != nil {
			if errors.Is(err, os.ErrNotExist) {
				t.Logf("skipping missing GOROOT/test dir %s", absDir)
				continue
			}
			t.Fatalf("read %s: %v", absDir, err)
		}
		for _, entry := range entries {
			name := entry.Name()
			if entry.IsDir() || strings.HasPrefix(name, ".") || !strings.HasSuffix(name, ".go") {
				continue
			}
			match, err := ctx.MatchFile(absDir, name)
			if err != nil || !match {
				continue
			}
			pathInTest := name
			if relDir != "." {
				pathInTest = path.Join(relDir, name)
			}
			if filter != nil && !filter.MatchString(pathInTest) {
				continue
			}
			directive, args, ok := parseDirective(filepath.Join(absDir, name))
			if !ok || directive != "run" || len(args) != 0 {
				continue
			}
			cases = append(cases, testCase{
				RelPath:      pathInTest,
				Dir:          absDir,
				FileName:     name,
				Directive:    directive,
				DirectiveArg: args,
			})
			if limit > 0 && len(cases) >= limit {
				return cases
			}
		}
	}
	return cases
}

func shardCases(t *testing.T, cases []testCase, shardIndex, shardTotal int) []testCase {
	t.Helper()
	if shardTotal < 1 {
		t.Fatalf("invalid -shard-total=%d; want >= 1", shardTotal)
	}
	if shardIndex < 0 || shardIndex >= shardTotal {
		t.Fatalf("invalid -shard-index=%d for -shard-total=%d", shardIndex, shardTotal)
	}
	if shardTotal == 1 {
		return cases
	}
	selected := make([]testCase, 0, len(cases)/shardTotal+1)
	for i, tc := range cases {
		if i%shardTotal == shardIndex {
			selected = append(selected, tc)
		}
	}
	return selected
}

func parseDirective(filePath string) (string, []string, bool) {
	f, err := os.Open(filePath)
	if err != nil {
		return "", nil, false
	}
	defer f.Close()

	scanner := bufio.NewScanner(f)
	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		if strings.HasPrefix(line, "package ") {
			break
		}
		if !strings.HasPrefix(line, "//") {
			continue
		}
		text := strings.TrimSpace(strings.TrimPrefix(line, "//"))
		fields := strings.Fields(text)
		if len(fields) == 0 {
			continue
		}
		switch fields[0] {
		case "run", "runoutput", "compile", "errorcheck", "errorcheckandrundir":
			return fields[0], fields[1:], true
		}
	}
	return "", nil, false
}

func runCase(t *testing.T, repoRoot, goroot, goCmd, llgoBin string, tc testCase, runTimeout time.Duration) error {
	t.Helper()
	workRoot, cleanup, err := prepareWorkTree(tc.Dir)
	if err != nil {
		return err
	}
	if !*flagKeep {
		defer cleanup()
	}

	rootDir := filepath.Dir(workRoot)
	env := runnerEnv(repoRoot, goroot)
	goBin := filepath.Join(rootDir, "go.out")
	llgoBinPath := filepath.Join(rootDir, "llgo.out")

	goBuildStdout, goBuildStderr, goBuildExit, goBuildDur, err := runProgram(workRoot, goCmd, env, *flagBuildTO, "build", "-o", goBin, tc.FileName)
	if err != nil {
		return commandFailure("baseline go build", goBuildDur, err, goBuildStdout, goBuildStderr, goBuildExit)
	}
	llgoBuildStdout, llgoBuildStderr, llgoBuildExit, llgoBuildDur, err := runProgram(workRoot, llgoBin, env, *flagBuildTO, "build", "-o", llgoBinPath, tc.FileName)
	if err != nil {
		return commandFailure("llgo build", llgoBuildDur, err, llgoBuildStdout, llgoBuildStderr, llgoBuildExit)
	}

	goStdout, goStderr, goExit, goRunDur, err := runProgram(workRoot, goBin, env, runTimeout)
	if err != nil {
		return commandFailure("baseline go run", goRunDur, err, goStdout, goStderr, goExit)
	}
	llgoStdout, llgoStderr, llgoExit, llgoRunDur, err := runProgram(workRoot, llgoBinPath, env, runTimeout)
	if err != nil {
		return commandFailure("llgo run", llgoRunDur, err, llgoStdout, llgoStderr, llgoExit)
	}

	goStdout = normalizeOutput(goStdout)
	goStderr = normalizeOutput(goStderr)
	llgoStdout = normalizeOutput(filterNoise(llgoStdout))
	llgoStderr = normalizeOutput(filterNoise(llgoStderr))

	logSlowCase(t, tc.RelPath, goBuildDur, llgoBuildDur, goRunDur, llgoRunDur)

	if !bytes.Equal(llgoStdout, goStdout) {
		return fmt.Errorf("stdout mismatch\nllgo:\n%s\n\ngo:\n%s", llgoStdout, goStdout)
	}
	if !bytes.Equal(llgoStderr, goStderr) {
		return fmt.Errorf("stderr mismatch\nllgo:\n%s\n\ngo:\n%s", llgoStderr, goStderr)
	}
	if llgoExit != goExit {
		return fmt.Errorf("exit code mismatch: llgo=%d go=%d", llgoExit, goExit)
	}
	return nil
}

func prepareWorkTree(srcDir string) (string, func(), error) {
	root, err := os.MkdirTemp("", "llgo-goroot-*")
	if err != nil {
		return "", nil, err
	}
	linkPath := filepath.Join(root, "src")
	if err := os.Symlink(srcDir, linkPath); err != nil {
		_ = os.RemoveAll(root)
		return "", nil, fmt.Errorf("symlink %q -> %q: %w", linkPath, srcDir, err)
	}
	return linkPath, func() {
		_ = os.RemoveAll(root)
	}, nil
}

func runnerEnv(repoRoot, goroot string) []string {
	env := append([]string{}, os.Environ()...)
	pathFound := false
	for i, item := range env {
		switch {
		case strings.HasPrefix(item, "GOROOT="):
			env[i] = "GOROOT=" + goroot
		case strings.HasPrefix(item, "GOENV="):
			env[i] = "GOENV=off"
		case strings.HasPrefix(item, "GOFLAGS="):
			env[i] = "GOFLAGS="
		case strings.HasPrefix(item, "LLGO_ROOT="):
			env[i] = "LLGO_ROOT=" + repoRoot
		case strings.HasPrefix(item, "PATH="):
			pathFound = true
			env[i] = "PATH=" + filepath.Join(goroot, "bin") + string(os.PathListSeparator) + strings.TrimPrefix(item, "PATH=")
		}
	}
	if !pathFound {
		env = append(env, "PATH="+filepath.Join(goroot, "bin"))
	}
	env = appendIfMissing(env, "GOROOT="+goroot)
	env = appendIfMissing(env, "GOENV=off")
	env = appendIfMissing(env, "GOFLAGS=")
	env = appendIfMissing(env, "LLGO_ROOT="+repoRoot)
	return env
}

func appendIfMissing(env []string, kv string) []string {
	key := strings.SplitN(kv, "=", 2)[0] + "="
	for _, item := range env {
		if strings.HasPrefix(item, key) {
			return env
		}
	}
	return append(env, kv)
}

func runProgram(dir, app string, env []string, timeout time.Duration, args ...string) ([]byte, []byte, int, time.Duration, error) {
	start := time.Now()
	cmd := exec.Command(app, args...)
	configureProcessGroup(cmd)
	cmd.Dir = dir
	cmd.Env = env
	var stdout bytes.Buffer
	var stderr bytes.Buffer
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr
	if err := cmd.Start(); err != nil {
		return nil, nil, 0, time.Since(start), err
	}

	waitCh := make(chan error, 1)
	go func() {
		waitCh <- cmd.Wait()
	}()

	var err error
	timedOut := false
	if timeout > 0 {
		select {
		case err = <-waitCh:
		case <-time.After(timeout):
			timedOut = true
			killProcessTree(cmd)
			err = <-waitCh
		}
	} else {
		err = <-waitCh
	}
	exitCode := 0
	if err != nil {
		var exitErr *exec.ExitError
		switch {
		case errors.As(err, &exitErr):
			exitCode = exitErr.ExitCode()
		default:
			return nil, nil, 0, time.Since(start), err
		}
	}
	elapsed := time.Since(start)
	if timedOut {
		return stdout.Bytes(), stderr.Bytes(), exitCode, elapsed, fmt.Errorf("timed out after %s", timeout)
	}
	return stdout.Bytes(), stderr.Bytes(), exitCode, elapsed, nil
}

func commandFailure(prefix string, elapsed time.Duration, err error, stdout, stderr []byte, exitCode int) error {
	var msg strings.Builder
	fmt.Fprintf(&msg, "%s failed: %v", prefix, err)
	fmt.Fprintf(&msg, "\nduration: %s", elapsed.Round(time.Millisecond))
	if exitCode != 0 {
		fmt.Fprintf(&msg, "\nexit code: %d", exitCode)
	}
	if len(stdout) != 0 {
		fmt.Fprintf(&msg, "\nstdout:\n%s", normalizeOutput(stdout))
	}
	if len(stderr) != 0 {
		fmt.Fprintf(&msg, "\nstderr:\n%s", normalizeOutput(stderr))
	}
	return errors.New(msg.String())
}

func logSlowCase(t *testing.T, casePath string, goBuildDur, llgoBuildDur, goRunDur, llgoRunDur time.Duration) {
	t.Helper()
	slowBuild := *flagSlowBld > 0 && (goBuildDur >= *flagSlowBld || llgoBuildDur >= *flagSlowBld)
	slowRun := *flagSlowRun > 0 && (goRunDur >= *flagSlowRun || llgoRunDur >= *flagSlowRun)
	if !slowBuild && !slowRun {
		return
	}
	t.Logf(
		"slow case %s: go build=%s llgo build=%s go run=%s llgo run=%s",
		casePath,
		goBuildDur.Round(time.Millisecond),
		llgoBuildDur.Round(time.Millisecond),
		goRunDur.Round(time.Millisecond),
		llgoRunDur.Round(time.Millisecond),
	)
}

func normalizeOutput(in []byte) []byte {
	in = bytes.ReplaceAll(in, []byte("\r\n"), []byte("\n"))
	in = bytes.ReplaceAll(in, []byte("\r"), []byte("\n"))
	lines := bytes.SplitAfter(in, []byte{'\n'})
	if len(lines) == 0 {
		return in
	}
	var out bytes.Buffer
	for _, line := range lines {
		out.WriteString(trimLogTimestampPrefix(string(line)))
	}
	return out.Bytes()
}

func filterNoise(in []byte) []byte {
	lines := bytes.SplitAfter(in, []byte{'\n'})
	if len(lines) == 0 {
		return in
	}
	var out bytes.Buffer
	for _, line := range lines {
		trimmed := strings.TrimSpace(string(line))
		switch {
		case strings.HasPrefix(trimmed, "WARNING: Using LLGO root for devel:"):
			continue
		case strings.HasPrefix(trimmed, "WARNING: LLGO_ROOT is not a valid LLGO root:"):
			continue
		case strings.HasPrefix(trimmed, "ld64.lld: warning:"):
			continue
		case strings.HasPrefix(trimmed, "ld.lld: warning:"):
			continue
		case strings.HasPrefix(trimmed, "ld: warning:"):
			continue
		}
		out.Write(line)
	}
	return out.Bytes()
}

func trimLogTimestampPrefix(line string) string {
	if len(line) < 20 {
		return line
	}
	if line[4] != '/' || line[7] != '/' || line[10] != ' ' || line[13] != ':' || line[16] != ':' || line[19] != ' ' {
		return line
	}
	for _, pos := range []int{0, 1, 2, 3, 5, 6, 8, 9, 11, 12, 14, 15, 17, 18} {
		if line[pos] < '0' || line[pos] > '9' {
			return line
		}
	}
	return line[20:]
}

func releaseTagsFor(goVersion string) []string {
	major, minor, ok := parseGoVersion(goVersion)
	if !ok || major != 1 || minor < 1 {
		return nil
	}
	tags := make([]string, 0, minor)
	for i := 1; i <= minor; i++ {
		tags = append(tags, fmt.Sprintf("go1.%d", i))
	}
	return tags
}

func parseGoVersion(goVersion string) (int, int, bool) {
	if !strings.HasPrefix(goVersion, "go") {
		return 0, 0, false
	}
	body := strings.TrimPrefix(goVersion, "go")
	parts := strings.SplitN(body, ".", 3)
	if len(parts) < 2 {
		return 0, 0, false
	}
	major, err := strconv.Atoi(parts[0])
	if err != nil {
		return 0, 0, false
	}
	minorPart := parts[1]
	var digits strings.Builder
	for _, r := range minorPart {
		if r < '0' || r > '9' {
			break
		}
		digits.WriteRune(r)
	}
	if digits.Len() == 0 {
		return 0, 0, false
	}
	minor, err := strconv.Atoi(digits.String())
	if err != nil {
		return 0, 0, false
	}
	return major, minor, true
}

func (cfg xfailConfig) Match(goVersion, platform string, tc testCase) (bool, string) {
	return matchEntries(cfg.Entries, goVersion, platform, tc)
}

func (cfg xfailConfig) MatchHostSkip(goVersion, platform string, tc testCase) (bool, string) {
	return matchEntries(cfg.HostSkips, goVersion, platform, tc)
}

func (cfg xfailConfig) MatchTimeout(goVersion, platform string, tc testCase) (time.Duration, string, bool) {
	for _, entry := range cfg.Timeouts {
		if !entry.matches(goVersion, platform, tc) {
			continue
		}
		timeout, err := time.ParseDuration(entry.Timeout)
		if err != nil {
			return 0, fmt.Sprintf("invalid timeout override %q for %s: %v", entry.Timeout, entry.Case, err), false
		}
		reason := entry.Reason
		if reason == "" {
			reason = entry.Case
		}
		return timeout, reason, true
	}
	return 0, "", false
}

func matchEntries(entries []xfailEntry, goVersion, platform string, tc testCase) (bool, string) {
	for _, entry := range entries {
		if !entry.matches(goVersion, platform, tc) {
			continue
		}
		reason := entry.Reason
		if reason == "" {
			reason = entry.Case
		}
		return true, reason
	}
	return false, ""
}

func (entry xfailEntry) matches(goVersion, platform string, tc testCase) bool {
	return matchEntry(entry.Version, entry.Platform, entry.Directive, entry.Case, goVersion, platform, tc)
}

func (entry timeoutEntry) matches(goVersion, platform string, tc testCase) bool {
	return matchEntry(entry.Version, entry.Platform, entry.Directive, entry.Case, goVersion, platform, tc)
}

func matchEntry(version, platform, directive, casePattern, goVersion, goPlatform string, tc testCase) bool {
	if version != "" && !matchGoVersion(version, goVersion) {
		return false
	}
	if platform != "" && platform != goPlatform {
		return false
	}
	if directive != "" && directive != tc.Directive {
		return false
	}
	if casePattern == "" {
		return true
	}
	ok, err := path.Match(casePattern, tc.RelPath)
	return err == nil && ok
}

func matchGoVersion(version, goVersion string) bool {
	if goVersion == version {
		return true
	}
	suffix, ok := strings.CutPrefix(goVersion, version)
	if !ok {
		return false
	}
	return strings.HasPrefix(suffix, ".") || strings.HasPrefix(suffix, "rc") || strings.HasPrefix(suffix, "beta")
}
