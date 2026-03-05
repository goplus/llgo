package html_test

import (
	"html"
	"testing"
)

func TestEscapeAndUnescapeString(t *testing.T) {
	raw := `<a href="x&y">Tom & Jerry</a>`
	escaped := html.EscapeString(raw)
	if escaped == raw {
		t.Fatalf("EscapeString did not escape input")
	}
	if got := html.UnescapeString(escaped); got != raw {
		t.Fatalf("UnescapeString(EscapeString(raw)) = %q, want %q", got, raw)
	}
}
