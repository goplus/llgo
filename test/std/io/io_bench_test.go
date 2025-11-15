package io_test

import (
	"bytes"
	"io"
	"strings"
	"testing"
)

func BenchmarkCopy(b *testing.B) {
	data := []byte(strings.Repeat("go", 128))
	for i := 0; i < b.N; i++ {
		var dst bytes.Buffer
		if _, err := io.Copy(&dst, bytes.NewReader(data)); err != nil {
			b.Fatalf("copy err %v", err)
		}
	}
}

func BenchmarkReadAll(b *testing.B) {
	for i := 0; i < b.N; i++ {
		if _, err := io.ReadAll(strings.NewReader(strings.Repeat("abc", 256))); err != nil {
			b.Fatalf("readall err %v", err)
		}
	}
}
