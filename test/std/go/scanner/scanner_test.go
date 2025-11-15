package scanner_test

import (
	"bytes"
	"go/scanner"
	"go/token"
	"slices"
	"strings"
	"testing"
)

type tokenInfo struct {
	Tok      token.Token
	Literal  string
	Position token.Position
}

func scanAll(src string, mode scanner.Mode, handler scanner.ErrorHandler) ([]tokenInfo, int) {
	fset := token.NewFileSet()
	file := fset.AddFile("scanner_input.go", fset.Base(), len(src))

	var s scanner.Scanner
	s.Init(file, []byte(src), handler, mode)

	tokens := make([]tokenInfo, 0, 16)
	for {
		pos, tok, lit := s.Scan()
		tokens = append(tokens, tokenInfo{
			Tok:      tok,
			Literal:  lit,
			Position: fset.Position(pos),
		})
		if tok == token.EOF {
			break
		}
	}

	return tokens, s.ErrorCount
}

func TestScannerCommentsMode(t *testing.T) {
	const src = "package p\n// line comment\nvar x = 1\n/* block comment */\n"

	tokens, _ := scanAll(src, scanner.ScanComments, nil)
	var comments []string
	for _, tok := range tokens {
		if tok.Tok == token.COMMENT {
			comments = append(comments, tok.Literal)
		}
	}

	want := []string{"// line comment", "/* block comment */"}
	if !slices.Equal(comments, want) {
		t.Fatalf("ScanComments mismatch:\n got  %v\n want %v", comments, want)
	}

	tokensNoComments, _ := scanAll(src, 0, nil)
	for _, tok := range tokensNoComments {
		if tok.Tok == token.COMMENT {
			t.Fatalf("unexpected comment token %q without ScanComments", tok.Literal)
		}
	}
}

func TestScannerErrorHandler(t *testing.T) {
	const src = "package p\n'\n"

	type scanErr struct {
		Pos token.Position
		Msg string
	}

	var errs []scanErr
	var handler scanner.ErrorHandler = func(pos token.Position, msg string) {
		errs = append(errs, scanErr{Pos: pos, Msg: msg})
	}

	_, count := scanAll(src, 0, handler)

	if count != len(errs) {
		t.Fatalf("ErrorCount mismatch: handler saw %d errors, counter=%d", len(errs), count)
	}
	if len(errs) != 1 {
		t.Fatalf("expected exactly one error, got %d", len(errs))
	}
	if errs[0].Pos.Line != 2 || errs[0].Pos.Column != 1 {
		t.Fatalf("error position mismatch: got line %d column %d", errs[0].Pos.Line, errs[0].Pos.Column)
	}
	if !strings.Contains(errs[0].Msg, "rune literal not terminated") {
		t.Fatalf("unexpected error message: %q", errs[0].Msg)
	}
}

func TestScannerPositionReporting(t *testing.T) {
	const src = "package main\nvar value = 123 + 4\n"

	tokens, _ := scanAll(src, scanner.ScanComments, nil)

	var saw123, saw4, sawEOF bool
	for _, tok := range tokens {
		switch {
		case tok.Tok == token.INT && tok.Literal == "123":
			if tok.Position.Line != 2 || tok.Position.Column != 13 {
				t.Fatalf("123 position mismatch: %d:%d", tok.Position.Line, tok.Position.Column)
			}
			saw123 = true
		case tok.Tok == token.INT && tok.Literal == "4":
			if tok.Position.Line != 2 || tok.Position.Column != 19 {
				t.Fatalf("4 position mismatch: %d:%d", tok.Position.Line, tok.Position.Column)
			}
			saw4 = true
		case tok.Tok == token.EOF:
			sawEOF = true
			if tok.Position.Line != 2 {
				t.Fatalf("EOF line mismatch: %d", tok.Position.Line)
			}
		}
	}

	if !saw123 || !saw4 || !sawEOF {
		t.Fatalf("missing expected tokens (123: %v, 4: %v, EOF: %v)", saw123, saw4, sawEOF)
	}
}

func TestScannerInitSizeMismatchPanics(t *testing.T) {
	var s scanner.Scanner
	fset := token.NewFileSet()
	file := fset.AddFile("broken.go", fset.Base(), 10)

	defer func() {
		if r := recover(); r == nil {
			t.Fatalf("Scanner.Init should panic when file size and source length differ")
		}
	}()

	s.Init(file, []byte("short"), nil, 0)
}

func TestErrorListUtilities(t *testing.T) {
	var list scanner.ErrorList
	if err := list.Err(); err != nil {
		t.Fatalf("unexpected error from empty list: %v", err)
	}

	first := &scanner.Error{
		Pos: token.Position{Filename: "a.go", Line: 2, Column: 5},
		Msg: "first issue",
	}
	second := &scanner.Error{
		Pos: token.Position{Filename: "a.go", Line: 2, Column: 8},
		Msg: "duplicate line",
	}
	third := &scanner.Error{
		Pos: token.Position{Filename: "a.go", Line: 3, Column: 1},
		Msg: "another issue",
	}

	if got := first.Error(); !strings.Contains(got, "first issue") {
		t.Fatalf("Error.Error mismatch: %q", got)
	}

	list.Add(first.Pos, first.Msg)
	list.Add(second.Pos, second.Msg)
	list.Add(third.Pos, third.Msg)

	if list.Len() != 3 {
		t.Fatalf("Len reported %d entries, want 3", list.Len())
	}
	if !list.Less(0, 1) {
		t.Fatalf("Less should report entry 0 < entry 1: %v vs %v", list[0].Pos, list[1].Pos)
	}
	list.Swap(1, 2)
	if list[1].Pos.Line != 3 || list[2].Pos.Line != 2 {
		t.Fatalf("Swap did not exchange entries: %v %v", list[1].Pos, list[2].Pos)
	}
	list.Swap(1, 2)

	list.Sort()

	if list[0].Pos.Line != 2 || list[0].Pos.Column != 5 {
		t.Fatalf("Sort did not arrange first entry: %v", list[0].Pos)
	}
	if list[1].Pos.Line != 2 || list[1].Pos.Column != 8 {
		t.Fatalf("Sort did not arrange second entry: %v", list[1].Pos)
	}
	if list[2].Pos.Line != 3 || list[2].Pos.Column != 1 {
		t.Fatalf("Sort did not arrange third entry: %v", list[2].Pos)
	}

	if listMsg := list.Error(); !strings.Contains(listMsg, "a.go:2:5: first issue") || !strings.Contains(listMsg, "2 more errors") {
		t.Fatalf("Error list summary mismatch: %q", listMsg)
	}

	list.RemoveMultiples()
	if len(list) != 2 {
		t.Fatalf("RemoveMultiples should keep two entries, got %d", len(list))
	}
	if list[0].Pos.Line != 2 || list[0].Pos.Column != 5 {
		t.Fatalf("RemoveMultiples kept wrong entry for line 2: %v", list[0].Pos)
	}

	err := list.Err()
	if err == nil {
		t.Fatalf("Err should return non-nil when list has entries")
	}
	errMsg := err.Error()
	if !strings.Contains(errMsg, "a.go:2:5: first issue") || !strings.Contains(errMsg, "1 more errors") {
		t.Fatalf("Err message mismatch: %q", errMsg)
	}

	var buf bytes.Buffer
	scanner.PrintError(&buf, list)
	printed := buf.String()
	if !strings.Contains(printed, "a.go:2:5: first issue") {
		t.Fatalf("PrintError missing first issue: %q", printed)
	}
	if !strings.Contains(printed, "a.go:3:1: another issue") {
		t.Fatalf("PrintError missing third issue: %q", printed)
	}

	list.Reset()
	if len(list) != 0 {
		t.Fatalf("Reset should clear list, still has %d entries", len(list))
	}
	if err := list.Err(); err != nil {
		t.Fatalf("Err should be nil after Reset, got %v", err)
	}
}
