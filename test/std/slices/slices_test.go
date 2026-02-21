package slices_test

import (
	"strings"
	"testing"

	"iter"
	"slices"
)

func collectSeq[T any](seq iter.Seq[T]) []T {
	var out []T
	for v := range seq {
		out = append(out, v)
	}
	return out
}

func equalSlice[T comparable](a, b []T) bool {
	if len(a) != len(b) {
		return false
	}
	for i := range a {
		if a[i] != b[i] {
			return false
		}
	}
	return true
}

func TestSlicesSequences(t *testing.T) {
	data := []string{"go", "plus", "rocks"}

	var allIdx []int
	var allVals []string
	for idx, v := range slices.All(data) {
		allIdx = append(allIdx, idx)
		allVals = append(allVals, v)
	}
	if !equalSlice(allIdx, []int{0, 1, 2}) {
		t.Fatalf("All indices = %v", allIdx)
	}
	if !equalSlice(allVals, data) {
		t.Fatalf("All values = %v", allVals)
	}

	var backIdx []int
	var backVals []string
	for idx, v := range slices.Backward(data) {
		backIdx = append(backIdx, idx)
		backVals = append(backVals, v)
	}
	if !equalSlice(backIdx, []int{2, 1, 0}) {
		t.Fatalf("Backward indices = %v", backIdx)
	}
	if !equalSlice(backVals, []string{"rocks", "plus", "go"}) {
		t.Fatalf("Backward values = %v", backVals)
	}

	chunks := collectSeq(slices.Chunk(data, 2))
	if len(chunks) != 2 || !equalSlice(chunks[0], []string{"go", "plus"}) || !equalSlice(chunks[1], []string{"rocks"}) {
		t.Fatalf("Chunk result = %#v", chunks)
	}

	seq := iter.Seq[int](func(yield func(int) bool) {
		for _, v := range []int{3, 4} {
			if !yield(v) {
				return
			}
		}
	})
	appended := slices.AppendSeq([]int{1, 2}, seq)
	if !equalSlice(appended, []int{1, 2, 3, 4}) {
		t.Fatalf("AppendSeq result = %v", appended)
	}

	values := collectSeq(slices.Values([]int{10, 20, 30}))
	if !equalSlice(values, []int{10, 20, 30}) {
		t.Fatalf("Values result = %v", values)
	}

	collected := slices.Collect(iter.Seq[int](func(yield func(int) bool) {
		for _, v := range []int{5, 6, 7} {
			if !yield(v) {
				return
			}
		}
	}))
	if !equalSlice(collected, []int{5, 6, 7}) {
		t.Fatalf("Collect result = %v", collected)
	}
}

func TestSlicesSearchAndCompare(t *testing.T) {
	ints := []int{1, 3, 5, 7, 9}
	if idx, found := slices.BinarySearch(ints, 5); idx != 2 || !found {
		t.Fatalf("BinarySearch found=%v idx=%d", found, idx)
	}
	if idx, found := slices.BinarySearch(ints, 4); idx != 2 || found {
		t.Fatalf("BinarySearch miss idx=%d found=%v", idx, found)
	}

	type person struct {
		name string
		age  int
	}
	people := []person{
		{name: "Alice", age: 30},
		{name: "Bob", age: 40},
		{name: "Carol", age: 50},
	}
	idx, found := slices.BinarySearchFunc(people, "Bob", func(p person, target string) int {
		return strings.Compare(p.name, target)
	})
	if !found || idx != 1 {
		t.Fatalf("BinarySearchFunc result idx=%d found=%v", idx, found)
	}

	numbers := []int{1, 2, 3, 4, 5}
	if !slices.Contains(numbers, 4) {
		t.Fatal("Contains should find element")
	}
	if slices.Contains(numbers, 42) {
		t.Fatal("Contains should miss element")
	}

	if !slices.ContainsFunc(numbers, func(v int) bool { return v%2 == 0 }) {
		t.Fatal("ContainsFunc should find even element")
	}
	if slices.ContainsFunc(numbers, func(v int) bool { return v > 100 }) {
		t.Fatal("ContainsFunc should miss element")
	}

	if idx := slices.Index(numbers, 4); idx != 3 {
		t.Fatalf("Index returned %d", idx)
	}
	if idx := slices.Index(numbers, 42); idx != -1 {
		t.Fatalf("Index miss returned %d", idx)
	}
	if idx := slices.IndexFunc(numbers, func(v int) bool { return v > 4 }); idx != 4 {
		t.Fatalf("IndexFunc returned %d", idx)
	}
	if idx := slices.IndexFunc(numbers, func(v int) bool { return v < 0 }); idx != -1 {
		t.Fatalf("IndexFunc miss returned %d", idx)
	}

	if cmp := slices.Compare([]int{1, 2, 3}, []int{1, 2, 3}); cmp != 0 {
		t.Fatalf("Compare eq result %d", cmp)
	}
	if cmp := slices.Compare([]int{1, 2}, []int{1, 3}); cmp != -1 {
		t.Fatalf("Compare lt result %d", cmp)
	}
	if cmp := slices.Compare([]int{1, 3}, []int{1, 2}); cmp != 1 {
		t.Fatalf("Compare gt result %d", cmp)
	}

	if cmp := slices.CompareFunc([]string{"a", "bb"}, []string{"a", "bbb"}, func(a, b string) int {
		return len(a) - len(b)
	}); cmp != -1 {
		t.Fatalf("CompareFunc result %d", cmp)
	}

	if !slices.Equal([]int{1, 2}, []int{1, 2}) {
		t.Fatal("Equal should report equality")
	}
	if slices.Equal([]int{1, 2}, []int{2, 1}) {
		t.Fatal("Equal should report inequality")
	}

	if !slices.EqualFunc([]string{"Go", "Plus"}, []string{"go", "plus"}, func(a, b string) bool {
		return strings.EqualFold(a, b)
	}) {
		t.Fatal("EqualFunc should report equality")
	}
	if slices.EqualFunc([]string{"Go"}, []string{"No"}, func(a, b string) bool { return a == b }) {
		t.Fatal("EqualFunc should report inequality")
	}
}

func TestSlicesCompaction(t *testing.T) {
	values := []int{1, 1, 2, 2, 2, 3}
	compacted := slices.Compact(values)
	if !equalSlice(compacted, []int{1, 2, 3}) {
		t.Fatalf("Compact result = %v", compacted)
	}

	type record struct {
		id   int
		name string
	}
	records := []record{
		{id: 1, name: "alpha"},
		{id: 1, name: "beta"},
		{id: 2, name: "gamma"},
		{id: 2, name: "delta"},
	}
	compactedFunc := slices.CompactFunc(records, func(a, b record) bool { return a.id == b.id })
	if len(compactedFunc) != 2 || compactedFunc[0].name != "alpha" || compactedFunc[1].name != "gamma" {
		t.Fatalf("CompactFunc result = %#v", compactedFunc)
	}
}

func TestSlicesModification(t *testing.T) {
	s := []int{0, 1, 2, 3, 4}
	clipped := slices.Clip(append([]int(nil), s...))
	if len(clipped) != len(s) || cap(clipped) != len(clipped) {
		t.Fatalf("Clip len=%d cap=%d", len(clipped), cap(clipped))
	}

	clone := slices.Clone(s)
	if !equalSlice(clone, s) {
		t.Fatalf("Clone mismatch %v", clone)
	}
	if len(clone) > 0 && &clone[0] == &s[0] {
		t.Fatal("Clone should allocate new backing array")
	}

	concat := slices.Concat([]int{1, 2}, []int{}, []int{3, 4})
	if !equalSlice(concat, []int{1, 2, 3, 4}) {
		t.Fatalf("Concat result = %v", concat)
	}

	deleted := slices.Delete(append([]int(nil), s...), 1, 3)
	if !equalSlice(deleted, []int{0, 3, 4}) {
		t.Fatalf("Delete result = %v", deleted)
	}

	filtered := slices.DeleteFunc([]int{1, 2, 3, 4, 5}, func(v int) bool { return v%2 == 0 })
	if !equalSlice(filtered, []int{1, 3, 5}) {
		t.Fatalf("DeleteFunc result = %v", filtered)
	}

	grown := slices.Grow([]int{1, 2}, 4)
	if len(grown) != 2 || cap(grown) < 6 {
		t.Fatalf("Grow len=%d cap=%d", len(grown), cap(grown))
	}

	inserted := slices.Insert([]int{1, 4, 5}, 1, 2, 3)
	if !equalSlice(inserted, []int{1, 2, 3, 4, 5}) {
		t.Fatalf("Insert result = %v", inserted)
	}

	replaced := slices.Replace([]int{1, 2, 3, 4}, 1, 3, 8, 9)
	if !equalSlice(replaced, []int{1, 8, 9, 4}) {
		t.Fatalf("Replace result = %v", replaced)
	}

	repeated := slices.Repeat([]int{1, 2}, 3)
	if !equalSlice(repeated, []int{1, 2, 1, 2, 1, 2}) {
		t.Fatalf("Repeat result = %v", repeated)
	}

	reverse := []int{1, 2, 3, 4}
	slices.Reverse(reverse)
	if !equalSlice(reverse, []int{4, 3, 2, 1}) {
		t.Fatalf("Reverse result = %v", reverse)
	}
}

func TestSlicesOrdering(t *testing.T) {
	sorted := []int{5, 1, 3, 2, 4}
	slices.Sort(sorted)
	if !equalSlice(sorted, []int{1, 2, 3, 4, 5}) {
		t.Fatalf("Sort result = %v", sorted)
	}
	if !slices.IsSorted(sorted) {
		t.Fatal("IsSorted should report true")
	}
	if slices.IsSorted([]int{3, 2, 1}) {
		t.Fatal("IsSorted should report false")
	}

	stringsByLen := []string{"go", "plusplus", "llgo", "c"}
	slices.SortFunc(stringsByLen, func(a, b string) int {
		return len(a) - len(b)
	})
	if !equalSlice(stringsByLen, []string{"c", "go", "llgo", "plusplus"}) {
		t.Fatalf("SortFunc result = %v", stringsByLen)
	}
	if !slices.IsSortedFunc(stringsByLen, func(a, b string) int { return len(a) - len(b) }) {
		t.Fatal("IsSortedFunc should report true")
	}
	if slices.IsSortedFunc(stringsByLen, func(a, b string) int { return len(b) - len(a) }) {
		t.Fatal("IsSortedFunc should report false")
	}

	type stable struct {
		key   string
		order int
	}
	stableData := []stable{
		{key: "b", order: 0},
		{key: "a", order: 1},
		{key: "a", order: 2},
		{key: "c", order: 3},
	}
	slices.SortStableFunc(stableData, func(a, b stable) int {
		return strings.Compare(a.key, b.key)
	})
	if stableData[0].order != 1 || stableData[1].order != 2 || stableData[2].order != 0 || stableData[3].order != 3 {
		t.Fatalf("SortStableFunc did not preserve order: %#v", stableData)
	}

	seq := iter.Seq[int](func(yield func(int) bool) {
		for _, v := range []int{3, 1, 2} {
			if !yield(v) {
				return
			}
		}
	})
	sortedVals := slices.Sorted(seq)
	if !equalSlice(sortedVals, []int{1, 2, 3}) {
		t.Fatalf("Sorted result = %v", sortedVals)
	}

	seqStrings := iter.Seq[string](func(yield func(string) bool) {
		for _, v := range []string{"bbb", "a", "cc"} {
			if !yield(v) {
				return
			}
		}
	})
	sortedFunc := slices.SortedFunc(seqStrings, func(a, b string) int {
		return len(a) - len(b)
	})
	if !equalSlice(sortedFunc, []string{"a", "cc", "bbb"}) {
		t.Fatalf("SortedFunc result = %v", sortedFunc)
	}

	seqStable := iter.Seq[stable](func(yield func(stable) bool) {
		data := []stable{
			{key: "same", order: 1},
			{key: "same", order: 2},
			{key: "other", order: 3},
		}
		for _, v := range data {
			if !yield(v) {
				return
			}
		}
	})
	sortedStable := slices.SortedStableFunc(seqStable, func(a, b stable) int {
		return strings.Compare(a.key, b.key)
	})
	if sortedStable[0].order != 3 || sortedStable[1].order != 1 || sortedStable[2].order != 2 {
		t.Fatalf("SortedStableFunc result = %#v", sortedStable)
	}
}

func TestSlicesExtrema(t *testing.T) {
	ints := []int{3, 7, 2, 9, 5}
	if max := slices.Max(ints); max != 9 {
		t.Fatalf("Max = %d", max)
	}
	if min := slices.Min(ints); min != 2 {
		t.Fatalf("Min = %d", min)
	}

	stringsByLen := []string{"go", "plus", "llgo", "z"}
	maxLen := slices.MaxFunc(stringsByLen, func(a, b string) int {
		return len(a) - len(b)
	})
	if maxLen != "plus" {
		t.Fatalf("MaxFunc = %q", maxLen)
	}
	minLen := slices.MinFunc(stringsByLen, func(a, b string) int {
		return len(a) - len(b)
	})
	if minLen != "z" {
		t.Fatalf("MinFunc = %q", minLen)
	}
}
