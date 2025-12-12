package token_test

import (
	"bytes"
	"encoding/gob"
	"go/token"
	"slices"
	"testing"
)

func lineColumnForOffset(lineStarts []int, offset int) (int, int) {
	if len(lineStarts) == 0 {
		return 1, offset + 1
	}
	prev := lineStarts[0]
	for i := 1; i < len(lineStarts); i++ {
		start := lineStarts[i]
		if offset < start {
			return i, offset - prev + 1
		}
		prev = start
	}
	return len(lineStarts), offset - prev + 1
}

func TestNoPos(t *testing.T) {
	if token.NoPos.IsValid() {
		t.Fatal("NoPos must be reported as invalid")
	}

	fset := token.NewFileSet()
	if got := fset.Position(token.NoPos); got != (token.Position{}) {
		t.Fatalf("Position(NoPos) = %+v, want zero Position", got)
	}
}

func TestFileSetPositionRoundTrip(t *testing.T) {
	const src = "first\nsecond\nthird\n"

	fset := token.NewFileSet()
	file := fset.AddFile("roundtrip.go", fset.Base(), len(src))
	file.SetLinesForContent([]byte(src))
	lineStarts := append([]int(nil), file.Lines()...)

	for offset := 0; offset < file.Size(); offset++ {
		pos := file.Pos(offset)
		if got := file.Offset(pos); got != offset {
			t.Fatalf("Offset(Pos(%d)) = %d, want %d", offset, got, offset)
		}
		if got := fset.File(pos); got != file {
			t.Fatalf("File(Pos(%d)) returned %v, want %v", offset, got.Name(), file.Name())
		}
		got := fset.Position(pos)
		line, column := lineColumnForOffset(lineStarts, offset)
		if got.Line != line || got.Column != column {
			t.Fatalf("Position(%d) = line %d column %d, want line %d column %d", offset, got.Line, got.Column, line, column)
		}
	}

	eof := file.Pos(file.Size())
	if got := file.Offset(eof); got != file.Size() {
		t.Fatalf("Offset(Pos(Size)) = %d, want %d", got, file.Size())
	}
}

func TestAlternativePositionInfo(t *testing.T) {
	const src = "alpha\nbeta\ncharlie\n"

	fset := token.NewFileSet()
	file := fset.AddFile("input.go", -1, len(src))
	file.SetLinesForContent([]byte(src))
	lineStarts := append([]int(nil), file.Lines()...)

	secondLineStart := file.LineStart(2)
	secondOffset := file.Offset(secondLineStart)
	file.AddLineColumnInfo(secondOffset, "generated.go", 120, 4)

	pos := file.Pos(secondOffset + 2)
	adjusted := fset.PositionFor(pos, true)
	if adjusted.Filename != "generated.go" {
		t.Fatalf("adjusted filename = %q, want generated.go", adjusted.Filename)
	}
	if adjusted.Line != 120 {
		t.Fatalf("adjusted line = %d, want 120", adjusted.Line)
	}
	if adjusted.Column != 6 {
		t.Fatalf("adjusted column = %d, want 6", adjusted.Column)
	}

	original := fset.PositionFor(pos, false)
	line, column := lineColumnForOffset(lineStarts, secondOffset+2)
	if original.Filename != "input.go" {
		t.Fatalf("unadjusted filename = %q, want input.go", original.Filename)
	}
	if original.Line != line || original.Column != column {
		t.Fatalf("unadjusted position = (%d,%d), want (%d,%d)", original.Line, original.Column, line, column)
	}
}

func TestPositionString(t *testing.T) {
	pos := token.Position{Filename: "expr.go", Line: 3, Column: 7}
	if got := pos.String(); got != "expr.go:3:7" {
		t.Fatalf("Position string = %q, want expr.go:3:7", got)
	}

	pos = token.Position{Line: 4}
	if got := pos.String(); got != "4" {
		t.Fatalf("Position string = %q, want 4", got)
	}

	if got := (token.Position{}).String(); got != "-" {
		t.Fatalf("zero position string = %q, want -", got)
	}
}

func TestFileSetIterateOrder(t *testing.T) {
	fset := token.NewFileSet()
	want := []string{"a.go", "b.go", "c.go"}
	for _, name := range want {
		fset.AddFile(name, -1, 1)
	}

	var visited []string
	fset.Iterate(func(f *token.File) bool {
		visited = append(visited, f.Name())
		return true
	})
	if !slices.Equal(visited, want) {
		t.Fatalf("Iterate visited %v, want %v", visited, want)
	}

	visited = visited[:0]
	fset.Iterate(func(f *token.File) bool {
		visited = append(visited, f.Name())
		return len(visited) < 2
	})
	if !slices.Equal(visited, want[:2]) {
		t.Fatalf("Iterate early stop visited %v, want %v", visited, want[:2])
	}
}

func TestSetLinesAndMergeLine(t *testing.T) {
	fset := token.NewFileSet()
	file := fset.AddFile("manual.go", -1, 20)

	valid := []int{0, 5, 10}
	if ok := file.SetLines(valid); !ok {
		t.Fatal("SetLines should accept increasing offsets")
	}
	if file.LineCount() != len(valid) {
		t.Fatalf("LineCount = %d, want %d", file.LineCount(), len(valid))
	}
	if !slices.Equal(file.Lines(), valid) {
		t.Fatalf("Lines() = %v, want %v", file.Lines(), valid)
	}

	if ok := file.SetLines([]int{0, 10, 8}); ok {
		t.Fatal("SetLines should reject non-increasing offsets")
	}

	file.MergeLine(2)
	if file.LineCount() != 2 {
		t.Fatalf("LineCount after merge = %d, want 2", file.LineCount())
	}
	if !slices.Equal(file.Lines(), []int{0, 5}) {
		t.Fatalf("Lines() after merge = %v, want [0 5]", file.Lines())
	}

	pos := fset.Position(file.LineStart(2))
	if pos.Line != 2 || pos.Column != 1 {
		t.Fatalf("LineStart(2) = (%d,%d), want (2,1)", pos.Line, pos.Column)
	}
}

func TestFileAddLineAndSerialization(t *testing.T) {
	const src = "line1\nline2\n"

	fset := token.NewFileSet()
	file := fset.AddFile("lines.go", 200, len(src))
	if file.Base() != 200 {
		t.Fatalf("Base() = %d, want 200", file.Base())
	}

	for offset, b := range []byte(src) {
		if b == '\n' && offset+1 < len(src) {
			file.AddLine(offset + 1)
		}
	}
	if file.LineCount() != 2 {
		t.Fatalf("LineCount = %d, want 2", file.LineCount())
	}

	// Verify offsets using File.Line, Position, and PositionFor.
	pos := file.Pos(7) // 'i' in second line
	if got := file.Line(pos); got != 2 {
		t.Fatalf("Line(Pos(7)) = %d, want 2", got)
	}
	original := file.PositionFor(pos, false)
	if original.Line != 2 || original.Column != 2 {
		t.Fatalf("PositionFor(Pos(7), false) = (%d,%d), want (2,2)", original.Line, original.Column)
	}
	if got := file.Position(pos); got.Line != 2 || got.Column != 2 {
		t.Fatalf("Position(Pos(7)) = (%d,%d), want (2,2)", got.Line, got.Column)
	}

	file.AddLineInfo(6, "generated.go", 50)
	adjusted := file.PositionFor(pos, true)
	if adjusted.Filename != "generated.go" || adjusted.Line != 50 || adjusted.Column != 2 {
		t.Fatalf("adjusted position = (%q,%d,%d), want (generated.go,50,2)", adjusted.Filename, adjusted.Line, adjusted.Column)
	}

	// Serialize file set and read it back.
	var buf bytes.Buffer
	enc := gob.NewEncoder(&buf)
	if err := fset.Write(enc.Encode); err != nil {
		t.Fatalf("Write failed: %v", err)
	}

	clone := token.NewFileSet()
	dec := gob.NewDecoder(&buf)
	if err := clone.Read(dec.Decode); err != nil {
		t.Fatalf("Read failed: %v", err)
	}

	if got := clone.PositionFor(pos, false); got.Line != 2 || got.Column != 2 {
		t.Fatalf("cloned unadjusted Position = (%d,%d), want (2,2)", got.Line, got.Column)
	}
	if got := clone.Position(pos); got.Line != 50 || got.Column != 2 {
		t.Fatalf("cloned adjusted Position = (%d,%d), want (50,2)", got.Line, got.Column)
	}

	// Removing the file should make subsequent lookups invalid.
	fset.RemoveFile(file)
	if got := fset.Position(pos); got.Line != 0 || got.IsValid() {
		t.Fatalf("Position after RemoveFile = (%d,%v), want invalid", got.Line, got.IsValid())
	}

	posStruct := token.Position{Line: 3}
	if !posStruct.IsValid() {
		t.Fatal("Position{Line:3}.IsValid() should be true")
	}
	if new(token.Position).IsValid() {
		t.Fatal("zero Position should be invalid")
	}
}
