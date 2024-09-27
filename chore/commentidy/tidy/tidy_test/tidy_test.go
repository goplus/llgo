package tidy_test

import (
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
	///good
	///good
	int foo(int a, int b);
	`
	filename := "./_input_file/foo.h"
	commentidy := tidy.NewCommentidy()
	outBytes, _ := commentidy.TidyFile(filename)
	compare(t, outBytes, expected)
}

func compare(t *testing.T, outBytes []byte, expectedString string) {
	eq, diff := cmp.EqualBytesIgnoreSpace(outBytes, []byte(expectedString))
	t.Helper()
	if !eq {
		t.Error(diff)
	}
}
