package big_test

import (
	"encoding/json"
	"fmt"
	"math"
	"math/big"
	"math/rand"
	"strings"
	"testing"
	"unicode"
)

func mustInt(t *testing.T, literal string) *big.Int {
	t.Helper()
	v, ok := new(big.Int).SetString(literal, 0)
	if !ok {
		t.Fatalf("failed to parse %q as *big.Int", literal)
	}
	return v
}

func mustRat(t *testing.T, literal string) *big.Rat {
	t.Helper()
	v, ok := new(big.Rat).SetString(literal)
	if !ok {
		t.Fatalf("failed to parse %q as *big.Rat", literal)
	}
	return v
}

func mustFloat(t *testing.T, literal string) *big.Float {
	t.Helper()
	f, _, err := big.ParseFloat(literal, 0, 256, big.ToNearestEven)
	if err != nil {
		t.Fatalf("failed to parse float %q: %v", literal, err)
	}
	return f
}

type formatBuffer struct {
	strings.Builder
}

func (f *formatBuffer) Write(b []byte) (int, error) { return f.Builder.Write(b) }
func (f *formatBuffer) Width() (int, bool)          { return 0, false }
func (f *formatBuffer) Precision() (int, bool)      { return 0, false }
func (f *formatBuffer) Flag(c int) bool             { return false }

type scanState struct {
	*strings.Reader
}

func (s *scanState) ReadRune() (rune, int, error) { return s.Reader.ReadRune() }
func (s *scanState) UnreadRune() error            { return s.Reader.UnreadRune() }
func (s *scanState) SkipSpace() {
	for {
		r, _, err := s.ReadRune()
		if err != nil {
			return
		}
		if !unicode.IsSpace(r) {
			s.UnreadRune()
			return
		}
	}
}

func (s *scanState) Token(skipSpace bool, f func(rune) bool) ([]byte, error) {
	if skipSpace {
		s.SkipSpace()
	}
	var buf []rune
	for {
		r, _, err := s.ReadRune()
		if err != nil {
			if len(buf) == 0 {
				return nil, err
			}
			break
		}
		if !f(r) {
			s.UnreadRune()
			break
		}
		buf = append(buf, r)
	}
	if len(buf) == 0 {
		return nil, fmt.Errorf("empty token")
	}
	return []byte(string(buf)), nil
}

func (s *scanState) Width() (int, bool)     { return 0, false }
func (s *scanState) Precision() (int, bool) { return 0, false }
func (s *scanState) Flag(int) bool          { return false }

func expectInt(t *testing.T, got *big.Int, want string) {
	t.Helper()
	if cmp := got.Cmp(mustInt(t, want)); cmp != 0 {
		t.Fatalf("integer mismatch: got %s, want %s", got.String(), want)
	}
}

func expectRat(t *testing.T, got *big.Rat, want string) {
	t.Helper()
	if cmp := got.Cmp(mustRat(t, want)); cmp != 0 {
		t.Fatalf("rational mismatch: got %s, want %s", got.RatString(), want)
	}
}

func TestIntArithmetic(t *testing.T) {
	a := mustInt(t, "12345678901234567890")
	b := mustInt(t, "-9876543210987654321")

	sum := new(big.Int).Add(new(big.Int).Set(a), b)
	expectInt(t, sum, "2469135690246913569")

	diff := new(big.Int).Sub(new(big.Int).Set(a), b)
	expectInt(t, diff, "22222222112222222211")

	product := new(big.Int).Mul(new(big.Int).Set(a), b)
	expectInt(t, product, "-121932631137021795223746380111126352690")

	neg := new(big.Int).Neg(new(big.Int).Set(b))
	expectInt(t, neg, "9876543210987654321")

	abs := new(big.Int).Abs(new(big.Int).Set(b))
	expectInt(t, abs, "9876543210987654321")
}

func TestIntQuoRemAndMod(t *testing.T) {
	dividend := mustInt(t, "-12345678901234567890")
	divisor := big.NewInt(97)

	quotient := new(big.Int)
	remainder := new(big.Int)
	quotient.QuoRem(dividend, divisor, remainder)

	expectInt(t, quotient, "-127275040218913071")
	expectInt(t, remainder, "-3")

	lhs := new(big.Int).Mul(quotient, divisor)
	lhs.Add(lhs, remainder)
	if lhs.Cmp(dividend) != 0 {
		t.Fatalf("quotient/remainder identity failed: got %s, want %s", lhs, dividend)
	}

	modulus := new(big.Int).Mod(dividend, divisor)
	if modulus.Sign() < 0 || modulus.Cmp(divisor) >= 0 {
		t.Fatalf("Mod should produce non-negative remainder < divisor: %s", modulus)
	}

	expectedMod := new(big.Int).Add(remainder, divisor)
	if modulus.Cmp(expectedMod) != 0 {
		t.Fatalf("Mod result mismatch: got %s, want %s", modulus, expectedMod)
	}
}

func TestIntParsingAndBinomial(t *testing.T) {
	cases := []struct {
		literal string
		want    string
	}{
		{"0xff", "255"},
		{"0b101010", "42"},
		{"0o755", "493"},
		{"-0X2A", "-42"},
		{"12345678", "12345678"},
	}
	for _, tc := range cases {
		got := mustInt(t, tc.literal)
		if got.Cmp(mustInt(t, tc.want)) != 0 {
			t.Fatalf("SetString mismatch for %q: got %s, want %s", tc.literal, got, tc.want)
		}
	}

	base36 := new(big.Int)
	if _, ok := base36.SetString("zzzz", 36); !ok {
		t.Fatalf("SetString failed for base36 literal")
	}
	expectInt(t, base36, "1679615")

	gcdA := mustInt(t, "1989")
	gcdB := mustInt(t, "867")
	x := new(big.Int)
	y := new(big.Int)
	gcd := new(big.Int).GCD(x, y, gcdA, gcdB)
	expectInt(t, gcd, "51")

	left := new(big.Int).Mul(x, gcdA)
	right := new(big.Int).Mul(y, gcdB)
	left.Add(left, right)
	if left.Cmp(gcd) != 0 {
		t.Fatalf("Bézout identity failed: %s != %s", left, gcd)
	}

	bin := new(big.Int).Binomial(100, 50)
	expectInt(t, bin, "100891344545564193334812497256")
}

func TestFloatRatConversions(t *testing.T) {
	rat := mustRat(t, "355/113")
	f := new(big.Float).SetPrec(256)
	f.SetRat(rat)

	recovered, acc := f.Rat(new(big.Rat))
	if acc != big.Exact {
		t.Fatalf("expected exact conversion, got %v", acc)
	}
	delta := new(big.Rat).Sub(recovered, rat)
	delta.Abs(delta)
	threshold := new(big.Rat).SetFrac(big.NewInt(1), new(big.Int).Lsh(big.NewInt(1), 200))
	if delta.Cmp(threshold) > 0 {
		t.Fatalf("Rat conversion drift too large: diff=%s", delta.RatString())
	}

	if text := f.Text('f', 6); text != "3.141593" {
		t.Fatalf("Float.Text mismatch: got %q", text)
	}

	three := new(big.Float).SetPrec(256).SetInt64(3)
	quotient := new(big.Float).SetPrec(256).Quo(f, three)
	if text := quotient.Text('f', 18); text != "1.047197640117994100" {
		t.Fatalf("unexpected quotient string: %q", text)
	}
}

func TestFloatParsingAndRounding(t *testing.T) {
	f := new(big.Float).SetPrec(80)
	if _, ok := f.SetString("-1.234567890123456789e+42"); !ok {
		t.Fatal("SetString failed for scientific notation")
	}

	if text := f.Text('e', 6); text != "-1.234568e+42" {
		t.Fatalf("rounded text mismatch: %q", text)
	}
	if !f.Signbit() {
		t.Fatal("expected negative signbit")
	}
	mant := new(big.Float)
	exp := f.MantExp(mant)
	if exp <= 0 {
		t.Fatalf("MantExp returned non-positive exponent: %d", exp)
	}
	if !mant.Signbit() {
		t.Fatalf("mantissa should inherit sign: %s", mant.Text('p', 0))
	}

	twoThirds := new(big.Float).SetPrec(80).SetRat(big.NewRat(2, 3))
	truncated := new(big.Float).SetPrec(20)
	truncated.SetMode(big.ToZero)
	truncated.Set(twoThirds)
	if truncated.Cmp(twoThirds) >= 0 {
		t.Fatalf("expected truncated value to be < original: %s vs %s", truncated.Text('p', 0), twoThirds.Text('p', 0))
	}
	if truncated.Sign() != 1 {
		t.Fatalf("unexpected sign for truncated value: %d", truncated.Sign())
	}
}

func TestRatOperations(t *testing.T) {
	a := mustRat(t, "2/3")
	b := mustRat(t, "-4/9")

	sum := new(big.Rat).Add(new(big.Rat).Set(a), b)
	expectRat(t, sum, "2/9")

	product := new(big.Rat).Mul(new(big.Rat).Set(a), b)
	expectRat(t, product, "-8/27")

	quotient := new(big.Rat).Quo(new(big.Rat).Set(a), b)
	expectRat(t, quotient, "-3/2")

	neg := new(big.Rat).Neg(b)
	expectRat(t, neg, "4/9")

	abs := new(big.Rat).Abs(b)
	expectRat(t, abs, "4/9")

	if a.Sign() != 1 || b.Sign() != -1 {
		t.Fatalf("unexpected sign results: %d %d", a.Sign(), b.Sign())
	}

	sumFloat := sum.FloatString(4)
	if sumFloat != "0.2222" {
		t.Fatalf("FloatString mismatch: %q", sumFloat)
	}
}

func TestRatSetStringForms(t *testing.T) {
	cases := []struct {
		literal string
		want    string
	}{
		{"-0.125", "-1/8"},
		{"3/21", "1/7"},
		{"12.5", "25/2"},
		{"1p-4", "1/16"},
	}
	for _, tc := range cases {
		r := mustRat(t, tc.literal)
		if r.Cmp(mustRat(t, tc.want)) != 0 {
			t.Fatalf("SetString mismatch for %q: got %s, want %s", tc.literal, r.RatString(), tc.want)
		}
	}
}

func TestPackageLevelSymbols(t *testing.T) {
	if s := big.Accuracy(1).String(); s == "" {
		t.Fatal("Accuracy.String returned empty string")
	}
	if s := big.RoundingMode(0).String(); s == "" {
		t.Fatal("RoundingMode.String returned empty string")
	}
	if _, ok := any(big.ErrNaN{}).(error); !ok {
		t.Fatal("ErrNaN should implement error")
	}
	if big.MaxBase <= 1 {
		t.Fatalf("unexpected MaxBase: %d", big.MaxBase)
	}
	if big.MaxExp <= big.MinExp {
		t.Fatalf("MinExp/MaxExp out of order: %d >= %d", big.MinExp, big.MaxExp)
	}
	if big.MaxPrec == 0 {
		t.Fatal("MaxPrec should be > 0")
	}

	n := big.NewInt(1001)
	m := big.NewInt(9907)
	if v := big.Jacobi(n, m); v == 0 {
		t.Fatalf("Jacobi(%s,%s) returned 0", n, m)
	}

	parsed, base, err := big.ParseFloat("3.125", 10, 80, big.ToNearestEven)
	if err != nil {
		t.Fatalf("ParseFloat failed: %v", err)
	}
	if base != 10 {
		t.Fatalf("ParseFloat base = %d, want 10", base)
	}
	if text := parsed.Text('f', 3); text != "3.125" {
		t.Fatalf("ParseFloat text = %q", text)
	}
	if w := big.Word(7); w != 7 {
		t.Fatalf("Word conversion mismatch: got %d, want 7", w)
	}
}

func TestFloatExtendedAPI(t *testing.T) {
	f := new(big.Float).SetPrec(128).SetMode(big.ToNearestAway)
	if f.Mode() != big.ToNearestAway {
		t.Fatalf("unexpected rounding mode: %v", f.Mode())
	}
	f.SetFloat64(123.5)
	if f.Prec() != 128 {
		t.Fatalf("unexpected precision: %d", f.Prec())
	}
	if f.MinPrec() == 0 {
		t.Fatal("MinPrec should be > 0 for finite values")
	}

	buf := f.Append(nil, 'f', 1)
	if !strings.HasPrefix(string(buf), "123.5") {
		t.Fatalf("Append produced %q", buf)
	}
	buf, err := f.AppendText(nil)
	if err != nil || len(buf) == 0 {
		t.Fatalf("AppendText failed: %v %q", err, buf)
	}
	if s := fmt.Sprintf("%+.2f", f); !strings.Contains(s, "+123.50") {
		t.Fatalf("Format mismatch: %q", s)
	}
	if f.String() == "" {
		t.Fatal("String returned empty")
	}
	fb := &formatBuffer{}
	f.Format(fb, 'f')
	if fb.String() == "" {
		t.Fatal("Format buffer should capture output")
	}

	dup := new(big.Float).Copy(f)
	if dup.Cmp(f) != 0 {
		t.Fatalf("Copy mismatch: %s vs %s", dup.String(), f.String())
	}

	abs := new(big.Float).Abs(new(big.Float).SetFloat64(-5.25))
	if abs.Sign() != 1 {
		t.Fatalf("Abs produced sign %d", abs.Sign())
	}

	sum := new(big.Float).Add(new(big.Float).SetFloat64(1.5), new(big.Float).SetFloat64(2.25))
	if v, _ := sum.Float64(); math.Abs(v-3.75) > 1e-9 {
		t.Fatalf("Add result mismatch: %v", v)
	}
	diff := new(big.Float).Sub(new(big.Float).SetFloat64(5), new(big.Float).SetFloat64(2))
	if v, _ := diff.Float64(); v != 3 {
		t.Fatalf("Sub result mismatch: %v", v)
	}
	prod := new(big.Float).Mul(new(big.Float).SetFloat64(3), new(big.Float).SetFloat64(4))
	if v, _ := prod.Float64(); v != 12 {
		t.Fatalf("Mul result mismatch: %v", v)
	}
	neg := new(big.Float).Neg(new(big.Float).SetFloat64(7))
	if neg.Sign() != -1 {
		t.Fatalf("Neg sign mismatch: %d", neg.Sign())
	}

	if f32, acc := sum.Float32(); math.Abs(float64(f32)-3.75) > 1e-5 || acc.String() == "" {
		t.Fatalf("Float32 conversion (%v,%v)", f32, acc)
	}
	if v, acc := sum.Float64(); math.Abs(v-3.75) > 1e-9 || acc.String() == "" {
		t.Fatalf("Float64 conversion (%v,%v)", v, acc)
	}

	frac := mustFloat(t, "42.75")
	intPart := new(big.Int)
	if _, acc := frac.Int(intPart); acc != big.Below {
		t.Fatalf("Int accuracy = %v, want Below", acc)
	}
	if intPart.String() != "42" {
		t.Fatalf("Int result = %s", intPart)
	}
	if _, acc := new(big.Float).SetInt64(17).Int64(); acc != big.Exact {
		t.Fatalf("Int64 accuracy %v, want Exact", acc)
	}
	if u, acc := new(big.Float).SetUint64(21).Uint64(); u != 21 || acc != big.Exact {
		t.Fatalf("Uint64 result (%d,%v)", u, acc)
	}
	if !new(big.Float).SetInt64(5).IsInt() {
		t.Fatal("IsInt should report true")
	}
	if new(big.Float).SetFloat64(3.14).IsInt() {
		t.Fatal("IsInt should report false")
	}

	func() {
		defer func() {
			if r := recover(); r == nil {
				t.Fatal("expected ErrNaN panic")
			} else if err, ok := r.(big.ErrNaN); !ok {
				t.Fatalf("unexpected panic type: %T", r)
			} else if err.Error() == "" {
				t.Fatal("ErrNaN.Error returned empty string")
			}
		}()
		new(big.Float).Quo(big.NewFloat(0), big.NewFloat(0))
	}()
	if parsed, base, err := new(big.Float).Parse("0x1.2p+2", 0); err != nil || base != 16 {
		t.Fatalf("Parse hex failed: %v base=%d", err, base)
	} else if text := parsed.Text('f', 1); text != "4.5" {
		t.Fatalf("Parse hex value mismatch: %s", text)
	}

	var scanned big.Float
	if _, err := fmt.Fscan(strings.NewReader("-56.5"), &scanned); err != nil {
		t.Fatalf("Scan failed: %v", err)
	}
	if scanned.String() != "-56.5" {
		t.Fatalf("Scan value mismatch: %s", scanned.String())
	}
	floatScan := &scanState{strings.NewReader("12.5")}
	var directScanned big.Float
	if err := directScanned.Scan(floatScan, 'f'); err != nil {
		t.Fatalf("Float.Scan failed: %v", err)
	}
	if directScanned.Text('f', 1) != "12.5" {
		t.Fatalf("Float.Scan value mismatch: %s", directScanned.Text('f', 1))
	}

	text, err := f.MarshalText()
	if err != nil {
		t.Fatalf("MarshalText failed: %v", err)
	}
	var unmarshaled big.Float
	if err := unmarshaled.UnmarshalText(text); err != nil {
		t.Fatalf("UnmarshalText failed: %v", err)
	}
	if unmarshaled.Cmp(f) != 0 {
		t.Fatalf("UnmarshalText mismatch: %v vs %v", &unmarshaled, f)
	}

	gobBytes, err := f.GobEncode()
	if err != nil {
		t.Fatalf("GobEncode failed: %v", err)
	}
	var gobDecoded big.Float
	if err := gobDecoded.GobDecode(gobBytes); err != nil {
		t.Fatalf("GobDecode failed: %v", err)
	}
	if gobDecoded.Cmp(f) != 0 {
		t.Fatalf("Gob round-trip mismatch: %v vs %v", &gobDecoded, f)
	}

	if err := f.UnmarshalText([]byte("1.5")); err != nil {
		t.Fatalf("UnmarshalText overwrite failed: %v", err)
	}
	if f.Text('f', 1) != "1.5" {
		t.Fatalf("UnmarshalText value mismatch: %s", f.Text('f', 1))
	}

	if _, ok := f.SetString("-9.25"); !ok {
		t.Fatal("SetString should report success")
	}
	if !strings.HasPrefix(f.Text('f', 2), "-9.25") {
		t.Fatalf("SetString value mismatch: %s", f.Text('f', 2))
	}

	if _, _, err := f.Parse("1.5", 10); err != nil {
		t.Fatalf("Parse overwrite failed: %v", err)
	}

	f.SetInf(true)
	if !f.IsInf() {
		t.Fatal("SetInf(+Inf) did not produce infinity")
	}
	f.SetInf(false)
	if !f.IsInf() {
		t.Fatal("SetInf(-Inf) did not produce infinity")
	}

	f.SetInt(big.NewInt(-12))
	if v, acc := f.Int64(); v != -12 || acc != big.Exact {
		t.Fatalf("SetInt/Int64 mismatch: (%d,%v)", v, acc)
	}
	f.SetUint64(33)
	if v, acc := f.Uint64(); v != 33 || acc != big.Exact {
		t.Fatalf("SetUint64/Uint64 mismatch: (%d,%v)", v, acc)
	}

	rounded := new(big.Float).SetPrec(24).SetMode(big.ToZero)
	if _, _, err := rounded.Parse("0.1", 10); err != nil {
		t.Fatalf("Parse for accuracy failed: %v", err)
	}
	if rounded.Acc() == big.Exact {
		t.Fatal("expected inexact accuracy for 0.1")
	}

	mant := new(big.Float).SetFloat64(0.75)
	value := new(big.Float).SetPrec(80).SetMantExp(mant, 4)
	if v, _ := value.Float64(); math.Abs(v-12) > 1e-9 {
		t.Fatalf("SetMantExp value mismatch: %v", v)
	}

	sqrt := new(big.Float).SetPrec(200).Sqrt(mustFloat(t, "49"))
	if sqrt.Text('f', 1) != "7.0" {
		t.Fatalf("Sqrt mismatch: %s", sqrt)
	}

	inf := new(big.Float).SetInf(true)
	if !inf.IsInf() {
		t.Fatal("SetInf(true) not recognized")
	}
}

func TestIntExtendedAPI(t *testing.T) {
	a := mustInt(t, "12345678901234567890")
	b := mustInt(t, "9876543210987654321")

	and := new(big.Int).And(new(big.Int).Set(a), b)
	or := new(big.Int).Or(new(big.Int).Set(a), b)
	xor := new(big.Int).Xor(new(big.Int).Set(a), b)
	andNot := new(big.Int).AndNot(new(big.Int).Set(a), b)
	not := new(big.Int).Not(big.NewInt(3))
	if and.BitLen() == 0 || or.Cmp(and) == 0 || xor.BitLen() == 0 || andNot.Sign() == 0 || not.Sign() >= 0 {
		t.Fatal("bitwise operations produced unexpected results")
	}

	buf := new(big.Int).SetUint64(255).Append(nil, 16)
	if string(buf) != "ff" {
		t.Fatalf("Append hex mismatch: %q", buf)
	}
	text, err := new(big.Int).SetInt64(-42).AppendText(nil)
	if err != nil || string(text) != "-42" {
		t.Fatalf("AppendText mismatch: %q %v", text, err)
	}

	value := mustInt(t, "0x1234")
	if bit := value.Bit(4); bit != 1 {
		t.Fatalf("Bit(4) = %d", bit)
	}
	if value.BitLen() <= 0 {
		t.Fatal("BitLen should be positive")
	}
	if bits := value.Bits(); len(bits) == 0 {
		t.Fatal("Bits slice empty")
	}
	if bytes := value.Bytes(); len(bytes) == 0 {
		t.Fatal("Bytes slice empty")
	}
	bufFill := make([]byte, 4)
	if out := value.FillBytes(bufFill); len(out) != len(bufFill) || bufFill[len(bufFill)-1] == 0 {
		t.Fatalf("FillBytes unexpected result: %x", bufFill)
	}

	if cmp := new(big.Int).Set(a).CmpAbs(new(big.Int).Neg(b)); cmp <= 0 {
		t.Fatalf("CmpAbs result: %d", cmp)
	}

	dividend := mustInt(t, "1234567890")
	divisor := big.NewInt(321)
	quot := new(big.Int).Div(new(big.Int).Set(dividend), divisor)
	rem := new(big.Int).Rem(new(big.Int).Set(dividend), divisor)
	otherQuot := new(big.Int)
	otherRem := new(big.Int)
	otherQuot.DivMod(new(big.Int).Set(dividend), divisor, otherRem)
	if quot.Cmp(otherQuot) != 0 || rem.Cmp(otherRem) != 0 {
		t.Fatal("Div/DivMod mismatch")
	}
	if q := new(big.Int).Quo(new(big.Int).Set(dividend), divisor); q.Cmp(quot) != 0 {
		t.Fatal("Quo mismatch")
	}
	if r := new(big.Int).Mod(new(big.Int).Set(dividend), divisor); r.Cmp(rem) != 0 {
		t.Fatal("Mod mismatch")
	}

	if exp := new(big.Int).Exp(big.NewInt(3), big.NewInt(5), nil); exp.Cmp(big.NewInt(243)) != 0 {
		t.Fatalf("Exp mismatch: %s", exp)
	}
	if mul := new(big.Int).MulRange(1, 5); mul.Cmp(big.NewInt(120)) != 0 {
		t.Fatalf("MulRange mismatch: %s", mul)
	}

	if v, acc := value.Float64(); v <= 0 || acc.String() == "" {
		t.Fatalf("Float64 returned (%v,%v)", v, acc)
	}
	if s := fmt.Sprintf("%#x", value); !strings.HasPrefix(s, "0x") {
		t.Fatalf("Format mismatch: %q", s)
	}
	intFb := &formatBuffer{}
	value.Format(intFb, 'd')
	if intFb.String() == "" {
		t.Fatal("Int.Format produced empty output")
	}

	gobBytes, err := value.GobEncode()
	if err != nil {
		t.Fatalf("GobEncode failed: %v", err)
	}
	var gobDecoded big.Int
	if err := gobDecoded.GobDecode(gobBytes); err != nil || gobDecoded.Cmp(value) != 0 {
		t.Fatalf("GobDecode mismatch: %s %v", &gobDecoded, err)
	}

	small := big.NewInt(42)
	if v := small.Int64(); v != 42 {
		t.Fatalf("Int64 mismatch: %d", v)
	}
	if v := small.Uint64(); v != 42 {
		t.Fatalf("Uint64 mismatch: %d", v)
	}
	if !small.IsInt64() || !small.IsUint64() {
		t.Fatal("IsInt64/IsUint64 should be true")
	}

	jsonBytes, err := json.Marshal(value)
	if err != nil || len(jsonBytes) == 0 {
		t.Fatalf("MarshalJSON failed: %v", err)
	}
	if _, err := value.MarshalJSON(); err != nil {
		t.Fatalf("direct MarshalJSON failed: %v", err)
	}
	var parsed big.Int
	if err := parsed.UnmarshalJSON(jsonBytes); err != nil || parsed.Cmp(value) != 0 {
		t.Fatalf("UnmarshalJSON mismatch: %s %v", &parsed, err)
	}

	textBytes, err := value.MarshalText()
	if err != nil {
		t.Fatalf("MarshalText failed: %v", err)
	}
	if err := parsed.UnmarshalText(textBytes); err != nil || parsed.Cmp(value) != 0 {
		t.Fatalf("UnmarshalText mismatch: %s %v", &parsed, err)
	}

	if inv := new(big.Int).ModInverse(big.NewInt(3), big.NewInt(11)); inv.Cmp(big.NewInt(4)) != 0 {
		t.Fatalf("ModInverse mismatch: %s", inv)
	}
	if root := new(big.Int).ModSqrt(big.NewInt(9), big.NewInt(23)); root == nil || (root.Cmp(big.NewInt(3)) != 0 && root.Cmp(big.NewInt(20)) != 0) {
		t.Fatalf("ModSqrt mismatch: %s", root)
	}

	if !big.NewInt(101).ProbablyPrime(5) {
		t.Fatal("ProbablyPrime(101) should be true")
	}

	rng := rand.New(rand.NewSource(1))
	randMax := big.NewInt(1000)
	randVal := new(big.Int).Rand(rng, randMax)
	if randVal.Sign() < 0 || randVal.Cmp(randMax) >= 0 {
		t.Fatalf("Rand produced out of range value: %s", randVal)
	}

	shift := new(big.Int).Lsh(big.NewInt(1), 10)
	shift.Rsh(shift, 4)
	if shift.Cmp(big.NewInt(64)) != 0 {
		t.Fatalf("Rsh mismatch: %s", shift)
	}

	var scannedInt big.Int
	if _, err := fmt.Fscan(strings.NewReader("0xff"), &scannedInt); err != nil || scannedInt.Int64() != 255 {
		t.Fatalf("Scan mismatch: %s %v", &scannedInt, err)
	}
	intScan := &scanState{strings.NewReader("42")}
	var directInt big.Int
	if err := directInt.Scan(intScan, 'd'); err != nil || directInt.Int64() != 42 {
		t.Fatalf("Int.Scan mismatch: %s %v", &directInt, err)
	}

	setBits := []big.Word{0x1, 0x2}
	fromBits := new(big.Int).SetBits(setBits)
	if fromBits.BitLen() <= value.BitLen() {
		t.Fatalf("SetBits unexpected value: %s", fromBits)
	}

	setBytes := new(big.Int).SetBytes([]byte{0x12, 0x34})
	if setBytes.Cmp(big.NewInt(0x1234)) != 0 {
		t.Fatalf("SetBytes mismatch: %s", setBytes)
	}

	v := new(big.Int)
	v.SetBit(v, 5, 1)
	if v.Bit(5) != 1 {
		t.Fatal("SetBit failed")
	}

	if tz := new(big.Int).SetUint64(64).TrailingZeroBits(); tz != 6 {
		t.Fatalf("TrailingZeroBits mismatch: %d", tz)
	}

	sqrt := new(big.Int).SetUint64(81)
	sqrt.Sqrt(sqrt)
	if sqrt.Cmp(big.NewInt(9)) != 0 {
		t.Fatalf("Sqrt mismatch: %s", sqrt)
	}

	if text := value.Text(16); text == "" {
		t.Fatal("Text should not be empty")
	}
}

func TestRatExtendedAPI(t *testing.T) {
	val := mustRat(t, "3/7")
	if val.Num().Cmp(big.NewInt(3)) != 0 || val.Denom().Cmp(big.NewInt(7)) != 0 {
		t.Fatalf("Num/Denom mismatch: %s/%s", val.Num(), val.Denom())
	}

	buf, err := val.AppendText(nil)
	if err != nil || string(buf) != "3/7" {
		t.Fatalf("AppendText mismatch: %q %v", buf, err)
	}

	if f32, exact := val.Float32(); math.Abs(float64(f32)-0.4285714) > 1e-5 || exact {
		t.Fatalf("Float32 conversion (%v,%v)", f32, exact)
	}
	if f64, exact := val.Float64(); math.Abs(f64-3.0/7.0) > 1e-12 || exact {
		t.Fatalf("Float64 conversion (%v,%v)", f64, exact)
	}

	prec, exact := mustRat(t, "1/4").FloatPrec()
	if prec != 2 || !exact {
		t.Fatalf("FloatPrec(1/4) = (%d,%v)", prec, exact)
	}
	prec, exact = mustRat(t, "2/3").FloatPrec()
	if prec != 0 || exact {
		t.Fatalf("FloatPrec(2/3) = (%d,%v)", prec, exact)
	}

	gobBytes, err := val.GobEncode()
	if err != nil {
		t.Fatalf("GobEncode failed: %v", err)
	}
	var gobDecoded big.Rat
	if err := gobDecoded.GobDecode(gobBytes); err != nil || gobDecoded.Cmp(val) != 0 {
		t.Fatalf("GobDecode mismatch: %s %v", gobDecoded.RatString(), err)
	}

	inv := new(big.Rat).Inv(val)
	if inv.Cmp(mustRat(t, "7/3")) != 0 {
		t.Fatalf("Inv mismatch: %s", inv.RatString())
	}

	if val.IsInt() || !mustRat(t, "8").IsInt() {
		t.Fatal("IsInt mismatch")
	}

	text, err := val.MarshalText()
	if err != nil {
		t.Fatalf("MarshalText failed: %v", err)
	}
	var parsed big.Rat
	if err := parsed.UnmarshalText(text); err != nil || parsed.Cmp(val) != 0 {
		t.Fatalf("UnmarshalText mismatch: %s %v", parsed.RatString(), err)
	}

	if parsed.SetFloat64(0.125) == nil {
		t.Fatal("SetFloat64 returned nil")
	}
	if parsed.Cmp(mustRat(t, "1/8")) != 0 {
		t.Fatalf("SetFloat64 mismatch: %s", parsed.RatString())
	}
	parsed.SetInt(big.NewInt(-5))
	if parsed.Num().Cmp(big.NewInt(-5)) != 0 || parsed.Denom().Cmp(big.NewInt(1)) != 0 {
		t.Fatalf("SetInt mismatch: %s/%s", parsed.Num(), parsed.Denom())
	}
	parsed.SetInt64(6)
	if parsed.Num().Cmp(big.NewInt(6)) != 0 || parsed.Denom().Cmp(big.NewInt(1)) != 0 {
		t.Fatalf("SetInt64 mismatch: %s/%s", parsed.Num(), parsed.Denom())
	}
	parsed.SetUint64(15)
	if parsed.Num().Cmp(big.NewInt(15)) != 0 || parsed.Denom().Cmp(big.NewInt(1)) != 0 {
		t.Fatalf("SetUint64 mismatch: %s/%s", parsed.Num(), parsed.Denom())
	}
	parsed.SetFrac64(7, 9)
	if parsed.Cmp(mustRat(t, "7/9")) != 0 {
		t.Fatalf("SetFrac64 mismatch: %s", parsed.RatString())
	}

	var scanned big.Rat
	if _, err := fmt.Fscan(strings.NewReader("-11/13"), &scanned); err != nil || scanned.Cmp(mustRat(t, "-11/13")) != 0 {
		t.Fatalf("Scan mismatch: %s %v", scanned.RatString(), err)
	}
	ratScan := &scanState{strings.NewReader("1.25")}
	var directRat big.Rat
	if err := directRat.Scan(ratScan, 'f'); err != nil || directRat.Cmp(mustRat(t, "5/4")) != 0 {
		t.Fatalf("Rat.Scan mismatch: %s %v", directRat.RatString(), err)
	}

	if parsed.String() == "" {
		t.Fatal("String should not be empty")
	}
}
