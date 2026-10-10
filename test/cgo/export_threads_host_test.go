//go:build !llgo && !wasm

package cgo

import (
	"testing"

	"github.com/xgo-dev/llgo/internal/build"
)

// Build in-process so host Go coverage records the compiler paths exercised by
// the fixture, even though its source and runtime assertions live under test/.
func buildCExportFixture(t *testing.T, dir, output string) {
	t.Helper()
	t.Chdir(dir)
	conf := build.NewDefaultConf(build.ModeBuild)
	conf.OutFile = output
	if _, err := build.Do([]string{"."}, conf); err != nil {
		t.Fatal(err)
	}
}
