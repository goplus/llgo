package cl

import (
	"go/ast"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
)

func TestParseEmbedPatterns(t *testing.T) {
	doc := &ast.CommentGroup{
		List: []*ast.Comment{
			{Text: "// comment"},
			{Text: "//go:embed testdata/hello.txt assets/*.json"},
			{Text: "//go:embed \"space name.txt\""},
		},
	}
	got, has, err := parseEmbedPatterns(doc)
	if err != nil {
		t.Fatalf("parseEmbedPatterns error: %v", err)
	}
	if !has {
		t.Fatalf("parseEmbedPatterns did not detect directive")
	}
	want := []string{"testdata/hello.txt", "assets/*.json", "space name.txt"}
	if len(got) != len(want) {
		t.Fatalf("pattern count = %d, want %d (%v)", len(got), len(want), got)
	}
	for i := range want {
		if got[i] != want[i] {
			t.Fatalf("pattern[%d] = %q, want %q", i, got[i], want[i])
		}
	}
}

func TestParseEmbedPatterns_InvalidQuoted(t *testing.T) {
	doc := &ast.CommentGroup{
		List: []*ast.Comment{
			{Text: "//go:embed \"unclosed.txt"},
		},
	}
	_, has, err := parseEmbedPatterns(doc)
	if !has {
		t.Fatalf("parseEmbedPatterns should detect directive")
	}
	if err == nil {
		t.Fatalf("parseEmbedPatterns should fail for invalid quoted pattern")
	}
}

func TestFileImportsEmbed(t *testing.T) {
	file := &ast.File{
		Imports: []*ast.ImportSpec{
			{Path: &ast.BasicLit{Value: `"fmt"`}},
			{Path: &ast.BasicLit{Value: `"embed"`}},
		},
	}
	if !fileImportsEmbed(file) {
		t.Fatalf("fileImportsEmbed = false, want true")
	}
}

func TestResolveEmbedPatterns_HiddenAndAll(t *testing.T) {
	dir := t.TempDir()
	mustWrite := func(rel, data string) {
		path := filepath.Join(dir, rel)
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatalf("mkdir %s: %v", rel, err)
		}
		if err := os.WriteFile(path, []byte(data), 0o644); err != nil {
			t.Fatalf("write %s: %v", rel, err)
		}
	}
	mustWrite("testdata/hello.txt", "Hello, World!")
	mustWrite("testdata/.hidden.txt", "hidden")
	mustWrite("testdata/sub/world.txt", "world")
	mustWrite("testdata/sub/.deep.txt", "deep")

	got, err := resolveEmbedPatterns(dir, []string{"testdata"})
	if err != nil {
		t.Fatalf("resolveEmbedPatterns: %v", err)
	}
	seen := map[string]bool{}
	for _, f := range got {
		seen[f.name] = true
	}
	if !seen["testdata/hello.txt"] {
		t.Fatalf("missing embedded file testdata/hello.txt: %+v", got)
	}
	if !seen["testdata/sub/world.txt"] {
		t.Fatalf("missing embedded file testdata/sub/world.txt: %+v", got)
	}
	if seen["testdata/.hidden.txt"] {
		t.Fatalf("unexpected hidden file in default mode: %+v", got)
	}
	if seen["testdata/sub/.deep.txt"] {
		t.Fatalf("unexpected hidden nested file in default mode: %+v", got)
	}

	gotAll, err := resolveEmbedPatterns(dir, []string{"all:testdata"})
	if err != nil {
		t.Fatalf("resolveEmbedPatterns(all:): %v", err)
	}
	seenAll := map[string]bool{}
	for _, f := range gotAll {
		seenAll[f.name] = true
	}
	if !seenAll["testdata/.hidden.txt"] {
		t.Fatalf("missing hidden file in all: mode: %+v", gotAll)
	}
	if !seenAll["testdata/sub/.deep.txt"] {
		t.Fatalf("missing hidden nested file in all: mode: %+v", gotAll)
	}
}

func TestResolveEmbedPatterns_Errors(t *testing.T) {
	dir := t.TempDir()
	mustWrite := func(rel, data string) {
		path := filepath.Join(dir, rel)
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatalf("mkdir %s: %v", rel, err)
		}
		if err := os.WriteFile(path, []byte(data), 0o644); err != nil {
			t.Fatalf("write %s: %v", rel, err)
		}
	}
	mustWrite("data/file.txt", "ok")
	if err := os.MkdirAll(filepath.Join(dir, "empty"), 0o755); err != nil {
		t.Fatalf("mkdir empty: %v", err)
	}
	if err := os.MkdirAll(filepath.Join(dir, "submod"), 0o755); err != nil {
		t.Fatalf("mkdir submod: %v", err)
	}
	mustWrite("submod/go.mod", "module x\n")
	mustWrite("submod/a.txt", "submodule")

	cases := []struct {
		pattern string
		wantErr string
	}{
		{pattern: ".", wantErr: "invalid pattern syntax"},
		{pattern: "no_such_*.txt", wantErr: "no matching files found"},
		{pattern: "empty", wantErr: "contains no embeddable files"},
		{pattern: "submod", wantErr: "in different module"},
	}

	for _, tc := range cases {
		_, err := resolveEmbedPatterns(dir, []string{tc.pattern})
		if err == nil {
			t.Fatalf("resolveEmbedPatterns(%q) should fail", tc.pattern)
		}
		if !strings.Contains(err.Error(), tc.wantErr) {
			t.Fatalf("resolveEmbedPatterns(%q) error = %v, want substring %q", tc.pattern, err, tc.wantErr)
		}
	}
}

func TestResolveEmbedPatterns_RejectIrregularAndInvalidName(t *testing.T) {
	dir := t.TempDir()
	if runtime.GOOS == "windows" {
		t.Skip("file name with ':' is not portable on windows")
	}

	mustWrite := func(rel, data string) {
		path := filepath.Join(dir, rel)
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatalf("mkdir %s: %v", rel, err)
		}
		if err := os.WriteFile(path, []byte(data), 0o644); err != nil {
			t.Fatalf("write %s: %v", rel, err)
		}
	}
	mustWrite("bad:name.txt", "bad")
	_, err := resolveEmbedPatterns(dir, []string{"bad:name.txt"})
	if err == nil || !strings.Contains(err.Error(), "invalid name") {
		t.Fatalf("resolveEmbedPatterns invalid-name error = %v, want invalid name", err)
	}

	mustWrite("target.txt", "ok")
	if err := os.Symlink(filepath.Join(dir, "target.txt"), filepath.Join(dir, "link.txt")); err != nil {
		t.Skipf("symlink not supported: %v", err)
	}
	_, err = resolveEmbedPatterns(dir, []string{"link.txt"})
	if err == nil || !strings.Contains(err.Error(), "irregular file") {
		t.Fatalf("resolveEmbedPatterns irregular-file error = %v, want irregular file", err)
	}
}

func TestBuildEmbedFSEntries(t *testing.T) {
	files := []embedFileData{
		{name: "testdata/hello.txt", data: []byte("hello")},
		{name: "assets/static/app.js", data: []byte("app")},
	}
	got := buildEmbedFSEntries(files)
	seen := map[string]bool{}
	for _, e := range got {
		seen[e.name] = true
	}
	for _, name := range []string{
		"assets/",
		"assets/static/",
		"assets/static/app.js",
		"testdata/",
		"testdata/hello.txt",
	} {
		if !seen[name] {
			t.Fatalf("missing entry %q in %+v", name, got)
		}
	}

	// root directories should be listed before child files in split(dir, elem) order.
	pos := map[string]int{}
	for i, e := range got {
		pos[e.name] = i
	}
	if pos["testdata/"] >= pos["testdata/hello.txt"] {
		t.Fatalf("directory entry should precede file entry: %+v", got)
	}
}
