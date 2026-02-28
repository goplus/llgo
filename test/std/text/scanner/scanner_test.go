package scanner_test

import (
	"strings"
	"testing"
	"text/scanner"
	"unicode"
)

func TestScannerConstants(t *testing.T) {
	mode := scanner.ScanIdents | scanner.ScanInts | scanner.ScanFloats | scanner.ScanChars |
		scanner.ScanStrings | scanner.ScanRawStrings | scanner.ScanComments | scanner.SkipComments
	if mode&scanner.ScanInts == 0 {
		t.Fatal("mode should include ScanInts")
	}
	if scanner.GoTokens&scanner.ScanRawStrings == 0 {
		t.Fatal("GoTokens should include ScanRawStrings")
	}
	if scanner.GoWhitespace&(1<<' ') == 0 {
		t.Fatal("GoWhitespace should include space")
	}

	tokens := []rune{
		scanner.EOF,
		scanner.Ident,
		scanner.Int,
		scanner.Float,
		scanner.Char,
		scanner.String,
		scanner.RawString,
		scanner.Comment,
	}
	for _, tok := range tokens {
		if scanner.TokenString(tok) == "" {
			t.Fatalf("TokenString for %v should not be empty", tok)
		}
	}
	if got := scanner.TokenString('x'); got != "\"x\"" {
		t.Fatalf("TokenString for literal expected quoted rune, got %q", got)
	}
}

func TestScannerUsage(t *testing.T) {
	var s scanner.Scanner
	source := strings.NewReader("ident 123 'a' \"str\" `raw`\n// comment\n")
	s.Init(source)
	s.Mode = scanner.GoTokens
	s.Whitespace = scanner.GoWhitespace
	s.IsIdentRune = func(r rune, i int) bool {
		if r == '_' || r == '$' {
			return true
		}
		if unicode.IsLetter(r) {
			return true
		}
		return i > 0 && unicode.IsDigit(r)
	}

	firstPeek := s.Peek()
	if firstPeek == scanner.EOF {
		t.Fatal("Peek should not report EOF at start")
	}

	var tokens []rune
	for tok := s.Scan(); tok != scanner.EOF; tok = s.Scan() {
		tokens = append(tokens, tok)
		if s.TokenText() == "" {
			t.Fatal("TokenText returned empty")
		}
	}
	if len(tokens) == 0 {
		t.Fatal("expected tokens to be scanned")
	}

	pos := s.Pos()
	if !pos.IsValid() {
		t.Fatal("Pos should be valid after scanning tokens")
	}
	if !strings.Contains(pos.String(), ":") {
		t.Fatalf("expected position string to contain colon, got %q", pos.String())
	}
}

func TestScannerPositionAndNext(t *testing.T) {
	pos := scanner.Position{Filename: "file.txt", Line: 2, Column: 3}
	if !pos.IsValid() {
		t.Fatal("Position should be valid when line > 0")
	}
	if want := "file.txt:2:3"; pos.String() != want {
		t.Fatalf("Position string mismatch: got %q want %q", pos.String(), want)
	}

	var s scanner.Scanner
	s.Init(strings.NewReader("go"))
	r := s.Next()
	if r != 'g' {
		t.Fatalf("Next expected 'g', got %q", r)
	}
	if s.Position.IsValid() {
		t.Fatal("embedded Position should be invalid immediately after Next")
	}
	if pos := s.Pos(); !pos.IsValid() {
		t.Fatal("Pos should provide a valid position after Next")
	}
}
