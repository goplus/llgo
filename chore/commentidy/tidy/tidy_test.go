package tidy_test

import (
	"bytes"
	"os"
	"testing"

	"github.com/goplus/llgo/chore/commentidy/tidy"
)

func TestTidySlashSlash(t *testing.T) {
	commentidy := tidy.NewCommentidy()
	code := `
	//good
	///good
	int foo(int a, int b) string {
		return "///abcdef"
	}
	`
	outBytes, _ := commentidy.TidyBytes([]byte(code))
	buf := bytes.NewBuffer(outBytes)
	buf.WriteTo(os.Stdout)
}

func TestTidySlashStar(t *testing.T) {
	commentidy := tidy.NewCommentidy()
	code := `
	/* */
	/*good
	///good
	int foo(int a, int b) string {
		return "/*abcdef*/"
	}
	`
	outBytes, _ := commentidy.TidyBytes([]byte(code))
	buf := bytes.NewBuffer(outBytes)
	buf.WriteTo(os.Stdout)
}
