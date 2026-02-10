//go:build go1.24
// +build go1.24

package math_test

import (
	"testing"
)

// TestFutureAPI is a placeholder demonstrating how to gate tests
// for APIs introduced in Go 1.24 or later.
// This pattern allows tests to be written before llgo supports the new version.
func TestFutureAPI(t *testing.T) {
	t.Skip("TODO: add tests for Go 1.24+ math APIs when available")
}
