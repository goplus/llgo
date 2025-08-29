package compile

import (
	"os"
	"strings"
	"testing"

	"github.com/goplus/llgo/xtool/nm"
)

func TestIsCompile(t *testing.T) {
	t.Run("IsCompile Not Exists", func(t *testing.T) {
		cfg := CompileConfig{
			Groups: []CompileGroup{
				{
					OutputFileName: "fakefile1.a",
				},
			},
		}

		if cfg.IsCompiled(".") || cfg.Groups[0].IsCompiled(".") {
			t.Errorf("unexpected result: should false")
		}
	})
	t.Run("IsCompile Exists", func(t *testing.T) {
		tmpFile, err := os.CreateTemp(".", "test*.a")
		if err != nil {
			t.Error(err)
			return
		}
		defer os.Remove(tmpFile.Name())
		cfg := CompileConfig{
			Groups: []CompileGroup{
				{
					OutputFileName: tmpFile.Name(),
				},
			},
		}

		if !cfg.IsCompiled(".") && !cfg.Groups[0].IsCompiled(".") {
			t.Errorf("unexpected result: should true")
		}
	})
}

func TestCompile(t *testing.T) {
	t.Run("Skip compile", func(t *testing.T) {
		tmpFile, err := os.CreateTemp(".", "test*.a")
		if err != nil {
			t.Error(err)
			return
		}
		defer os.Remove(tmpFile.Name())
		group := CompileGroup{
			OutputFileName: tmpFile.Name(),
		}
		err = group.Compile(".", "clang", "lld", nil, nil)
		if err != nil {
			t.Errorf("unexpected result: should nil")
		}
	})

	t.Run("TmpDir Fail", func(t *testing.T) {
		err := os.Mkdir("test-compile", 0)
		if err != nil {
			t.Error(err)
			return
		}
		defer os.RemoveAll("test-compile")

		os.Setenv("TMPDIR", "test-compile")
		defer os.Unsetenv("TMPDIR")

		group := CompileGroup{
			OutputFileName: "nop.a",
		}
		err = group.Compile(".", "clang", "lld", nil, nil)
		if err == nil {
			t.Errorf("unexpected result: should not nil")
		}
	})

	t.Run("Compile", func(t *testing.T) {
		tmpFile, err := os.CreateTemp("", "test*.c")
		if err != nil {
			t.Error(err)
			return
		}
		defer os.Remove(tmpFile.Name())

		_, err = tmpFile.Write([]byte(`#include <math.h>
		void Foo() {
			double x = 2.0;
			double y = sqrt(x);
			(void) y ;
		}
		`))
		if err != nil {
			t.Error(err)
			return
		}

		group := CompileGroup{
			OutputFileName: "nop.a",
			Files:          []string{tmpFile.Name()},
		}
		err = group.Compile(".", "clang", "lld", []string{"-nostdinc"}, nil)
		if err == nil {
			t.Errorf("unexpected result: should not nil")
		}
		err = group.Compile(".", "clang", "lld", nil, nil)
		if err != nil {
			t.Errorf("unexpected result: should not nil")
		}
		if _, err := os.Stat("nop.a"); os.IsNotExist(err) {
			t.Error("unexpected result: compiled nop.a not found")
			return
		}
		defer os.Remove("nop.a")

		items, err := nm.New("").List("nop.a")
		if err != nil {
			t.Error(err)
			return
		}

		want := "Foo"
		found := false
	loop:
		for _, item := range items {
			for _, sym := range item.Symbols {
				if strings.Contains(sym.Name, want) {
					found = true
					break loop
				}
			}
		}
		if !found {
			t.Errorf("cannot find symbol Foo")
		}
	})
}
