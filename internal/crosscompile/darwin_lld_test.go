package crosscompile

import (
	"os"
	"path/filepath"
	"slices"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/lto"
	"github.com/xgo-dev/llgo/internal/optlevel"
)

func TestNativeBundledDarwinLLD(t *testing.T) {
	root := filepath.Join(t.TempDir(), "LLGo with spaces,commas")
	path := filepath.Join(root, "libexec", "llgo", "ld64.lld")
	if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
		t.Fatal(err)
	}
	for _, mode := range []lto.Mode{lto.Off, lto.Thin, lto.Full} {
		want := nativeLLDFlags(nativeToolchain("darwin"), optlevel.O2, mode)
		got, err := nativeLinkerFlags(root, nativeToolchain("darwin"), optlevel.O2, mode)
		if err != nil || !slices.Equal(got, want) {
			t.Fatalf("source checkout: got %v, %v; want %v", got, err, want)
		}
	}
	if err := os.WriteFile(path, []byte("test linker"), 0o755); err != nil {
		t.Fatal(err)
	}
	for _, goos := range []string{"darwin", "linux", "windows"} {
		for _, mode := range []lto.Mode{lto.Off, lto.Thin, lto.Full} {
			profile := nativeToolchain(goos)
			want := nativeLLDFlags(profile, optlevel.O2, mode)
			if goos == "darwin" {
				want[0] = "-fuse-ld=" + path
			}
			got, err := nativeLinkerFlags(root, profile, optlevel.O2, mode)
			if err != nil || !slices.Equal(got, want) {
				t.Fatalf("%s %v: got %v, %v; want %v", goos, mode, got, err, want)
			}
		}
	}
	if err := os.Remove(path); err != nil {
		t.Fatal(err)
	}
	if err := os.Mkdir(path, 0o755); err != nil {
		t.Fatal(err)
	}
	if _, err := nativeLinkerFlags(root, nativeToolchain("darwin"), optlevel.O2, lto.Off); err == nil || !strings.Contains(err.Error(), "not a regular file") {
		t.Fatalf("invalid bundled linker: %v", err)
	}
}
