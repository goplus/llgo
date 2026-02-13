package version_test

import (
	"go/version"
	"testing"
)

func BenchmarkCompare(b *testing.B) {
	inputs := []struct {
		x string
		y string
	}{
		{x: "go1.21", y: "go1.21.1"},
		{x: "go1.21rc1", y: "go1.21"},
		{x: "go1.22.2-bigcorp", y: "go1.22.2"},
		{x: "go1.19", y: "go1.20"},
	}

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		pair := inputs[i%len(inputs)]
		if version.Compare(pair.x, pair.y) == 0 {
			b.Fatalf("Compare(%q, %q) unexpectedly equal", pair.x, pair.y)
		}
	}
}
