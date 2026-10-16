package clang

import (
	"encoding/binary"
	"os"
	"os/exec"
	"path/filepath"
	"slices"
	"strings"
	"testing"
	"unicode/utf16"
)

func TestTokenizeResponseFile(t *testing.T) {
	for _, tt := range []struct {
		name, text string
		windows    bool
		want       []string
	}{
		{"GNU quotes", `one "two three" 'four five' six\ seven '' ""`, false, []string{"one", "two three", "four five", "six seven", "", ""}},
		{"GNU concatenation", `pre"mid dle"'end' 'a\'b' "c\\d"`, false, []string{"premid dleend", "a'b", `c\d`}},
		{"GNU unterminated", "a\t\r\nb 'unterminated\\", false, []string{"a", "b", `unterminated\`}},
		{"GNU no shell expansion", `$HOME $(echo) #comment`, false, []string{"$HOME", "$(echo)", "#comment"}},
		{"Windows quotes", `one "two three" 'four five' "a""b" ""`, true, []string{"one", "two three", "'four", "five'", `a"b`, ""}},
		{"Windows backslashes", `C:\path "C:\two words\\" "a\"b"`, true, []string{`C:\path`, `C:\two words\`, `a"b`}},
		{"Windows nul", "a\x00b", true, []string{"a", "b"}},
	} {
		t.Run(tt.name, func(t *testing.T) {
			if got := tokenizeResponseFile(tt.text, tt.windows); !slices.Equal(got, tt.want) {
				t.Fatalf("tokens = %q, want %q", got, tt.want)
			}
		})
	}
}

func TestExpandGNUDriverResponseFiles(t *testing.T) {
	root := t.TempDir()
	write := func(name, content string) {
		t.Helper()
		path := filepath.Join(root, name)
		if err := os.MkdirAll(filepath.Dir(path), 0755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte(content), 0600); err != nil {
			t.Fatal(err)
		}
	}
	write("sub/outer.rsp", "before @inner.rsp after")
	write("inner.rsp", `"--ld-path=path with spaces/ld64.lld"`)
	write("sub/inner.rsp", "wrong-working-directory")
	args := []string{"first", "@sub/outer.rsp", "@inner.rsp", "-Wl,@linker.rsp", "@missing.rsp", "last"}
	want := []string{"first", "before", "--ld-path=path with spaces/ld64.lld", "after", "--ld-path=path with spaces/ld64.lld", "-Wl,@linker.rsp", "@missing.rsp", "last"}
	got, err := ExpandGNUDriverResponseFiles(root, args)
	if err != nil || !slices.Equal(got, want) {
		t.Fatalf("expanded = %q, %v; want %q", got, err, want)
	}
	if args[1] != "@sub/outer.rsp" {
		t.Fatal("modified caller arguments")
	}
	write("cycle.rsp", "@sub/other.rsp")
	write("sub/other.rsp", "@cycle.rsp")
	if _, err := ExpandGNUDriverResponseFiles(root, []string{"@cycle.rsp"}); err == nil || !strings.Contains(err.Error(), "recursive") {
		t.Fatalf("cycle: %v", err)
	}
	if _, err := ExpandGNUDriverResponseFiles(root, []string{"@sub"}); err == nil {
		t.Fatal("accepted a directory as a response file")
	}
	write("alias.rsp", "@alias-link.rsp")
	if err := os.Symlink(filepath.Join(root, "alias.rsp"), filepath.Join(root, "alias-link.rsp")); err == nil {
		if _, err := ExpandGNUDriverResponseFiles(root, []string{"@alias.rsp"}); err == nil || !strings.Contains(err.Error(), "recursive") {
			t.Fatalf("symlink cycle: %v", err)
		}
	}
}

func TestResponseFileEncoding(t *testing.T) {
	text := `--ld-path="目录/😀/ld64.lld"`
	for _, order := range []binary.ByteOrder{binary.LittleEndian, binary.BigEndian} {
		data := []byte{0, 0}
		order.PutUint16(data, 0xfeff)
		for _, r := range utf16.Encode([]rune(text)) {
			data = append(data, 0, 0)
			order.PutUint16(data[len(data)-2:], r)
		}
		if got, err := responseFileText(data); err != nil || got != text {
			t.Fatalf("UTF-16 %v: %q, %v", order, got, err)
		}
	}
	if got, err := responseFileText([]byte("\xef\xbb\xbf" + text)); err != nil || got != text {
		t.Fatalf("UTF-8 BOM: %q, %v", got, err)
	}
	for _, data := range [][]byte{{0xff, 0xfe, 1}, {0xff, 0xfe, 0, 0xd8}, {0xff, 0xfe, 0, 0xd8, 0, 0}} {
		if _, err := responseFileText(data); err == nil {
			t.Fatalf("accepted invalid UTF-16: %x", data)
		}
	}
}

func TestResponseFileSymlinkTraversal(t *testing.T) {
	root := t.TempDir()
	if err := os.MkdirAll(filepath.Join(root, "real/sub"), 0755); err != nil {
		t.Fatal(err)
	}
	if err := os.Symlink(filepath.Join(root, "real/sub"), filepath.Join(root, "link")); err != nil {
		t.Skipf("symlinks unavailable: %v", err)
	}
	for name, content := range map[string]string{
		"flags.rsp":      "--print-prog-name=llgo-wrong-cleaned-path",
		"real/flags.rsp": "--print-prog-name=llgo-correct-symlink-path",
		"outer.rsp":      "@link/../flags.rsp",
	} {
		if err := os.WriteFile(filepath.Join(root, name), []byte(content), 0600); err != nil {
			t.Fatal(err)
		}
	}
	compiler, _ := exec.LookPath("clang")
	for _, file := range []string{"link/../flags.rsp", root + "/link/../flags.rsp", "outer.rsp"} {
		args := []string{"@" + file}
		got, err := ExpandGNUDriverResponseFiles(root, args)
		want := "llgo-correct-symlink-path"
		if err != nil || !slices.Equal(got, []string{"--print-prog-name=" + want}) {
			t.Fatalf("expand %q = %q, %v", file, got, err)
		}
		if compiler != "" {
			cmd := exec.Command(compiler, args...)
			cmd.Dir = root
			out, err := cmd.Output()
			if err != nil || strings.TrimSpace(string(out)) != want {
				t.Fatalf("clang %q = %q, %v", file, out, err)
			}
		}
	}
}

// Compare expansion with a real driver, including the quoting-mode switch and
// nested paths. --print-prog-name echoes our nonexistent name without linking.
func TestResponseFilesMatchClang(t *testing.T) {
	compiler, err := exec.LookPath("clang")
	if err != nil {
		t.Skip("clang is unavailable")
	}
	root := t.TempDir()
	if err := os.Mkdir(filepath.Join(root, "sub"), 0755); err != nil {
		t.Fatal(err)
	}
	for _, tt := range []struct {
		name, content, want string
		flags               []string
	}{
		{"GNU", `--print-prog-name="llgo missing 'tool'\\name"`, `llgo missing 'tool'\name`, nil},
		{"GNU escaped single quote", `--print-prog-name='llgo missing \'tool\''`, `llgo missing 'tool'`, nil},
		{"Windows", `--print-prog-name="llgo missing 'tool'\name"`, `llgo missing 'tool'\name`, []string{"--rsp-quoting=windows"}},
		{"last mode wins", `--print-prog-name='llgo missing tool'`, "llgo missing tool", []string{"--rsp-quoting=windows", "--rsp-quoting=posix"}},
		{"nested mode is not applied", `--rsp-quoting=windows --print-prog-name='llgo missing tool'`, "llgo missing tool", nil},
		{"UTF8 BOM", "\xef\xbb\xbf--print-prog-name='llgo missing 目录'", "llgo missing 目录", nil},
	} {
		t.Run(tt.name, func(t *testing.T) {
			if err := os.WriteFile(filepath.Join(root, "inner.rsp"), []byte(tt.content), 0600); err != nil {
				t.Fatal(err)
			}
			if err := os.WriteFile(filepath.Join(root, "sub/outer.rsp"), []byte("@inner.rsp"), 0600); err != nil {
				t.Fatal(err)
			}
			args := append(slices.Clone(tt.flags), "@sub/outer.rsp")
			expanded, err := ExpandGNUDriverResponseFiles(root, args)
			if err != nil {
				t.Fatal(err)
			}
			for _, argv := range [][]string{args, expanded} {
				cmd := exec.Command(compiler, argv...)
				cmd.Dir = root
				out, err := cmd.Output()
				if err != nil || strings.TrimRight(string(out), "\r\n") != tt.want {
					t.Fatalf("clang %q = %q, %v; want %q", argv, out, err, tt.want)
				}
			}
		})
	}
}
