package common

import (
	"math"
	"math/rand"
	"os"
	"testing"
)

// AssertFloatNear checks if two float64 values are within tolerance.
// Returns true if values are close enough, false otherwise.
func AssertFloatNear(t *testing.T, got, want, tolerance float64) bool {
	t.Helper()
	if math.IsNaN(got) && math.IsNaN(want) {
		return true
	}
	if math.IsInf(got, 0) && math.IsInf(want, 0) && math.Signbit(got) == math.Signbit(want) {
		return true
	}
	diff := math.Abs(got - want)
	if diff <= tolerance {
		return true
	}
	t.Errorf("values not within tolerance: got %v, want %v, diff %v, tolerance %v", got, want, diff, tolerance)
	return false
}

// SkipIfShort skips the test if running in short mode.
func SkipIfShort(t *testing.T) {
	t.Helper()
	if testing.Short() {
		t.Skip("skipping test in short mode")
	}
}

// SkipIfNoFS skips the test if filesystem operations are not available.
func SkipIfNoFS(t *testing.T) {
	t.Helper()
	tmpDir := os.TempDir()
	if tmpDir == "" {
		t.Skip("skipping test: no filesystem access")
	}
}

// DeterministicRand returns a deterministic random source for reproducible tests.
func DeterministicRand(seed int64) *rand.Rand {
	return rand.New(rand.NewSource(seed))
}

// RunTableTests runs a series of test cases with the provided test function.
// This helper reduces boilerplate for table-driven tests.
func RunTableTests[T any](t *testing.T, name string, cases []T, testFn func(t *testing.T, tc T)) {
	t.Helper()
	for i, tc := range cases {
		t.Run(name, func(t *testing.T) {
			testFn(t, tc)
		})
		_ = i
	}
}
