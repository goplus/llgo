package slogtest_test

import (
	"bytes"
	"encoding/json"
	"log/slog"
	"testing"
	"testing/slogtest"
)

func TestRun(t *testing.T) {
	var buf bytes.Buffer

	newHandler := func(*testing.T) slog.Handler {
		buf.Reset()
		return slog.NewJSONHandler(&buf, nil)
	}
	result := func(t *testing.T) map[string]any {
		m := map[string]any{}
		if err := json.Unmarshal(buf.Bytes(), &m); err != nil {
			t.Fatal(err)
		}
		return m
	}

	slogtest.Run(t, newHandler, result)
}

func TestHandler(t *testing.T) {
	var buf bytes.Buffer
	h := slog.NewJSONHandler(&buf, nil)

	results := func() []map[string]any {
		var out []map[string]any
		for _, line := range bytes.Split(buf.Bytes(), []byte{'\n'}) {
			if len(line) == 0 {
				continue
			}
			m := map[string]any{}
			if err := json.Unmarshal(line, &m); err != nil {
				t.Fatalf("unmarshal result: %v", err)
			}
			out = append(out, m)
		}
		return out
	}

	if err := slogtest.TestHandler(h, results); err != nil {
		t.Fatalf("TestHandler failed: %v", err)
	}
}
