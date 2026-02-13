package sha3_test

import (
	"crypto/sha3"
	"encoding/hex"
	"testing"
)

func TestSum224(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"", "6b4e03423667dbb73b6e15454f0eb1abd4597f9a1b078e3f5b5a6bc7"},
		{"abc", "e642824c3f8cf24ad09234ee7d3c766fc9a3a5168d0c94ad73b46fdf"},
	}

	for _, tt := range tests {
		result := sha3.Sum224([]byte(tt.input))
		got := hex.EncodeToString(result[:])
		if got != tt.want {
			t.Errorf("Sum224(%q) = %s, want %s", tt.input, got, tt.want)
		}
	}
}

func TestSum256(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"", "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a"},
		{"abc", "3a985da74fe225b2045c172d6bd390bd855f086e3e9d525b46bfe24511431532"},
	}

	for _, tt := range tests {
		result := sha3.Sum256([]byte(tt.input))
		got := hex.EncodeToString(result[:])
		if got != tt.want {
			t.Errorf("Sum256(%q) = %s, want %s", tt.input, got, tt.want)
		}
	}
}

func TestSum384(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"", "0c63a75b845e4f7d01107d852e4c2485c51a50aaaa94fc61995e71bbee983a2ac3713831264adb47fb6bd1e058d5f004"},
		{"abc", "ec01498288516fc926459f58e2c6ad8df9b473cb0fc08c2596da7cf0e49be4b298d88cea927ac7f539f1edf228376d25"},
	}

	for _, tt := range tests {
		result := sha3.Sum384([]byte(tt.input))
		got := hex.EncodeToString(result[:])
		if got != tt.want {
			t.Errorf("Sum384(%q) = %s, want %s", tt.input, got, tt.want)
		}
	}
}

func TestSum512(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"", "a69f73cca23a9ac5c8b567dc185a756e97c982164fe25859e0d1dcc1475c80a615b2123af1f5f94c11e3e9402c3ac558f500199d95b6d3e301758586281dcd26"},
		{"abc", "b751850b1a57168a5693cd924b6b096e08f621827444f70d884f5d0240d2712e10e116e9192af3c91a7ec57647e3934057340b4cf408d5a56592f8274eec53f0"},
	}

	for _, tt := range tests {
		result := sha3.Sum512([]byte(tt.input))
		got := hex.EncodeToString(result[:])
		if got != tt.want {
			t.Errorf("Sum512(%q) = %s, want %s", tt.input, got, tt.want)
		}
	}
}

func TestSumSHAKE128(t *testing.T) {
	result := sha3.SumSHAKE128([]byte("abc"), 32)
	if len(result) != 32 {
		t.Errorf("SumSHAKE128 returned %d bytes, want 32", len(result))
	}

	want := "5881092dd818bf5cf8a3ddb793fbcba74097d5c526a6d35f97b83351940f2cc8"
	got := hex.EncodeToString(result)
	if got != want {
		t.Errorf("SumSHAKE128(\"abc\", 32) = %s, want %s", got, want)
	}
}

func TestSumSHAKE256(t *testing.T) {
	result := sha3.SumSHAKE256([]byte("abc"), 64)
	if len(result) != 64 {
		t.Errorf("SumSHAKE256 returned %d bytes, want 64", len(result))
	}

	want := "483366601360a8771c6863080cc4114d8db44530f8f1e1ee4f94ea37e78b5739d5a15bef186a5386c75744c0527e1faa9f8726e462a12a4feb06bd8801e751e4"
	got := hex.EncodeToString(result)
	if got != want {
		t.Errorf("SumSHAKE256(\"abc\", 64) = %s, want %s", got, want)
	}
}

func TestNew224(t *testing.T) {
	h := sha3.New224()
	if h == nil {
		t.Fatal("New224() returned nil")
	}

	if h.Size() != 28 {
		t.Errorf("Size() = %d, want 28", h.Size())
	}

	if h.BlockSize() != 144 {
		t.Errorf("BlockSize() = %d, want 144", h.BlockSize())
	}

	h.Write([]byte("abc"))
	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "e642824c3f8cf24ad09234ee7d3c766fc9a3a5168d0c94ad73b46fdf"

	if got != want {
		t.Errorf("New224 hash = %s, want %s", got, want)
	}

	// Test Reset
	h.Reset()
	h.Write([]byte("abc"))
	result2 := h.Sum(nil)
	got2 := hex.EncodeToString(result2)
	if got2 != want {
		t.Errorf("After Reset, hash = %s, want %s", got2, want)
	}
}

func TestNew256(t *testing.T) {
	h := sha3.New256()
	if h == nil {
		t.Fatal("New256() returned nil")
	}

	h.Write([]byte("abc"))
	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "3a985da74fe225b2045c172d6bd390bd855f086e3e9d525b46bfe24511431532"

	if got != want {
		t.Errorf("New256 hash = %s, want %s", got, want)
	}
}

func TestNew384(t *testing.T) {
	h := sha3.New384()
	if h == nil {
		t.Fatal("New384() returned nil")
	}

	h.Write([]byte("abc"))
	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "ec01498288516fc926459f58e2c6ad8df9b473cb0fc08c2596da7cf0e49be4b298d88cea927ac7f539f1edf228376d25"

	if got != want {
		t.Errorf("New384 hash = %s, want %s", got, want)
	}
}

func TestNew512(t *testing.T) {
	h := sha3.New512()
	if h == nil {
		t.Fatal("New512() returned nil")
	}

	h.Write([]byte("abc"))
	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "b751850b1a57168a5693cd924b6b096e08f621827444f70d884f5d0240d2712e10e116e9192af3c91a7ec57647e3934057340b4cf408d5a56592f8274eec53f0"

	if got != want {
		t.Errorf("New512 hash = %s, want %s", got, want)
	}
}

func TestNewSHAKE128(t *testing.T) {
	h := sha3.NewSHAKE128()
	if h == nil {
		t.Fatal("NewSHAKE128() returned nil")
	}

	h.Write([]byte("abc"))
	result := make([]byte, 32)
	h.Read(result)

	want := "5881092dd818bf5cf8a3ddb793fbcba74097d5c526a6d35f97b83351940f2cc8"
	got := hex.EncodeToString(result)
	if got != want {
		t.Errorf("NewSHAKE128 hash = %s, want %s", got, want)
	}
}

func TestNewSHAKE256(t *testing.T) {
	h := sha3.NewSHAKE256()
	if h == nil {
		t.Fatal("NewSHAKE256() returned nil")
	}

	h.Write([]byte("abc"))
	result := make([]byte, 64)
	h.Read(result)

	want := "483366601360a8771c6863080cc4114d8db44530f8f1e1ee4f94ea37e78b5739d5a15bef186a5386c75744c0527e1faa9f8726e462a12a4feb06bd8801e751e4"
	got := hex.EncodeToString(result)
	if got != want {
		t.Errorf("NewSHAKE256 hash = %s, want %s", got, want)
	}
}

func TestNewCSHAKE128(t *testing.T) {
	h := sha3.NewCSHAKE128(nil, nil)
	if h == nil {
		t.Fatal("NewCSHAKE128() returned nil")
	}

	h.Write([]byte("test"))
	result := make([]byte, 32)
	h.Read(result)

	if len(result) != 32 {
		t.Errorf("Expected 32 bytes, got %d", len(result))
	}
}

func TestNewCSHAKE256(t *testing.T) {
	h := sha3.NewCSHAKE256(nil, nil)
	if h == nil {
		t.Fatal("NewCSHAKE256() returned nil")
	}

	h.Write([]byte("test"))
	result := make([]byte, 64)
	h.Read(result)

	if len(result) != 64 {
		t.Errorf("Expected 64 bytes, got %d", len(result))
	}
}

func TestSHA3MarshalBinary(t *testing.T) {
	h := sha3.New256()
	h.Write([]byte("test data"))

	// Marshal the state
	state, err := h.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary failed: %v", err)
	}

	// Create a new hash and unmarshal
	h2 := sha3.New256()
	err = h2.UnmarshalBinary(state)
	if err != nil {
		t.Fatalf("UnmarshalBinary failed: %v", err)
	}

	// Both should produce the same result
	result1 := h.Sum(nil)
	result2 := h2.Sum(nil)

	if hex.EncodeToString(result1) != hex.EncodeToString(result2) {
		t.Error("Unmarshaled hash produced different result")
	}
}

func TestSHA3AppendBinary(t *testing.T) {
	h := sha3.New256()
	h.Write([]byte("test"))

	prefix := []byte("prefix")
	result, err := h.AppendBinary(prefix)
	if err != nil {
		t.Fatalf("AppendBinary failed: %v", err)
	}

	if len(result) <= len(prefix) {
		t.Error("AppendBinary should append data to prefix")
	}

	// Check that prefix is preserved
	for i := 0; i < len(prefix); i++ {
		if result[i] != prefix[i] {
			t.Error("AppendBinary modified prefix")
			break
		}
	}
}

func TestSHAKEMarshalBinary(t *testing.T) {
	h := sha3.NewSHAKE128()
	h.Write([]byte("test data"))

	// Marshal the state
	state, err := h.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary failed: %v", err)
	}

	// Create a new SHAKE and unmarshal
	h2 := sha3.NewSHAKE128()
	err = h2.UnmarshalBinary(state)
	if err != nil {
		t.Fatalf("UnmarshalBinary failed: %v", err)
	}

	// Both should produce the same result
	result1 := make([]byte, 32)
	result2 := make([]byte, 32)
	h.Read(result1)
	h2.Read(result2)

	if hex.EncodeToString(result1) != hex.EncodeToString(result2) {
		t.Error("Unmarshaled SHAKE produced different result")
	}
}

func TestSHAKEAppendBinary(t *testing.T) {
	h := sha3.NewSHAKE128()
	h.Write([]byte("test"))

	prefix := []byte("prefix")
	result, err := h.AppendBinary(prefix)
	if err != nil {
		t.Fatalf("AppendBinary failed: %v", err)
	}

	if len(result) <= len(prefix) {
		t.Error("AppendBinary should append data to prefix")
	}

	// Check that prefix is preserved
	for i := 0; i < len(prefix); i++ {
		if result[i] != prefix[i] {
			t.Error("AppendBinary modified prefix")
			break
		}
	}
}

func TestSHAKEBlockSize(t *testing.T) {
	h128 := sha3.NewSHAKE128()
	if h128.BlockSize() != 168 {
		t.Errorf("SHAKE128 BlockSize() = %d, want 168", h128.BlockSize())
	}

	h256 := sha3.NewSHAKE256()
	if h256.BlockSize() != 136 {
		t.Errorf("SHAKE256 BlockSize() = %d, want 136", h256.BlockSize())
	}
}

func TestSHAKEReset(t *testing.T) {
	h := sha3.NewSHAKE128()
	h.Write([]byte("data"))

	result1 := make([]byte, 32)
	h.Read(result1)

	// Reset and write again
	h.Reset()
	h.Write([]byte("data"))

	result2 := make([]byte, 32)
	h.Read(result2)

	if hex.EncodeToString(result1) != hex.EncodeToString(result2) {
		t.Error("Reset did not restore initial state")
	}
}
