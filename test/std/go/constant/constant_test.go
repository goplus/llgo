package constant_test

import (
	"go/constant"
	"go/token"
	"math/big"
	"slices"
	"testing"
)

func TestConstructorsAndKinds(t *testing.T) {
	t.Parallel()

	if constant.Bool.String() != "Bool" || constant.Float.String() != "Float" {
		t.Fatalf("Kind.String mismatch: Bool=%q Float=%q", constant.Bool.String(), constant.Float.String())
	}

	boolVal := constant.MakeBool(true)
	if boolVal.Kind() != constant.Bool || !constant.BoolVal(boolVal) {
		t.Fatalf("MakeBool produced unexpected value: kind=%v bool=%v", boolVal.Kind(), constant.BoolVal(boolVal))
	}
	if v, ok := constant.Val(boolVal).(bool); !ok || !v {
		t.Fatalf("Val(bool) mismatch: %T %v", constant.Val(boolVal), constant.Val(boolVal))
	}

	strVal := constant.MakeString("llgo")
	if strVal.Kind() != constant.String || constant.StringVal(strVal) != "llgo" {
		t.Fatalf("MakeString mismatch: kind=%v string=%q", strVal.Kind(), constant.StringVal(strVal))
	}
	if strVal.String() != "\"llgo\"" || strVal.ExactString() != "\"llgo\"" {
		t.Fatalf("String/ExactString mismatch: String=%q Exact=%q", strVal.String(), strVal.ExactString())
	}
	if v, ok := constant.Val(strVal).(string); !ok || v != "llgo" {
		t.Fatalf("Val(string) mismatch: %T %v", constant.Val(strVal), constant.Val(strVal))
	}

	intVal := constant.MakeInt64(-42)
	if intVal.Kind() != constant.Int {
		t.Fatalf("MakeInt64 kind mismatch: %v", intVal.Kind())
	}
	if v, ok := constant.Int64Val(intVal); !ok || v != -42 {
		t.Fatalf("Int64Val(-42) mismatch: v=%d ok=%v", v, ok)
	}
	if sign := constant.Sign(intVal); sign != -1 {
		t.Fatalf("Sign(-42) = %d, want -1", sign)
	}

	zero := constant.MakeInt64(0)
	if constant.Sign(zero) != 0 {
		t.Fatalf("Sign(0) = %d, want 0", constant.Sign(zero))
	}

	bitVal := constant.MakeFromLiteral("0b101010", token.INT, 0)
	if bitVal.Kind() != constant.Int || constant.BitLen(bitVal) != 6 {
		t.Fatalf("BitLen mismatch: kind=%v bits=%d", bitVal.Kind(), constant.BitLen(bitVal))
	}

	bytesVal := constant.MakeFromBytes([]byte{0x34, 0x12})
	if bytesVal.Kind() != constant.Int {
		t.Fatalf("MakeFromBytes kind mismatch: %v", bytesVal.Kind())
	}
	if b := constant.Bytes(bytesVal); !slices.Equal(b, []byte{0x34, 0x12}) {
		t.Fatalf("Bytes mismatch: got %v", b)
	}

	floatVal := constant.MakeFloat64(1.25)
	if floatVal.Kind() != constant.Float {
		t.Fatalf("MakeFloat64 kind mismatch: %v", floatVal.Kind())
	}
	if f32, ok := constant.Float32Val(floatVal); !ok || f32 != float32(1.25) {
		t.Fatalf("Float32Val mismatch: v=%v ok=%v", f32, ok)
	}
	if f64, ok := constant.Float64Val(floatVal); !ok || f64 != 1.25 {
		t.Fatalf("Float64Val mismatch: v=%v ok=%v", f64, ok)
	}
	if rat, ok := constant.Val(floatVal).(*big.Rat); !ok || rat.Cmp(big.NewRat(5, 4)) != 0 {
		t.Fatalf("Val(float) mismatch: %T %v", constant.Val(floatVal), constant.Val(floatVal))
	}

	rational := constant.MakeFromLiteral("7.5", token.FLOAT, 0)
	if rational.Kind() != constant.Float {
		t.Fatalf("MakeFromLiteral float kind mismatch: %v", rational.Kind())
	}
	if num, ok := constant.Int64Val(constant.Num(rational)); !ok || num != 15 {
		t.Fatalf("Num mismatch: num=%d ok=%v", num, ok)
	}
	if den, ok := constant.Int64Val(constant.Denom(rational)); !ok || den != 2 {
		t.Fatalf("Denom mismatch: den=%d ok=%v", den, ok)
	}

	uintVal := constant.MakeUint64(99)
	if uintVal.Kind() != constant.Int {
		t.Fatalf("MakeUint64 kind mismatch: %v", uintVal.Kind())
	}
	if u, ok := constant.Uint64Val(uintVal); !ok || u != 99 {
		t.Fatalf("Uint64Val mismatch: u=%d ok=%v", u, ok)
	}

	made := constant.Make(int64(123))
	if made.Kind() != constant.Int {
		t.Fatalf("Make(int64) kind mismatch: %v", made.Kind())
	}
	if v, ok := constant.Int64Val(made); !ok || v != 123 {
		t.Fatalf("Int64Val(123) mismatch: v=%d ok=%v", v, ok)
	}

	bigInt := new(big.Int).Lsh(big.NewInt(1), 70)
	madeBig := constant.Make(bigInt)
	if madeBig.Kind() != constant.Int || constant.Sign(madeBig) != 1 {
		t.Fatalf("Make(*big.Int) mismatch: kind=%v sign=%d", madeBig.Kind(), constant.Sign(madeBig))
	}
	if val := constant.Val(madeBig); val == nil {
		t.Fatalf("Val(*big.Int) returned nil")
	} else if bi, ok := val.(*big.Int); !ok || bi.Cmp(bigInt) != 0 {
		t.Fatalf("Val(*big.Int) mismatch: %T %v", val, val)
	}

	bigFloat := big.NewFloat(3.75)
	madeFloat := constant.Make(bigFloat)
	if madeFloat.Kind() != constant.Float {
		t.Fatalf("Make(*big.Float) kind mismatch: %v", madeFloat.Kind())
	}
	if val, ok := constant.Val(madeFloat).(*big.Float); !ok || val.Cmp(bigFloat) != 0 {
		t.Fatalf("Val(*big.Float) mismatch: %T %v", constant.Val(madeFloat), constant.Val(madeFloat))
	}

	bigRat := big.NewRat(3, 4)
	madeRat := constant.Make(bigRat)
	if madeRat.Kind() != constant.Float {
		t.Fatalf("Make(*big.Rat) kind mismatch: %v", madeRat.Kind())
	}
	if val, ok := constant.Val(madeRat).(*big.Rat); !ok || val.Cmp(bigRat) != 0 {
		t.Fatalf("Val(*big.Rat) mismatch: %T %v", constant.Val(madeRat), constant.Val(madeRat))
	}

	madeString := constant.Make("via Make")
	if madeString.Kind() != constant.String || constant.StringVal(madeString) != "via Make" {
		t.Fatalf("Make(string) mismatch: kind=%v string=%q", madeString.Kind(), constant.StringVal(madeString))
	}

	madeBool := constant.Make(true)
	if madeBool.Kind() != constant.Bool || !constant.BoolVal(madeBool) {
		t.Fatalf("Make(bool) mismatch: kind=%v bool=%v", madeBool.Kind(), constant.BoolVal(madeBool))
	}

	unsupported := constant.Make(3.14)
	if unsupported.Kind() != constant.Unknown {
		t.Fatalf("Make(unsupported) expected Unknown, got %v", unsupported.Kind())
	}

	fromBytesZero := constant.MakeFromBytes(nil)
	if fromBytesZero.Kind() != constant.Int || constant.BitLen(fromBytesZero) != 0 {
		t.Fatalf("MakeFromBytes(nil) mismatch: kind=%v bits=%d", fromBytesZero.Kind(), constant.BitLen(fromBytesZero))
	}
}

func TestLiteralParsingAndValues(t *testing.T) {
	t.Parallel()

	hex := constant.MakeFromLiteral("0x2A", token.INT, 0)
	if v, ok := constant.Int64Val(hex); !ok || v != 42 {
		t.Fatalf("hex literal mismatch: v=%d ok=%v", v, ok)
	}

	char := constant.MakeFromLiteral("'a'", token.CHAR, 0)
	if v, ok := constant.Int64Val(char); !ok || v != 97 {
		t.Fatalf("char literal mismatch: v=%d ok=%v", v, ok)
	}

	str := constant.MakeFromLiteral("\"hi\"", token.STRING, 0)
	if kind := str.Kind(); kind != constant.String {
		t.Fatalf("string literal kind mismatch: %v", kind)
	}
	if constant.StringVal(str) != "hi" {
		t.Fatalf("string literal value mismatch: %q", constant.StringVal(str))
	}

	imag := constant.MakeFromLiteral("2i", token.IMAG, 0)
	if imag.Kind() != constant.Complex {
		t.Fatalf("imag literal kind mismatch: %v", imag.Kind())
	}
	if real := constant.Real(imag); constant.Sign(real) != 0 {
		t.Fatalf("imag real part mismatch: kind=%v sign=%d", real.Kind(), constant.Sign(real))
	}
	if im := constant.Imag(imag); im.ExactString() != "2" {
		t.Fatalf("imag imaginary part mismatch: %v %q", im.Kind(), im.ExactString())
	}

	invalid := constant.MakeFromLiteral("bad", token.INT, 0)
	if invalid.Kind() != constant.Unknown {
		t.Fatalf("invalid literal expected Unknown, got %v", invalid.Kind())
	}

	boolVal := constant.MakeFromLiteral("true", token.INT, 0)
	if boolVal.Kind() != constant.Unknown {
		t.Fatalf("boolean literal with wrong token should be Unknown, got %v", boolVal.Kind())
	}
}

func TestArithmeticOperations(t *testing.T) {
	t.Parallel()

	forty := constant.MakeInt64(40)
	two := constant.MakeInt64(2)
	sum := constant.BinaryOp(forty, token.ADD, two)
	if v, ok := constant.Int64Val(sum); !ok || v != 42 {
		t.Fatalf("BinaryOp addition mismatch: v=%d ok=%v", v, ok)
	}

	product := constant.BinaryOp(forty, token.MUL, two)
	if v, ok := constant.Int64Val(product); !ok || v != 80 {
		t.Fatalf("BinaryOp mul mismatch: v=%d ok=%v", v, ok)
	}

	quotient := constant.BinaryOp(constant.MakeFloat64(22), token.QUO, constant.MakeFloat64(7))
	if quotient.Kind() != constant.Float {
		t.Fatalf("BinaryOp division kind mismatch: %v", quotient.Kind())
	}
	if _, exact := constant.Float64Val(quotient); exact {
		t.Fatalf("Float64Val for 22/7 should not be exact")
	}

	concat := constant.BinaryOp(constant.MakeString("go"), token.ADD, constant.MakeString("+"))
	if concat.Kind() != constant.String || constant.StringVal(concat) != "go+" {
		t.Fatalf("BinaryOp string concat mismatch: kind=%v string=%q", concat.Kind(), constant.StringVal(concat))
	}

	neg := constant.UnaryOp(token.SUB, two, 0)
	if v, ok := constant.Int64Val(neg); !ok || v != -2 {
		t.Fatalf("UnaryOp -2 mismatch: v=%d ok=%v", v, ok)
	}

	not := constant.UnaryOp(token.NOT, constant.MakeBool(true), 0)
	if not.Kind() != constant.Bool || constant.BoolVal(not) {
		t.Fatalf("UnaryOp !true mismatch: kind=%v bool=%v", not.Kind(), constant.BoolVal(not))
	}

	complement := constant.UnaryOp(token.XOR, constant.MakeInt64(0b1010), 0)
	if complement.Kind() != constant.Int {
		t.Fatalf("UnaryOp XOR kind mismatch: %v", complement.Kind())
	}

	shl := constant.Shift(constant.MakeInt64(1), token.SHL, 8)
	if v, ok := constant.Int64Val(shl); !ok || v != 256 {
		t.Fatalf("Shift left mismatch: v=%d ok=%v", v, ok)
	}
	shr := constant.Shift(shl, token.SHR, 4)
	if v, ok := constant.Int64Val(shr); !ok || v != 16 {
		t.Fatalf("Shift right mismatch: v=%d ok=%v", v, ok)
	}

	if !constant.Compare(sum, token.EQL, constant.MakeInt64(42)) {
		t.Fatalf("Compare equality failed")
	}
	if !constant.Compare(sum, token.GTR, two) {
		t.Fatalf("Compare greater-than failed")
	}
	if constant.Compare(two, token.GTR, sum) {
		t.Fatalf("Compare reversed greater-than should be false")
	}

	frac := constant.BinaryOp(constant.MakeInt64(1), token.QUO, constant.MakeInt64(3))
	if f64, exact := constant.Float64Val(frac); exact || f64 <= 0.0 {
		t.Fatalf("Float64Val(1/3) mismatch: value=%v exact=%v", f64, exact)
	}
}

func TestComplexAndConversions(t *testing.T) {
	t.Parallel()

	realPart := constant.MakeFloat64(7.5)
	imagPart := constant.MakeImag(constant.MakeFloat64(2.25))
	complexVal := constant.BinaryOp(realPart, token.ADD, imagPart)
	if complexVal.Kind() != constant.Complex {
		t.Fatalf("complex value kind mismatch: %v", complexVal.Kind())
	}

	realComponent := constant.Real(complexVal)
	imagComponent := constant.Imag(complexVal)
	if realComponent.Kind() != constant.Float || imagComponent.Kind() != constant.Float {
		t.Fatalf("Real/Imag kind mismatch: real=%v imag=%v", realComponent.Kind(), imagComponent.Kind())
	}
	if num, ok := constant.Int64Val(constant.Num(realComponent)); !ok || num != 15 {
		t.Fatalf("Real component numerator mismatch: %d", num)
	}
	if den, ok := constant.Int64Val(constant.Denom(realComponent)); !ok || den != 2 {
		t.Fatalf("Real component denominator mismatch: %d", den)
	}
	if imagComponent.ExactString() != "9/4" {
		t.Fatalf("Imag component exact string mismatch: %q", imagComponent.ExactString())
	}

	complexFromInt := constant.ToComplex(constant.MakeInt64(5))
	if complexFromInt.Kind() != constant.Complex {
		t.Fatalf("ToComplex kind mismatch: %v", complexFromInt.Kind())
	}
	if real := constant.Real(complexFromInt); real.ExactString() != "5" {
		t.Fatalf("ToComplex real mismatch: %v %q", real.Kind(), real.ExactString())
	}
	if imag := constant.Imag(complexFromInt); imag.ExactString() != "0" {
		t.Fatalf("ToComplex imag mismatch: %v %q", imag.Kind(), imag.ExactString())
	}
	if val := constant.Val(complexFromInt); val != nil {
		t.Fatalf("Val(complex) expected nil, got %T", val)
	}

	floatFromInt := constant.ToFloat(constant.MakeInt64(-7))
	if floatFromInt.Kind() != constant.Float {
		t.Fatalf("ToFloat kind mismatch: %v", floatFromInt.Kind())
	}
	if f64, ok := constant.Float64Val(floatFromInt); !ok || f64 != -7 {
		t.Fatalf("ToFloat value mismatch: %v %v", f64, ok)
	}

	floatLiteral := constant.MakeFromLiteral("7.0", token.FLOAT, 0)
	if floatLiteral.Kind() != constant.Float {
		t.Fatalf("float literal kind mismatch: %v", floatLiteral.Kind())
	}
	toInt := constant.ToInt(floatLiteral)
	if toInt.Kind() != constant.Int {
		t.Fatalf("ToInt kind mismatch: %v", toInt.Kind())
	}
	if v, ok := constant.Int64Val(toInt); !ok || v != 7 {
		t.Fatalf("ToInt value mismatch: %d %v", v, ok)
	}
}

func TestUnknownPropagation(t *testing.T) {
	t.Parallel()

	unknown := constant.MakeUnknown()
	if unknown.Kind() != constant.Unknown {
		t.Fatalf("MakeUnknown kind mismatch: %v", unknown.Kind())
	}

	other := constant.MakeInt64(10)
	sum := constant.BinaryOp(unknown, token.ADD, other)
	if sum.Kind() != constant.Unknown {
		t.Fatalf("BinaryOp with unknown should stay unknown, got %v", sum.Kind())
	}

	shift := constant.Shift(unknown, token.SHL, 1)
	if shift.Kind() != constant.Unknown {
		t.Fatalf("Shift with unknown should stay unknown, got %v", shift.Kind())
	}

	converted := constant.ToFloat(unknown)
	if converted.Kind() != constant.Unknown {
		t.Fatalf("ToFloat(unknown) should be unknown, got %v", converted.Kind())
	}

	neg := constant.UnaryOp(token.SUB, unknown, 0)
	if neg.Kind() != constant.Unknown {
		t.Fatalf("UnaryOp(unknown) should be unknown, got %v", neg.Kind())
	}

	if constant.Compare(unknown, token.EQL, unknown) {
		t.Fatalf("Compare with unknown should be false")
	}
}
