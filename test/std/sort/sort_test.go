package sort_test

import (
	"math"
	"sort"
	"strings"
	"testing"
)

type intData []int

func (d intData) Len() int           { return len(d) }
func (d intData) Less(i, j int) bool { return d[i] < d[j] }
func (d intData) Swap(i, j int)      { d[i], d[j] = d[j], d[i] }

var _ sort.Interface = intData{}

// reverseLess implements sort.Interface with a descending order check to exercise sort.Sort, sort.Stable, and sort.Reverse.
type taggedValue struct {
	value int
	tag   string
}

type reverseLess struct {
	data []taggedValue
}

func (r reverseLess) Len() int           { return len(r.data) }
func (r reverseLess) Less(i, j int) bool { return r.data[i].value > r.data[j].value }
func (r reverseLess) Swap(i, j int)      { r.data[i], r.data[j] = r.data[j], r.data[i] }

func TestPrimitiveSortHelpers(t *testing.T) {
	ints := []int{5, 2, 4, 1, 3}
	sort.Ints(ints)
	if !sort.IntsAreSorted(ints) {
		t.Fatalf("IntsAreSorted should report sorted slice, got %v", ints)
	}

	strs := []string{"delta", "bravo", "alpha", "charlie"}
	sort.Strings(strs)
	if !sort.StringsAreSorted(strs) {
		t.Fatalf("StringsAreSorted should report sorted slice, got %v", strs)
	}

	floats := []float64{math.NaN(), 3.14, -1.5, 2.7}
	sort.Float64s(floats)
	if !sort.Float64sAreSorted(floats) {
		t.Fatalf("Float64sAreSorted should report sorted slice, got %v", floats)
	}
	if !math.IsNaN(floats[0]) {
		t.Fatalf("expected NaN to compare first, got %v", floats)
	}
}

func TestSearchHelpers(t *testing.T) {
	ints := []int{1, 3, 5, 7, 9}
	if idx := sort.SearchInts(ints, 7); idx != 3 {
		t.Fatalf("SearchInts expected index 3, got %d", idx)
	}
	if idx := sort.SearchInts(ints, 4); idx != 2 {
		t.Fatalf("SearchInts miss expected 2, got %d", idx)
	}

	strs := []string{"ant", "bee", "cat", "dog"}
	if idx := sort.SearchStrings(strs, "cat"); idx != 2 {
		t.Fatalf("SearchStrings expected index 2, got %d", idx)
	}

	floats := []float64{1.5, 2.5, 3.5, 4.5}
	if idx := sort.SearchFloat64s(floats, 3.5); idx != 2 {
		t.Fatalf("SearchFloat64s expected index 2, got %d", idx)
	}

	// sort.Search reports the minimum i for which f(i) is true.
	if idx := sort.Search(len(ints), func(i int) bool { return ints[i] >= 6 }); idx != 3 {
		t.Fatalf("Search expected index 3, got %d", idx)
	}

	i, found := sort.Find(len(strs), func(i int) int {
		return strings.Compare("dog", strs[i])
	})
	if !found || i != 3 {
		t.Fatalf("Find expected index 3, found=%v, i=%d", found, i)
	}
}

func TestSliceHelpers(t *testing.T) {
	type person struct {
		name string
		age  int
	}
	people := []person{
		{name: "Alice", age: 30},
		{name: "Carol", age: 50},
		{name: "Bob", age: 40},
		{name: "Dave", age: 50},
	}

	sort.Slice(people, func(i, j int) bool {
		return people[i].name < people[j].name
	})
	if want := []string{"Alice", "Bob", "Carol", "Dave"}; people[0].name != want[0] || people[1].name != want[1] || people[2].name != want[2] || people[3].name != want[3] {
		t.Fatalf("Slice sort mismatch: %+v", people)
	}
	if !sort.SliceIsSorted(people, func(i, j int) bool {
		return people[i].name < people[j].name
	}) {
		t.Fatal("SliceIsSorted should report sorted order")
	}

	sort.SliceStable(people, func(i, j int) bool {
		return people[i].age < people[j].age
	})
	if people[0].name != "Alice" || people[1].name != "Bob" || people[2].name != "Carol" || people[3].name != "Dave" {
		t.Fatalf("SliceStable should preserve relative order, got %+v", people)
	}
}

func TestInterfaceSorting(t *testing.T) {
	data := intData{9, 4, 7, 1}
	sort.Sort(data)
	if !sort.IsSorted(data) {
		t.Fatalf("IsSorted should report sorted data, got %v", data)
	}

	desc := []int{1, 2, 3, 4}
	sort.Sort(sort.Reverse(sort.IntSlice(desc)))
	expected := []int{4, 3, 2, 1}
	for i, want := range expected {
		if desc[i] != want {
			t.Fatalf("Reverse sort mismatch at %d: got %d want %d", i, desc[i], want)
		}
	}

	stableData := reverseLess{
		data: []taggedValue{
			{value: 3, tag: "first"},
			{value: 3, tag: "second"},
			{value: 2, tag: "third"},
			{value: 1, tag: "fourth"},
		},
	}
	sort.Stable(stableData)
	if stableData.data[0].tag != "first" || stableData.data[1].tag != "second" {
		t.Fatalf("Stable should keep equal elements in original order, got %#v", stableData.data)
	}
}

func TestIntSliceMethods(t *testing.T) {
	values := sort.IntSlice([]int{5, 1, 3})
	if values.Len() != 3 {
		t.Fatalf("Len expected 3, got %d", values.Len())
	}
	if !values.Less(1, 2) {
		t.Fatal("Less should report 1<3")
	}
	values.Swap(0, 2)
	if values[0] != 3 || values[2] != 5 {
		t.Fatalf("Swap mismatch: %v", values)
	}
	values.Sort()
	if values.Search(4) != 2 {
		t.Fatalf("Search expected index 2, got %d", values.Search(4))
	}
}

func TestStringSliceMethods(t *testing.T) {
	values := sort.StringSlice([]string{"c", "a", "b"})
	if values.Len() != 3 {
		t.Fatalf("Len expected 3, got %d", values.Len())
	}
	if !values.Less(1, 2) {
		t.Fatal("Less should report a<b")
	}
	values.Swap(0, 2)
	if values[0] != "b" || values[2] != "c" {
		t.Fatalf("Swap mismatch: %v", values)
	}
	values.Sort()
	if values.Search("c") != 2 {
		t.Fatalf("Search expected index 2, got %d", values.Search("c"))
	}
}

func TestFloat64SliceMethods(t *testing.T) {
	values := sort.Float64Slice([]float64{2.5, math.NaN(), 1.5})
	if values.Len() != 3 {
		t.Fatalf("Len expected 3, got %d", values.Len())
	}
	if !values.Less(1, 0) {
		t.Fatal("Less should treat NaN as less than numeric values")
	}
	values.Swap(0, 2)
	if values[0] != 1.5 || values[2] != 2.5 {
		t.Fatalf("Swap mismatch: %v", values)
	}
	values.Sort()
	if values.Search(2.5) != 2 {
		t.Fatalf("Search expected index 2, got %d", values.Search(2.5))
	}
}
