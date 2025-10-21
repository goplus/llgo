package maps_test

import (
	"iter"
	"maps"
	"slices"
	"strings"
	"testing"
)

func collectSeq[T any](seq iter.Seq[T]) []T {
	var out []T
	for v := range seq {
		out = append(out, v)
	}
	return out
}

func collectSeq2[K comparable, V any](seq iter.Seq2[K, V]) map[K]V {
	result := make(map[K]V)
	for k, v := range seq {
		result[k] = v
	}
	return result
}

func equalMap[K comparable, V comparable](a, b map[K]V) bool {
	if len(a) != len(b) {
		return false
	}
	for k, v := range a {
		if bv, ok := b[k]; !ok || bv != v {
			return false
		}
	}
	return true
}

func TestCloneProducesIndependentCopy(t *testing.T) {
	src := map[string]int{"go": 1, "plus": 2}
	cloned := maps.Clone(src)
	if !equalMap(src, cloned) {
		t.Fatalf("Clone mismatch: %v vs %v", src, cloned)
	}
	cloned["go"] = 42
	if src["go"] == 42 {
		t.Fatal("Clone should not share backing map")
	}

	var nilMap map[int]int
	if cloneNil := maps.Clone(nilMap); cloneNil != nil {
		t.Fatalf("Clone of nil should be nil, got %v", cloneNil)
	}
}

func TestCopyMergesValues(t *testing.T) {
	dst := map[string]int{"alpha": 1}
	src := map[string]int{"beta": 2, "alpha": 3}
	maps.Copy(dst, src)
	if want := map[string]int{"alpha": 3, "beta": 2}; !equalMap(dst, want) {
		t.Fatalf("Copy result = %v", dst)
	}
}

func TestCopyPanicsOnNilDestination(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("maps.Copy should panic when writing to nil map")
		}
	}()
	var dst map[string]int
	maps.Copy(dst, map[string]int{"x": 1})
}

func TestDeleteFuncRemovesMatchingEntries(t *testing.T) {
	m := map[string]int{"even": 2, "odd": 3, "zero": 0}
	maps.DeleteFunc(m, func(_ string, v int) bool { return v%2 == 0 })
	if want := map[string]int{"odd": 3}; !equalMap(m, want) {
		t.Fatalf("DeleteFunc result = %v", m)
	}

	maps.DeleteFunc(m, func(_ string, v int) bool { return v > 100 })
	if want := map[string]int{"odd": 3}; !equalMap(m, want) {
		t.Fatalf("DeleteFunc should keep map unchanged, got %v", m)
	}
}

func TestEqualAndEqualFunc(t *testing.T) {
	a := map[string]int{"go": 1, "plus": 2}
	b := map[string]int{"plus": 2, "go": 1}
	c := map[string]int{"go": 1, "plus": 3}

	if !maps.Equal(a, b) {
		t.Fatal("Equal should report maps as identical")
	}
	if maps.Equal(a, c) {
		t.Fatal("Equal should detect differing values")
	}

	m1 := map[string]string{"go": "Go", "plus": "Plus"}
	m2 := map[string]string{"go": "go", "plus": "plus"}
	if !maps.EqualFunc(m1, m2, func(x, y string) bool { return strings.EqualFold(x, y) }) {
		t.Fatal("EqualFunc should use custom comparer")
	}
	if maps.EqualFunc(m1, map[string]string{"go": "Go", "plus": "Plus", "extra": "value"}, func(x, y string) bool { return x == y }) {
		t.Fatal("EqualFunc should fail with mismatched keys")
	}
}

func TestKeysAndValues(t *testing.T) {
	data := map[string]int{"go": 1, "plus": 2, "rocks": 3}
	keys := collectSeq(maps.Keys(data))
	vals := collectSeq(maps.Values(data))
	slices.Sort(keys)
	slices.Sort(vals)
	if !slices.Equal(keys, []string{"go", "plus", "rocks"}) {
		t.Fatalf("Keys mismatch: %v", keys)
	}
	if !slices.Equal(vals, []int{1, 2, 3}) {
		t.Fatalf("Values mismatch: %v", vals)
	}

	var nilMap map[string]int
	if keys := collectSeq(maps.Keys(nilMap)); len(keys) != 0 {
		t.Fatalf("Keys(nil) should be empty, got %v", keys)
	}
	if vals := collectSeq(maps.Values(nilMap)); len(vals) != 0 {
		t.Fatalf("Values(nil) should be empty, got %v", vals)
	}
}

func TestAllAndCollect(t *testing.T) {
	input := map[string]int{"x": 10, "y": 20}
	pairs := collectSeq2(maps.All(input))
	if !equalMap(pairs, input) {
		t.Fatalf("All sequence mismatch: %v", pairs)
	}

	seq := iter.Seq2[string, int](func(yield func(string, int) bool) {
		entries := []struct {
			k string
			v int
		}{
			{"alpha", 1},
			{"beta", 2},
			{"alpha", 3},
		}
		for _, e := range entries {
			if !yield(e.k, e.v) {
				return
			}
		}
	})

	m := maps.Collect(seq)
	if want := map[string]int{"alpha": 3, "beta": 2}; !equalMap(m, want) {
		t.Fatalf("Collect result = %v", m)
	}
}

func TestInsertPopulatesMapFromSequence(t *testing.T) {
	m := map[string]int{"existing": 1}
	seq := iter.Seq2[string, int](func(yield func(string, int) bool) {
		pairs := []struct {
			k string
			v int
		}{
			{"new", 2},
			{"existing", 3},
		}
		for _, p := range pairs {
			if !yield(p.k, p.v) {
				return
			}
		}
	})

	maps.Insert(m, seq)
	if want := map[string]int{"existing": 3, "new": 2}; !equalMap(m, want) {
		t.Fatalf("Insert result = %v", m)
	}
}
