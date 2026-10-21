//go:build !llgo

package build

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestSIMDMapStorageDiagnostic(t *testing.T) {
	for _, source := range []string{
		"type Unused map[int]archsimd.Float32x4",
		"type V = archsimd.Float32x4; type Unused map[int]V",
		"type V archsimd.Float32x4; type Unused map[int]V",
		"type Unused map[int]struct { X [0]archsimd.Float32x4 }",
		"type M[T any] map[int]T; type Unused M[archsimd.Float32x4]",
	} {
		t.Run(source, func(t *testing.T) {
			dir := t.TempDir()
			for name, text := range map[string]string{"go.mod": "module layouttest\n\ngo 1.27\n", "main.go": "package main\nimport \"simd/archsimd\"\n" + source + "\nfunc main(){}\n"} {
				if err := os.WriteFile(filepath.Join(dir, name), []byte(text), 0600); err != nil {
					t.Fatal(err)
				}
			}
			conf := NewDefaultConf(ModeGen)
			conf.Goos, conf.Goarch, conf.GOAMD64, conf.GOEXPERIMENT = "linux", "amd64", "v1", "simd"
			_, err := Build(Invocation{Args: []string{"."}, Config: conf, Dir: dir})
			if err == nil || !strings.Contains(err.Error(), "vector storage is not supported in map value") || !strings.Contains(err.Error(), "main.go:3:") {
				t.Fatalf("positioned diagnostic: %v", err)
			}
		})
	}
}
