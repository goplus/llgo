package tidy_test

import (
	"io/fs"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llgo/chore/cmp"
	"github.com/goplus/llgo/chore/commentidy/tidy"
)

func TestTidySlashSlash(t *testing.T) {
	code := `
	//good
	///good
	int foo(int a, int b) string {
		return "///abcdef"
	}
	`
	expected := `
	///good
	///good
	int foo(int a, int b) string {
		return "///abcdef"
	}
	`
	commentidy := tidy.NewCommentidy()
	outBytes, _ := commentidy.TidyBytes([]byte(code))
	compare(t, outBytes, expected)
}

func TestTidySlashStar(t *testing.T) {
	code := `
	/* */
	/*good
	///good
	int foo(int a, int b) string {
		return "/*abcdef*/"
	}
	`
	expected := `
	/** */
	/**good
	///good
	int foo(int a, int b) string {
		return "/*abcdef*/"
	}
	`
	commentidy := tidy.NewCommentidy()
	outBytes, _ := commentidy.TidyBytes([]byte(code))
	compare(t, outBytes, expected)
}

func TestTidyFile(t *testing.T) {
	expected := `
	///
///
	///good
///good
int foo(int a, int b);

///good
///good
int foo(int a, int b) string {
    return "///abcdef"
}

/** */
/**good
///good
int foo(int a, int b) string {
    return "/*abcdef*/
}

///good
///good
int foo(int a, int b);
	`
	filename := "./_input_file/foo.h"
	commentidy := tidy.NewCommentidy()
	outBytes, _ := commentidy.TidyFile(filename)
	compare(t, outBytes, expected)
}

func TestTidyDir(t *testing.T) {
	commentidy := tidy.NewCommentidy()
	err := commentidy.TidyDir("./_input_file", ".h")
	if err != nil {
		t.Error(err)
	}
}

func TestTidyDirErr(t *testing.T) {
	commentidy := tidy.NewCommentidy()
	err := commentidy.TidyDir("./_input_file/files", ".h")
	if !os.IsNotExist(err) {
		t.Error(err)
	}
}

func TestTidyDirWithFilter(t *testing.T) {
	commentidy := tidy.NewCommentidy()
	err := commentidy.TidyDirWithFilter("./_input_file", func(path string, d fs.DirEntry, err error) bool {
		if strings.HasSuffix(d.Name(), ".out.h") {
			return true
		}
		if !d.IsDir() && strings.Contains(d.Name(), "vki") {
			return true
		}
		if filepath.Ext(path) != ".h" {
			return true
		}
		if d.Name() == "foo.h" {
			return true
		}
		return false
	})
	if err != nil {
		t.Error(err)
	}
}

func compare(t *testing.T, outBytes []byte, expectedString string) {
	eq, diff := cmp.EqualBytesIgnoreSpace(outBytes, []byte(expectedString))
	t.Helper()
	if !eq {
		t.Error(diff)
	}
}
