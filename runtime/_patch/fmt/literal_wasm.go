//go:build llgo && wasm

package fmt

import (
	"io"
	"os"
)

// The compiler selects these entries only for constant formats containing
// literal text and escaped percent signs, with no formatting arguments.
// Keep Write (including empty writes), its count/error and the current Stdout.
// An arbitrary Writer may implement WriteString differently from Write.
func llgoPrintfLiteral(text string) (int, error) {
	return os.Stdout.Write([]byte(text))
}

func llgoFprintfLiteral(w io.Writer, text string) (int, error) {
	return w.Write([]byte(text))
}

func llgoSprintfLiteral(text string) string {
	return text
}
