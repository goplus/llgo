package rand_test

import (
	"math"
	rand "math/rand"
	"testing"
)

func TestNewSourceInterfaces(t *testing.T) {
	src := rand.NewSource(42)
	if _, ok := src.(rand.Source64); !ok {
		t.Fatalf("NewSource returned %T, want Source64", src)
	}

	var (
		_ rand.Source   = src
		_ rand.Source64 = src.(rand.Source64)
	)

	s1 := rand.New(src)
	s2 := rand.New(rand.NewSource(42))
	for i := 0; i < 8; i++ {
		if got, want := s1.Int63(), s2.Int63(); got != want {
			t.Fatalf("Int63 mismatch at step %d: %d vs %d", i, got, want)
		}
	}
}

func TestRandMethodRanges(t *testing.T) {
	r := rand.New(rand.NewSource(1))
	r.Seed(2)

	if v := r.Int(); v < 0 {
		t.Fatalf("Int returned %d", v)
	}
	if v := r.Int31(); v < 0 {
		t.Fatalf("Int31 returned %d", v)
	}
	if v := r.Int31n(7); v < 0 || v >= 7 {
		t.Fatalf("Int31n out of range: %d", v)
	}
	if v := r.Int63(); v < 0 {
		t.Fatalf("Int63 returned %d", v)
	}
	if v := r.Int63n(13); v < 0 || v >= 13 {
		t.Fatalf("Int63n out of range: %d", v)
	}
	if v := r.Intn(21); v < 0 || v >= 21 {
		t.Fatalf("Intn out of range: %d", v)
	}
	if v := r.Uint32(); v > math.MaxUint32 {
		t.Fatalf("Uint32 returned %d", v)
	}
	if v := r.Uint64(); v > math.MaxUint64 {
		t.Fatalf("Uint64 returned %d", v)
	}
	if v := r.Float32(); !(0 <= v && v < 1) {
		t.Fatalf("Float32 returned %f", v)
	}
	if v := r.Float64(); !(0 <= v && v < 1) {
		t.Fatalf("Float64 returned %f", v)
	}
	if v := r.ExpFloat64(); math.IsNaN(v) || math.IsInf(v, 0) || v <= 0 {
		t.Fatalf("ExpFloat64 returned %f", v)
	}
	if v := r.NormFloat64(); math.IsNaN(v) || math.IsInf(v, 0) {
		t.Fatalf("NormFloat64 returned %f", v)
	}

	buf := make([]byte, 16)
	if n, err := r.Read(buf); err != nil || n != len(buf) {
		t.Fatalf("Read() = (%d, %v), want (%d, nil)", n, err, len(buf))
	}
}

func TestRandPermutationHelpers(t *testing.T) {
	r := rand.New(rand.NewSource(4))
	perm := r.Perm(12)
	assertPermutation(t, perm, 12)

	values := make([]int, 12)
	for i := range values {
		values[i] = i
	}
	r.Shuffle(len(values), func(i, j int) {
		values[i], values[j] = values[j], values[i]
	})
	assertPermutation(t, values, 12)
}

func TestZipfGeneration(t *testing.T) {
	r := rand.New(rand.NewSource(7))
	z := rand.NewZipf(r, 1.5, 1, 10)
	for i := 0; i < 100; i++ {
		value := z.Uint64()
		if value > 10 {
			t.Fatalf("Zipf.Uint64 produced %d, want <= 10", value)
		}
	}
}

func TestTopLevelConvenienceFunctions(t *testing.T) {
	rand.Seed(123)

	if v := rand.Int(); v < 0 {
		t.Fatalf("top-level Int returned %d", v)
	}
	if v := rand.Int31(); v < 0 {
		t.Fatalf("top-level Int31 returned %d", v)
	}
	if v := rand.Int31n(5); v < 0 || v >= 5 {
		t.Fatalf("top-level Int31n out of range: %d", v)
	}
	if v := rand.Int63(); v < 0 {
		t.Fatalf("top-level Int63 returned %d", v)
	}
	if v := rand.Int63n(9); v < 0 || v >= 9 {
		t.Fatalf("top-level Int63n out of range: %d", v)
	}
	if v := rand.Intn(6); v < 0 || v >= 6 {
		t.Fatalf("top-level Intn out of range: %d", v)
	}
	if v := rand.Uint32(); v > math.MaxUint32 {
		t.Fatalf("top-level Uint32 returned %d", v)
	}
	if v := rand.Uint64(); v > math.MaxUint64 {
		t.Fatalf("top-level Uint64 returned %d", v)
	}
	if v := rand.Float32(); !(0 <= v && v < 1) {
		t.Fatalf("top-level Float32 returned %f", v)
	}
	if v := rand.Float64(); !(0 <= v && v < 1) {
		t.Fatalf("top-level Float64 returned %f", v)
	}
	if v := rand.ExpFloat64(); math.IsNaN(v) || math.IsInf(v, 0) || v <= 0 {
		t.Fatalf("top-level ExpFloat64 returned %f", v)
	}
	if v := rand.NormFloat64(); math.IsNaN(v) || math.IsInf(v, 0) {
		t.Fatalf("top-level NormFloat64 returned %f", v)
	}

	perm := rand.Perm(8)
	assertPermutation(t, perm, 8)

	values := []int{0, 1, 2, 3, 4, 5, 6, 7}
	rand.Shuffle(len(values), func(i, j int) {
		values[i], values[j] = values[j], values[i]
	})
	assertPermutation(t, values, len(values))

	buf := make([]byte, 24)
	if n, err := rand.Read(buf); err != nil || n != len(buf) {
		t.Fatalf("top-level Read() = (%d, %v), want (%d, nil)", n, err, len(buf))
	}
}

func assertPermutation(t testing.TB, values []int, n int) {
	t.Helper()
	if len(values) != n {
		t.Fatalf("expected length %d, got %d", n, len(values))
	}
	seen := make([]bool, n)
	for _, v := range values {
		if v < 0 || v >= n {
			t.Fatalf("value %d out of bounds [0,%d)", v, n)
		}
		if seen[v] {
			t.Fatalf("value %d appears more than once", v)
		}
		seen[v] = true
	}
}
