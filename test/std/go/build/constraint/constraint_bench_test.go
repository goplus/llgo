package constraint_test

import (
	"go/build/constraint"
	"testing"
)

func BenchmarkParseAndEval(b *testing.B) {
	line := "//go:build linux && (amd64 || arm64) && !cgo"
	tags := []string{"linux", "amd64", "arm64", "cgo"}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		expr, err := constraint.Parse(line)
		if err != nil {
			b.Fatalf("Parse error: %v", err)
		}
		expr.Eval(func(tag string) bool {
			for _, t := range tags {
				if t == tag {
					return t != "cgo"
				}
			}
			return false
		})
	}
}
