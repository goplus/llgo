package fips140_test

import (
	"crypto/fips140"
	"testing"
)

func TestEnabled(t *testing.T) {
	enabled := fips140.Enabled()
	if enabled != true && enabled != false {
		t.Fatalf("Enabled returned non-bool state")
	}
}
