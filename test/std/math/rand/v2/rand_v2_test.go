package randv2_test

import (
	"encoding/hex"
	"math"
	"math/rand/v2"
	"testing"
)

var (
	_ rand.Source = (*rand.PCG)(nil)
	_ rand.Source = (*rand.ChaCha8)(nil)
)

func newDetRand() *rand.Rand {
	return rand.New(rand.NewPCG(1, 2))
}

func TestRandDeterministicPCG(t *testing.T) {
	r1 := newDetRand()
	r2 := newDetRand()
	for i := 0; i < 8; i++ {
		if got1, got2 := r1.Uint64(), r2.Uint64(); got1 != got2 {
			t.Fatalf("Uint64 mismatch at %d: %d vs %d", i, got1, got2)
		}
	}

	r := newDetRand()
	if got := r.Int(); got != 4969059760275911952 {
		t.Fatalf("Int got %d", got)
	}
	if got := r.Int32(); got != 1323786710 {
		t.Fatalf("Int32 got %d", got)
	}
	if got := r.Int64(); got != 5246770554000605320 {
		t.Fatalf("Int64 got %d", got)
	}
	if got := r.Uint64(); got != 14694613213362438554 {
		t.Fatalf("Uint64 got %d", got)
	}
	if got := r.Uint32(); got != 1006208920 {
		t.Fatalf("Uint32 got %d", got)
	}
	if got := r.Float64(); got != 0.3883664855410056 {
		t.Fatalf("Float64 got %0.16f", got)
	}
	if got := r.Float32(); got != 0.97740936 {
		t.Fatalf("Float32 got %0.8f", got)
	}
	if got := r.ExpFloat64(); got != 0.5513632046504593 {
		t.Fatalf("ExpFloat64 got %0.16f", got)
	}
	if got := r.NormFloat64(); got != -0.11707238034168332 {
		t.Fatalf("NormFloat64 got %0.17f", got)
	}
	if got := r.Int32N(10); got != 1 {
		t.Fatalf("Int32N got %d", got)
	}
	if got := r.Int64N(100); got != 66 {
		t.Fatalf("Int64N got %d", got)
	}
	if got := r.IntN(7); got != 3 {
		t.Fatalf("IntN got %d", got)
	}
	if got := r.Uint32N(15); got != 14 {
		t.Fatalf("Uint32N got %d", got)
	}
	if got := r.Uint64N(123); got != 14 {
		t.Fatalf("Uint64N got %d", got)
	}
	if got := r.UintN(21); got != 8 {
		t.Fatalf("UintN got %d", got)
	}
	if got := r.Uint(); got != 14454429957748299131 {
		t.Fatalf("Uint got %d", got)
	}
	if got := r.Int(); got != 4257872588489500903 {
		t.Fatalf("Int second got %d", got)
	}
}

func TestRandPermAndShuffle(t *testing.T) {
	r := newDetRand()
	if got, want := r.Perm(6), []int{1, 5, 2, 0, 3, 4}; !equalIntSlice(got, want) {
		t.Fatalf("Perm=%v want=%v", got, want)
	}
	r = newDetRand()
	vals := []int{0, 1, 2, 3, 4}
	r.Shuffle(len(vals), func(i, j int) { vals[i], vals[j] = vals[j], vals[i] })
	if got, want := vals, []int{1, 4, 2, 0, 3}; !equalIntSlice(got, want) {
		t.Fatalf("Shuffle=%v want=%v", got, want)
	}

	perm := rand.Perm(10)
	if len(perm) != 10 {
		t.Fatalf("rand.Perm length=%d", len(perm))
	}
	seen := make(map[int]bool)
	for _, v := range perm {
		if v < 0 || v >= 10 {
			t.Fatalf("Perm value out of range %d", v)
		}
		if seen[v] {
			t.Fatalf("duplicate value %d", v)
		}
		seen[v] = true
	}

	data := []int{0, 1, 2}
	rand.Shuffle(len(data), func(i, j int) { data[i], data[j] = data[j], data[i] })
	if len(data) != 3 {
		t.Fatalf("Shuffle altered length %d", len(data))
	}
}

func TestTopLevelFunctionsBounds(t *testing.T) {
	if v := rand.Float32(); !(v >= 0 && v < 1) {
		t.Fatalf("Float32=%f", v)
	}
	if v := rand.Float64(); !(v >= 0 && v < 1) {
		t.Fatalf("Float64=%f", v)
	}
	if v := rand.Int32(); v == 0 {
		// value may be zero, but calling ensures coverage
	}
	if v := rand.Int64(); v == 0 {
		// likewise
	}
	if v := rand.Int32N(5); v < 0 || v >= 5 {
		t.Fatalf("Int32N=%d", v)
	}
	if v := rand.Int64N(7); v < 0 || v >= 7 {
		t.Fatalf("Int64N=%d", v)
	}
	if v := rand.IntN(9); v < 0 || v >= 9 {
		t.Fatalf("IntN=%d", v)
	}
	if v := rand.Uint32(); v == 0 {
		// ensure call exercised
	}
	if v := rand.Uint32N(11); v >= 11 {
		t.Fatalf("Uint32N=%d", v)
	}
	if v := rand.Uint64N(13); v >= 13 {
		t.Fatalf("Uint64N=%d", v)
	}
	if v := rand.UintN(15); v >= 15 {
		t.Fatalf("UintN=%d", v)
	}
	if rand.ExpFloat64() <= 0 {
		t.Fatal("ExpFloat64 not positive")
	}
	if math.IsNaN(rand.NormFloat64()) {
		t.Fatal("NormFloat64 NaN")
	}
	if rand.Uint() == 0 && rand.Uint() == 0 {
		// extremely unlikely but check not constant
		t.Fatal("Uint appears stuck at zero")
	}
	if rand.Int() == rand.Int() {
		// possible but astronomically unlikely; mitigate by retry
		if rand.Int() == rand.Int() {
			t.Fatal("Int produced identical values repeatedly")
		}
	}
}

func TestGenericN(t *testing.T) {
	if v := rand.N[uint16](10); v >= 10 {
		t.Fatalf("N uint16=%d", v)
	}
	if v := rand.N[int8](12); v < 0 || v >= 12 {
		t.Fatalf("N int8=%d", v)
	}
}

func TestZipfDeterministic(t *testing.T) {
	r1 := rand.New(rand.NewPCG(1, 2))
	r2 := rand.New(rand.NewPCG(1, 2))
	z1 := rand.NewZipf(r1, 1.5, 1.0, 10)
	z2 := rand.NewZipf(r2, 1.5, 1.0, 10)
	for i := 0; i < 5; i++ {
		v1, v2 := z1.Uint64(), z2.Uint64()
		if v1 != v2 {
			t.Fatalf("Zipf mismatch %d: %d vs %d", i, v1, v2)
		}
		if v1 > 10 {
			t.Fatalf("Zipf value out of range %d", v1)
		}
	}
}

func TestPCGMarshal(t *testing.T) {
	p := rand.NewPCG(1, 2)
	if got := p.Uint64(); got != 14192431797130687760 {
		t.Fatalf("first Uint64=%d", got)
	}
	state, err := p.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary err %v", err)
	}
	if len(state) != 20 {
		t.Fatalf("encoded length=%d", len(state))
	}
	if hex.EncodeToString(state) != "7063673ae299ad9c2bef30ba9b113a4837016dd9" {
		t.Fatalf("state hex=%s", hex.EncodeToString(state))
	}
	var copy rand.PCG
	if err := copy.UnmarshalBinary(state); err != nil {
		t.Fatalf("UnmarshalBinary err %v", err)
	}
	if got := p.Uint64(); got != 11371241257079532652 {
		t.Fatalf("post-marsh original=%d", got)
	}
	if got := copy.Uint64(); got != 11371241257079532652 {
		t.Fatalf("post-unmarshal copy=%d", got)
	}
	buf := []byte{9}
	out, err := copy.AppendBinary(buf)
	if err != nil {
		t.Fatalf("AppendBinary err %v", err)
	}
	if len(out) != 21 {
		t.Fatalf("append length=%d", len(out))
	}
	var zero rand.PCG
	var zeroNew = rand.NewPCG(0, 0)
	if zero.Uint64() != zeroNew.Uint64() {
		t.Fatal("zero PCG and NewPCG(0,0) differ")
	}
	zero.Seed(5, 6)
	if v := zero.Uint64(); v == 0 {
		t.Fatal("Seed did not affect generator")
	}
}

func TestChaCha8State(t *testing.T) {
	var seed [32]byte
	for i := range seed {
		seed[i] = byte(i)
	}
	c := rand.NewChaCha8(seed)
	if got := c.Uint64(); got != 12537355132343524571 {
		t.Fatalf("Uint64=%d", got)
	}
	buf := make([]byte, 16)
	if n, err := c.Read(buf); err != nil || n != len(buf) {
		t.Fatalf("Read returned n=%d err=%v", n, err)
	}
	hexBuf := hex.EncodeToString(buf)
	if hexBuf != "ddfe0e8df43bb39a00ae8a375a4e9826" {
		t.Fatalf("Read bytes=%s", hexBuf)
	}
	state, err := c.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary err %v", err)
	}
	if len(state) != 48 {
		t.Fatalf("state length=%d", len(state))
	}
	var c2 rand.ChaCha8
	if err := c2.UnmarshalBinary(state); err != nil {
		t.Fatalf("UnmarshalBinary err %v", err)
	}
	if got := c2.Uint64(); got != 8844178409879327515 {
		t.Fatalf("Uint64 after unmarshal=%d", got)
	}
	appended, err := c2.AppendBinary([]byte{1, 2})
	if err != nil {
		t.Fatalf("AppendBinary err %v", err)
	}
	if len(appended) != 50 {
		t.Fatalf("append len=%d", len(appended))
	}
	c2.Seed(seed)
	if got := c2.Uint64(); got != 12537355132343524571 {
		t.Fatalf("Uint64 after Seed=%d", got)
	}
}

func equalIntSlice(a, b []int) bool {
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
