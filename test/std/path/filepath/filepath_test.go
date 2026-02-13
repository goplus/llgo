package filepath_test

import (
	"errors"
	"io/fs"
	"os"
	"path/filepath"
	"runtime"
	"sort"
	"strings"
	"testing"
	"time"
)

func contains[T comparable](items []T, target T) bool {
	for _, v := range items {
		if v == target {
			return true
		}
	}
	return false
}

func TestFilepathConstants(t *testing.T) {
	if filepath.Separator != os.PathSeparator {
		t.Fatalf("Separator mismatch: got %q want %q", filepath.Separator, os.PathSeparator)
	}
	if filepath.ListSeparator != os.PathListSeparator {
		t.Fatalf("ListSeparator mismatch: got %q want %q", filepath.ListSeparator, os.PathListSeparator)
	}
	if !errors.Is(filepath.ErrBadPattern, filepath.ErrBadPattern) {
		t.Fatal("ErrBadPattern should compare equal to itself")
	}
	if filepath.SkipDir != fs.SkipDir {
		t.Fatalf("SkipDir mismatch: got %v want %v", filepath.SkipDir, fs.SkipDir)
	}
	if filepath.SkipAll != fs.SkipAll {
		t.Fatalf("SkipAll mismatch: got %v want %v", filepath.SkipAll, fs.SkipAll)
	}
}

func TestFilepathCleanSplitAndBase(t *testing.T) {
	seps := string(filepath.Separator)
	dirty := strings.Join([]string{"foo", ".", "bar", "..", "baz"}, seps)
	if got := filepath.Clean(dirty); got != filepath.Join("foo", "baz") {
		t.Fatalf("Clean(%q) = %q", dirty, got)
	}

	if got := filepath.Base(filepath.Join("foo", "bar", "file.txt")); got != "file.txt" {
		t.Fatalf("Base mismatch: %q", got)
	}

	if got := filepath.Dir(filepath.Join("foo", "bar", "file.txt")); got != filepath.Join("foo", "bar") {
		t.Fatalf("Dir mismatch: %q", got)
	}

	if ext := filepath.Ext("archive.tar.gz"); ext != ".gz" {
		t.Fatalf("Ext mismatch: %q", ext)
	}

	dir, file := filepath.Split(filepath.Join("pkg", "module.go"))
	if dir != "pkg"+seps || file != "module.go" {
		t.Fatalf("Split mismatch: dir=%q file=%q", dir, file)
	}

	parts := filepath.SplitList(strings.Join([]string{"a", "b"}, string(filepath.ListSeparator)))
	if len(parts) != 2 || parts[0] != "a" || parts[1] != "b" {
		t.Fatalf("SplitList mismatch: %v", parts)
	}

	if converted := filepath.FromSlash("alpha/beta"); converted != filepath.Join("alpha", "beta") {
		t.Fatalf("FromSlash mismatch: %q", converted)
	}
	if slashed := filepath.ToSlash(filepath.Join("alpha", "beta")); slashed != "alpha/beta" {
		t.Fatalf("ToSlash mismatch: %q", slashed)
	}
}

func TestFilepathAbsIsAbsAndRel(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatalf("Getwd error: %v", err)
	}

	abs, err := filepath.Abs(".")
	if err != nil {
		t.Fatalf("Abs error: %v", err)
	}
	if abs != wd {
		t.Fatalf("Abs mismatch: got %q want %q", abs, wd)
	}

	if !filepath.IsAbs(wd) {
		t.Fatalf("IsAbs should report true for working directory %q", wd)
	}
	if filepath.IsAbs(strings.Join([]string{"relative", "path"}, string(filepath.Separator))) {
		t.Fatal("IsAbs should be false for relative path")
	}

	base := filepath.Join("root", "sub")
	target := filepath.Join(base, "child", "file.txt")
	rel, err := filepath.Rel(base, target)
	if err != nil {
		t.Fatalf("Rel error: %v", err)
	}
	if rel != filepath.Join("child", "file.txt") {
		t.Fatalf("Rel mismatch: %q", rel)
	}

	if !filepath.HasPrefix(target, base) {
		t.Fatalf("HasPrefix should report true for %q within %q", target, base)
	}
	if filepath.HasPrefix(base, target) {
		t.Fatalf("HasPrefix should be false for %q within %q", base, target)
	}

	if !filepath.IsLocal("dir/file") {
		t.Fatal("IsLocal should accept simple relative path")
	}
	if filepath.IsLocal("../escape") {
		t.Fatal("IsLocal should reject parent traversal")
	}
	if filepath.IsLocal("") {
		t.Fatal("IsLocal should reject empty path")
	}

	localized, err := filepath.Localize("dir/file")
	if err != nil {
		t.Fatalf("Localize error: %v", err)
	}
	if localized != filepath.Join("dir", "file") {
		t.Fatalf("Localize mismatch: %q", localized)
	}
	if !filepath.IsLocal(localized) {
		t.Fatal("Localize should return local path")
	}
	if _, err := filepath.Localize(".."); err == nil {
		t.Fatal("Localize should reject parent traversal")
	}
}

func TestFilepathMatchAndGlob(t *testing.T) {
	root := t.TempDir()
	mustWrite(t, filepath.Join(root, "main.go"))
	mustWrite(t, filepath.Join(root, "util.go"))
	mustWrite(t, filepath.Join(root, "README.md"))

	pattern := filepath.Join(root, "*.go")
	matches, err := filepath.Glob(pattern)
	if err != nil {
		t.Fatalf("Glob error: %v", err)
	}
	for i := range matches {
		rel, err := filepath.Rel(root, matches[i])
		if err != nil {
			t.Fatalf("Rel error: %v", err)
		}
		matches[i] = rel
	}
	sort.Strings(matches)
	if want := []string{"main.go", "util.go"}; !equalStrings(matches, want) {
		t.Fatalf("Glob mismatch: %v", matches)
	}

	ok, err := filepath.Match("*.go", "main.go")
	if err != nil || !ok {
		t.Fatalf("Match expected true, err=%v", err)
	}
	_, err = filepath.Match("[invalid", "file")
	if !errors.Is(err, filepath.ErrBadPattern) {
		t.Fatalf("Match should return ErrBadPattern, got %v", err)
	}
}

func TestFilepathWalkAndWalkDir(t *testing.T) {
	root := t.TempDir()
	mustWrite(t, filepath.Join(root, "file.txt"))
	skipDir := filepath.Join(root, "skip")
	keepDir := filepath.Join(root, "keep")
	if err := os.MkdirAll(skipDir, 0o755); err != nil {
		t.Fatalf("Mkdir skip error: %v", err)
	}
	if err := os.MkdirAll(keepDir, 0o755); err != nil {
		t.Fatalf("Mkdir keep error: %v", err)
	}
	mustWrite(t, filepath.Join(skipDir, "hidden.txt"))
	mustWrite(t, filepath.Join(keepDir, "visible.txt"))

	var wf filepath.WalkFunc = func(path string, info fs.FileInfo, err error) error {
		return err
	}
	if err := wf("unused", nil, nil); err != nil {
		t.Fatalf("WalkFunc invocation returned unexpected error: %v", err)
	}

	var visited []string
	runWithTimeout(t, func() {
		err := filepath.Walk(root, func(path string, info fs.FileInfo, err error) error {
			if err != nil {
				return err
			}
			rel, err := filepath.Rel(root, path)
			if err != nil {
				return err
			}
			if rel == "." {
				visited = append(visited, rel)
				return nil
			}
			visited = append(visited, rel)
			if info.IsDir() && info.Name() == "skip" {
				return filepath.SkipDir
			}
			return nil
		})
		if err != nil {
			t.Fatalf("Walk error: %v", err)
		}
	})
	if contains(visited, filepath.Join("skip", "hidden.txt")) {
		t.Fatalf("Walk should skip contents of skip dir: %v", visited)
	}
	if !contains(visited, filepath.Join("keep", "visible.txt")) {
		t.Fatalf("Walk should visit keep directory contents: %v", visited)
	}

	var walkDirVisited []string
	runWithTimeout(t, func() {
		err := filepath.WalkDir(root, func(path string, d fs.DirEntry, err error) error {
			if err != nil {
				return err
			}
			rel, err := filepath.Rel(root, path)
			if err != nil {
				return err
			}
			walkDirVisited = append(walkDirVisited, rel)
			if d.IsDir() && d.Name() == "skip" {
				return filepath.SkipDir
			}
			return nil
		})
		if err != nil {
			t.Fatalf("WalkDir error: %v", err)
		}
	})
	if !contains(walkDirVisited, ".") {
		t.Fatalf("WalkDir should include root: %v", walkDirVisited)
	}
	if !contains(walkDirVisited, filepath.Join("keep", "visible.txt")) {
		t.Fatalf("WalkDir should visit keep directory contents: %v", walkDirVisited)
	}
	if contains(walkDirVisited, filepath.Join("skip", "hidden.txt")) {
		t.Fatalf("WalkDir should respect SkipDir: %v", walkDirVisited)
	}
}

func TestFilepathEvalSymlinks(t *testing.T) {
	root := t.TempDir()
	target := filepath.Join(root, "target.txt")
	mustWrite(t, target)
	link := filepath.Join(root, "link.txt")
	if err := os.Symlink("target.txt", link); err != nil {
		if runtime.GOOS == "windows" || errors.Is(err, fs.ErrInvalid) {
			t.Skipf("symlinks unavailable: %v", err)
		}
		if os.IsPermission(err) {
			t.Skipf("symlink permissions denied: %v", err)
		}
		t.Fatalf("Symlink error: %v", err)
	}

	resolved, err := filepath.EvalSymlinks(link)
	if err != nil {
		t.Fatalf("EvalSymlinks error: %v", err)
	}
	targetResolved, err := filepath.EvalSymlinks(target)
	if err != nil {
		t.Fatalf("EvalSymlinks target error: %v", err)
	}
	if resolved != targetResolved {
		t.Fatalf("EvalSymlinks mismatch: got %q want %q", resolved, targetResolved)
	}
}

func TestFilepathVolumeName(t *testing.T) {
	if runtime.GOOS == "windows" {
		if v := filepath.VolumeName(`C:\Windows\System32`); strings.ToUpper(v) != "C:" {
			t.Fatalf("VolumeName mismatch on Windows: %q", v)
		}
	} else {
		if v := filepath.VolumeName("/usr/bin"); v != "" {
			t.Fatalf("VolumeName mismatch on Unix: %q", v)
		}
	}
}

func runWithTimeout(t *testing.T, fn func()) {
	t.Helper()
	timer := time.AfterFunc(5*time.Second, func() {
		panic("filepath test timeout")
	})
	defer timer.Stop()
	fn()
}

func mustWrite(t *testing.T, path string) {
	t.Helper()
	if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
		t.Fatalf("MkdirAll error: %v", err)
	}
	if err := os.WriteFile(path, []byte("data"), 0o644); err != nil {
		t.Fatalf("WriteFile error: %v", err)
	}
}

func equalStrings(got, want []string) bool {
	if len(got) != len(want) {
		return false
	}
	for i := range got {
		if got[i] != want[i] {
			return false
		}
	}
	return true
}
