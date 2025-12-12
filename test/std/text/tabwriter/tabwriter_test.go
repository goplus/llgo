package tabwriter_test

import (
	"bytes"
	"strings"
	"testing"
	"text/tabwriter"
)

func TestTabWriterFormatting(t *testing.T) {
	var buf bytes.Buffer

	w := tabwriter.NewWriter(&buf, 0, 8, 2, ' ', tabwriter.FilterHTML|tabwriter.StripEscape|tabwriter.Debug|tabwriter.TabIndent)
	if _, err := w.Write([]byte("<b>Name</b>\tValue\tNote\n")); err != nil {
		t.Fatalf("Write failed: %v", err)
	}
	if _, err := w.Write([]byte("A\t10\tEscaped\t")); err != nil {
		t.Fatalf("Write failed: %v", err)
	}
	if _, err := w.Write([]byte{tabwriter.Escape}); err != nil {
		t.Fatalf("Write escape failed: %v", err)
	}
	if _, err := w.Write([]byte("Hidden Text")); err != nil {
		t.Fatalf("Write hidden text failed: %v", err)
	}
	if _, err := w.Write([]byte{tabwriter.Escape, '\n'}); err != nil {
		t.Fatalf("Write closing escape failed: %v", err)
	}
	if err := w.Flush(); err != nil {
		t.Fatalf("Flush failed: %v", err)
	}

	output := buf.String()
	if !strings.Contains(output, "|") {
		t.Fatalf("expected debug output to include column separators, got %q", output)
	}
	if !strings.Contains(output, "Hidden Text") {
		t.Fatalf("escaped text should remain when StripEscape is set, got %q", output)
	}
	if strings.ContainsRune(output, rune(tabwriter.Escape)) {
		t.Fatalf("Escape characters should be stripped from output, got %q", output)
	}

	buf.Reset()
	w.Init(&buf, 4, 4, 1, ' ', tabwriter.AlignRight|tabwriter.DiscardEmptyColumns)
	if _, err := w.Write([]byte("Left\t\t42\n")); err != nil {
		t.Fatalf("Write failed: %v", err)
	}
	if _, err := w.Write([]byte("Wide\t12345\t\n")); err != nil {
		t.Fatalf("Write failed: %v", err)
	}
	if err := w.Flush(); err != nil {
		t.Fatalf("Flush failed: %v", err)
	}
	output = buf.String()
	lines := strings.Split(strings.TrimSpace(output), "\n")
	if len(lines) != 2 {
		t.Fatalf("expected 2 lines, got %d", len(lines))
	}
	if strings.Contains(lines[0], "\t") {
		t.Fatalf("tabs should be expanded in formatted output, got %q", lines[0])
	}
	if !strings.Contains(lines[0], " 42") {
		t.Fatalf("AlignRight should pad numeric column, got %q", lines[0])
	}
}
