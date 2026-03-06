package path_test

import (
	"errors"
	"path"
	"testing"
)

func TestPathBasics(t *testing.T) {
	if got := path.Base("/a/b/c.txt"); got != "c.txt" {
		t.Fatalf("Base mismatch: got %q", got)
	}
	if got := path.Clean("//foo/./bar/.."); got != "/foo" {
		t.Fatalf("Clean mismatch: got %q", got)
	}
	if got := path.Dir("/foo/bar/file"); got != "/foo/bar" {
		t.Fatalf("Dir mismatch: got %q", got)
	}
	if got := path.Ext("file.tar.gz"); got != ".gz" {
		t.Fatalf("Ext mismatch: got %q", got)
	}
	if !path.IsAbs("/absolute/path") {
		t.Fatalf("IsAbs should report absolute path")
	}
}

func TestPathJoinAndSplit(t *testing.T) {
	if got := path.Join("a", "b", "c"); got != "a/b/c" {
		t.Fatalf("Join mismatch: got %q", got)
	}
	dir, file := path.Split("pkg/module.go")
	if dir != "pkg/" || file != "module.go" {
		t.Fatalf("Split mismatch: dir=%q file=%q", dir, file)
	}
}

func TestPathMatchAndErrors(t *testing.T) {
	ok, err := path.Match("*.go", "main.go")
	if err != nil || !ok {
		t.Fatalf("Match expected true, err=%v", err)
	}

	_, err = path.Match("[invalid", "file")
	if !errors.Is(err, path.ErrBadPattern) {
		t.Fatalf("Match should return ErrBadPattern, got %v", err)
	}
}
