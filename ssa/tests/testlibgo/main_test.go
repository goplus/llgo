//go:build !llgo
// +build !llgo

package testlibgo_test

import (
	"flag"
	"io"
	"log"
	"os"
	"path/filepath"
	"runtime"
	"testing"

	"github.com/goplus/llgo/ssa"
)

func TestMain(m *testing.M) {
	flag.Parse()
	ssa.SetDebug(ssa.DbgFlagAll)
	if !testing.Verbose() {
		log.SetOutput(io.Discard)
	}
	_, file, _, ok := runtime.Caller(0)
	if !ok {
		panic("runtime.Caller failed")
	}
	ssaDir := filepath.Clean(filepath.Join(filepath.Dir(file), "..", ".."))
	if err := os.Chdir(ssaDir); err != nil {
		panic(err)
	}
	os.Exit(m.Run())
}
