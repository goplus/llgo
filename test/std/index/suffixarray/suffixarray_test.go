package suffixarray_test

import (
	"bytes"
	"index/suffixarray"
	"regexp"
	"slices"
	"sort"
	"testing"
)

func TestNewBytesLookupAndFindAllIndex(t *testing.T) {
	data := []byte("banana bandana")
	idx := suffixarray.New(data)
	var _ *suffixarray.Index = idx

	if got := idx.Bytes(); !bytes.Equal(got, data) {
		t.Fatalf("Bytes mismatch: got %q, want %q", got, data)
	}

	all := idx.Lookup([]byte("ana"), -1)
	sort.Ints(all)
	if !slices.Equal(all, []int{1, 3, 11}) {
		t.Fatalf("Lookup(ana,-1) = %v, want [1 3 11]", all)
	}

	limited := idx.Lookup([]byte("ana"), 2)
	if len(limited) > 2 {
		t.Fatalf("Lookup(ana,2) len=%d, want <=2", len(limited))
	}
	if got := idx.Lookup([]byte(""), -1); got != nil {
		t.Fatalf("Lookup(empty,-1) = %v, want nil", got)
	}
	if got := idx.Lookup([]byte("zzz"), -1); got != nil {
		t.Fatalf("Lookup(zzz,-1) = %v, want nil", got)
	}

	r := regexp.MustCompile("ana")
	matches := idx.FindAllIndex(r, -1)
	if len(matches) != 2 {
		t.Fatalf("FindAllIndex(ana,-1) len=%d, want 2", len(matches))
	}
	if !slices.Equal(matches[0], []int{1, 4}) || !slices.Equal(matches[1], []int{11, 14}) {
		t.Fatalf("FindAllIndex(ana,-1) = %v, want [[1 4] [11 14]]", matches)
	}
	if got := idx.FindAllIndex(r, 0); got != nil {
		t.Fatalf("FindAllIndex(ana,0) = %v, want nil", got)
	}
}

func TestWriteAndRead(t *testing.T) {
	src := suffixarray.New([]byte("abracadabra"))

	var buf bytes.Buffer
	if err := src.Write(&buf); err != nil {
		t.Fatalf("Write failed: %v", err)
	}

	var dst suffixarray.Index
	if err := dst.Read(&buf); err != nil {
		t.Fatalf("Read failed: %v", err)
	}

	got := dst.Lookup([]byte("abra"), -1)
	sort.Ints(got)
	if !slices.Equal(got, []int{0, 7}) {
		t.Fatalf("dst.Lookup(abra,-1) = %v, want [0 7]", got)
	}
}
