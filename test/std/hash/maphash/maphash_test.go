
package maphash_test

import (
	"bytes"
	"hash/maphash"
	"math"
	"testing"
)

func TestMakeSeedNonZero(t *testing.T) {
	const samples = 16
	seen := make(map[uint64]struct{})
	for i := 0; i < samples; i++ {
		seed := maphash.MakeSeed()
		if seed == (maphash.Seed{}) {
			t.Fatalf("MakeSeed returned zero Seed on iteration %d", i)
		}
		seen[maphash.Bytes(seed, nil)] = struct{}{}
	}
	if len(seen) < samples/2 {
		t.Fatalf("expected diverse seed values, got %d distinct out of %d", len(seen), samples)
	}
}

func TestBytesMatchesHash(t *testing.T) {
	seed := maphash.MakeSeed()
	data := bytes.Repeat([]byte("maphash"), 200) // force multiple buffer flushes

	var h maphash.Hash
	h.SetSeed(seed)
	if n, err := h.Write(data); err != nil || n != len(data) {
		t.Fatalf("Hash.Write = (%d, %v), want (%d, nil)", n, err, len(data))
	}
	want := h.Sum64()
	got := maphash.Bytes(seed, data)
	if got != want {
		t.Fatalf("Bytes returned %#x, want %#x", got, want)
	}
}

func TestStringMatchesHash(t *testing.T) {
	seed := maphash.MakeSeed()
	builder := bytes.NewBuffer(nil)
	for i := 0; i < 40; i++ {
		builder.WriteString("gopher!")
	}
	s := builder.String()

	var h maphash.Hash
	h.SetSeed(seed)
	if _, err := h.WriteString(s); err != nil {
		t.Fatalf("Hash.WriteString: %v", err)
	}
	want := h.Sum64()
	got := maphash.String(seed, s)
	if got != want {
		t.Fatalf("String returned %#x, want %#x", got, want)
	}
}

func TestZeroSeedPanics(t *testing.T) {
	var zero maphash.Seed
	mustPanic(t, "Bytes with zero seed", func() {
		maphash.Bytes(zero, nil)
	})
	mustPanic(t, "String with zero seed", func() {
		maphash.String(zero, "")
	})

	var h maphash.Hash
	mustPanic(t, "SetSeed zero", func() {
		h.SetSeed(zero)
	})
}

func TestHashMethods(t *testing.T) {
	var h maphash.Hash

	if got := h.BlockSize(); got != 128 {
		t.Fatalf("BlockSize=%d want 128", got)
	}
	if got := h.Size(); got != 8 {
		t.Fatalf("Size=%d want 8", got)
	}

	if n, err := h.Write([]byte("go")); err != nil || n != 2 {
		t.Fatalf("Write = (%d, %v), want (2, nil)", n, err)
	}
	if err := h.WriteByte('p'); err != nil {
		t.Fatalf("WriteByte: %v", err)
	}
	if n, err := h.WriteString("her"); err != nil || n != 3 {
		t.Fatalf("WriteString = (%d, %v), want (3, nil)", n, err)
	}

	sum := h.Sum64()
	if sum == 0 {
		t.Fatalf("Sum64 returned zero after writes; want non-zero for randomness")
	}

	base := []byte("prefix")
	appended := h.Sum(base)
	if len(appended) != len(base)+8 {
		t.Fatalf("Sum appended %d bytes, want 8", len(appended)-len(base))
	}
	if !bytes.Equal(base, []byte("prefix")) {
		t.Fatalf("Sum modified input slice")
	}

	seed := h.Seed()
	h.Reset()
	if reset := h.Sum64(); reset != maphash.Bytes(seed, nil) {
		t.Fatalf("Sum64 after Reset=%#x want %#x", reset, maphash.Bytes(seed, nil))
	}

	seed2 := maphash.MakeSeed()
	h.SetSeed(seed2)
	const payload = "consistent"
	if _, err := h.WriteString(payload); err != nil {
		t.Fatalf("WriteString with new seed: %v", err)
	}
	sum1 := h.Sum64()
	h.Reset()
	if _, err := h.WriteString(payload); err != nil {
		t.Fatalf("WriteString after reset: %v", err)
	}
	sum2 := h.Sum64()
	if sum1 != sum2 {
		t.Fatalf("Sum64 mismatch across Reset: %#x != %#x", sum1, sum2)
	}

	var h2 maphash.Hash
	h2.SetSeed(seed2)
	if _, err := h2.WriteString(payload); err != nil {
		t.Fatalf("WriteString in second hash: %v", err)
	}
	if got := h2.Sum64(); got != sum1 {
		t.Fatalf("Sum64 mismatch across instances: %#x != %#x", got, sum1)
	}
}

func TestComparable(t *testing.T) {
	seed := maphash.MakeSeed()
	const value = "maphash"
	if got, want := maphash.Comparable(seed, value), maphash.Comparable(seed, value); got != want {
		t.Fatalf("Comparable inconsistent for identical value: %#x != %#x", got, want)
	}

	if maphash.Comparable(seed, value) == maphash.Comparable(seed, value+"!") {
		t.Fatalf("Comparable produced identical hashes for different values")
	}

	type pair struct {
		A int
		B string
	}
	p := pair{A: 42, B: "answer"}
	if maphash.Comparable(seed, p) != maphash.Comparable(seed, p) {
		t.Fatalf("Comparable not deterministic on struct value")
	}

	ptr := &pair{A: 1, B: "x"}
	if maphash.Comparable(seed, ptr) != maphash.Comparable(seed, ptr) {
		t.Fatalf("Comparable not deterministic on pointer value")
	}

	var prev uint64
	equalCount := 0
	for i := 0; i < 8; i++ {
		val := maphash.Comparable(seed, math.NaN())
		if i > 0 && val == prev {
			equalCount++
		}
		prev = val
	}
	if equalCount == 7 {
		t.Fatalf("Comparable produced identical hashes for NaN inputs")
	}
}

func TestWriteComparable(t *testing.T) {
	seed := maphash.MakeSeed()
	var h1, h2 maphash.Hash
	h1.SetSeed(seed)
	h2.SetSeed(seed)

	maphash.WriteComparable(&h1, struct {
		I int
		B bool
	}{I: 7, B: true})
	maphash.WriteComparable(&h2, struct {
		I int
		B bool
	}{I: 7, B: true})
	if h1.Sum64() != h2.Sum64() {
		t.Fatalf("WriteComparable produced different hashes for same input: %#x != %#x", h1.Sum64(), h2.Sum64())
	}

	var mixedA, mixedB maphash.Hash
	mixedA.SetSeed(seed)
	mixedB.SetSeed(seed)

	if _, err := mixedA.Write([]byte{1, 2, 3}); err != nil {
		t.Fatalf("Write before WriteComparable: %v", err)
	}
	maphash.WriteComparable(&mixedA, "suffix")

	maphash.WriteComparable(&mixedB, "suffix")
	if _, err := mixedB.Write([]byte{1, 2, 3}); err != nil {
		t.Fatalf("Write after WriteComparable: %v", err)
	}

	if mixedA.Sum64() == mixedB.Sum64() {
		t.Fatalf("Comparable mixing failed to distinguish ordering")
	}

	var lazy maphash.Hash
	maphash.WriteComparable(&lazy, 99)
	if lazy.Sum64() == 0 {
		t.Fatalf("Sum64 returned zero after WriteComparable on zero hash")
	}
}

func TestHashSeedLazilyInitialised(t *testing.T) {
	var h maphash.Hash
	first := h.Seed()
	if first == (maphash.Seed{}) {
		t.Fatalf("Seed on zero Hash did not initialize seed")
	}
	second := h.Seed()
	if first != second {
		t.Fatalf("Seed not stable: %#v != %#v", first, second)
	}
}

func mustPanic(t *testing.T, name string, fn func()) {
	t.Helper()
	defer func() {
		if recover() == nil {
			t.Fatalf("%s: expected panic", name)
		}
	}()
	fn()
}
