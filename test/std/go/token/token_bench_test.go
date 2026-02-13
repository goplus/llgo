package token_test

import (
	"go/token"
	"strings"
	"testing"
)

func BenchmarkFileSetPosition(b *testing.B) {
	src := strings.Repeat("line\n", 512)

	fset := token.NewFileSet()
	file := fset.AddFile("bench.go", -1, len(src))
	file.SetLinesForContent([]byte(src))

	lineCount := file.LineCount()
	positions := make([]token.Pos, lineCount)
	for i := range positions {
		positions[i] = file.LineStart(i + 1)
	}
	if lineCount == 0 {
		b.Fatal("expected at least one line start")
	}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		pos := positions[i%lineCount]
		if p := fset.Position(pos); p.Line == 0 {
			b.Fatalf("Position(%d) returned invalid line", pos)
		}
	}
}
