package scanner_test

import (
	"go/scanner"
	"go/token"
	"strings"
	"testing"
)

func BenchmarkScanGoSource(b *testing.B) {
	src := strings.Repeat("package p\nvar value = 123 + 456\n", 128)
	data := []byte(src)

	b.ReportAllocs()
	b.ResetTimer()

	for i := 0; i < b.N; i++ {
		fset := token.NewFileSet()
		file := fset.AddFile("bench.go", fset.Base(), len(data))

		var s scanner.Scanner
		s.Init(file, data, nil, scanner.ScanComments)

		for {
			_, tok, _ := s.Scan()
			if tok == token.EOF {
				break
			}
		}
	}
}
