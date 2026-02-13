package cl

import (
	"go/ast"
	"os"
	"path/filepath"
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
	got := parseEmbedPatterns(doc)
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

func TestResolveEmbedPatterns(t *testing.T) {
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
