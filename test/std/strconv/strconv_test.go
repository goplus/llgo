package strconv_test

import (
	"errors"
	"math"
	"math/bits"
	"strconv"
	"strings"
	"testing"
)

func TestIntConversions(t *testing.T) {
	cases := []struct {
		name  string
		value int64
		base  int
		want  string
	}{
		{name: "decimal", value: -42, base: 10, want: "-42"},
		{name: "binary", value: -10, base: 2, want: "-1010"},
		{name: "hex", value: 255, base: 16, want: "ff"},
		{name: "base36", value: 35, base: 36, want: "z"},
	}

	for _, tc := range cases {
		if got := strconv.FormatInt(tc.value, tc.base); got != tc.want {
			t.Errorf("FormatInt %s: got %q, want %q", tc.name, got, tc.want)
		}

		parsed, err := strconv.ParseInt(tc.want, tc.base, 64)
		if err != nil {
			t.Fatalf("ParseInt %s: unexpected error: %v", tc.name, err)
		}
		if parsed != tc.value {
			t.Fatalf("ParseInt %s: got %d, want %d", tc.name, parsed, tc.value)
		}

		if tc.value >= 0 {
			if got := strconv.FormatUint(uint64(tc.value), tc.base); got != tc.want {
				t.Errorf("FormatUint %s: got %q, want %q", tc.name, got, tc.want)
			}
		}
	}

	if v, err := strconv.ParseInt("1_024", 0, 64); err != nil || v != 1024 {
		t.Fatalf("ParseInt with underscores: value=%d err=%v", v, err)
	}
	if v, err := strconv.ParseInt("-0b1010", 0, 64); err != nil || v != -10 {
		t.Fatalf("ParseInt binary prefix: value=%d err=%v", v, err)
	}
	if v, err := strconv.ParseUint("0XFF", 0, 64); err != nil || v != 255 {
		t.Fatalf("ParseUint hex prefix: value=%d err=%v", v, err)
	}

	if got := strconv.Itoa(-123); got != "-123" {
		t.Fatalf("Itoa mismatch: %q", got)
	}
	if v, err := strconv.Atoi("-123"); err != nil || v != -123 {
		t.Fatalf("Atoi mismatch: value=%d err=%v", v, err)
	}

	buf := []byte("value=")
	buf = strconv.AppendInt(buf, -255, 16)
	if got := string(buf); got != "value=-ff" {
		t.Fatalf("AppendInt mismatch: %q", got)
	}

	buf = strconv.AppendUint([]byte("count="), 511, 8)
	if got := string(buf); got != "count=777" {
		t.Fatalf("AppendUint mismatch: %q", got)
	}
}

func TestParseIntErrors(t *testing.T) {
	const invalid = "xyz"
	_, err := strconv.ParseInt(invalid, 10, 64)
	if err == nil {
		t.Fatal("ParseInt should fail on invalid input")
	}

	var numErr *strconv.NumError
	if !errors.As(err, &numErr) {
		t.Fatalf("ParseInt error should be *NumError, got %T", err)
	}
	if numErr.Func != "ParseInt" || numErr.Num != invalid {
		t.Fatalf("NumError metadata mismatch: %+v", numErr)
	}
	if !errors.Is(err, strconv.ErrSyntax) {
		t.Fatalf("ParseInt invalid should unwrap to ErrSyntax, got %v", err)
	}

	_, err = strconv.ParseInt("128", 10, 8)
	if err == nil {
		t.Fatal("ParseInt should report overflow")
	}
	if !errors.Is(err, strconv.ErrRange) {
		t.Fatalf("ParseInt overflow should unwrap to ErrRange, got %v", err)
	}

	_, err = strconv.ParseUint("256", 10, 8)
	if err == nil {
		t.Fatal("ParseUint should report overflow")
	}
	if !errors.Is(err, strconv.ErrRange) {
		t.Fatalf("ParseUint overflow should unwrap to ErrRange, got %v", err)
	}
}

func TestIntSizeMatchesUintSize(t *testing.T) {
	if strconv.IntSize != bits.UintSize {
		t.Fatalf("IntSize=%d UintSize=%d", strconv.IntSize, bits.UintSize)
	}
}

func TestBoolConversions(t *testing.T) {
	for input, want := range map[string]bool{
		"true":  true,
		"FALSE": false,
		"1":     true,
		"0":     false,
	} {
		got, err := strconv.ParseBool(input)
		if err != nil {
			t.Fatalf("ParseBool(%q) unexpected error: %v", input, err)
		}
		if got != want {
			t.Fatalf("ParseBool(%q) = %v, want %v", input, got, want)
		}

		expected := "false"
		if want {
			expected = "true"
		}
		if formatted := strconv.FormatBool(got); formatted != expected {
			t.Fatalf("FormatBool(%v) mismatch: %q", got, formatted)
		}
	}

	if _, err := strconv.ParseBool("maybe"); !errors.Is(err, strconv.ErrSyntax) {
		t.Fatalf("ParseBool invalid should return ErrSyntax, got %v", err)
	}

	buf := strconv.AppendBool([]byte("flag="), true)
	if got := string(buf); got != "flag=true" {
		t.Fatalf("AppendBool mismatch: %q", got)
	}
}

func TestFloatConversions(t *testing.T) {
	if got := strconv.FormatFloat(-123.456, 'f', 2, 64); got != "-123.46" {
		t.Fatalf("FormatFloat 64 mismatch: %q", got)
	}
	if got := strconv.FormatFloat(math.Inf(1), 'f', 0, 64); got != "+Inf" {
		t.Fatalf("FormatFloat +Inf mismatch: %q", got)
	}
	if got := strconv.FormatFloat(math.NaN(), 'g', -1, 64); got != "NaN" {
		t.Fatalf("FormatFloat NaN mismatch: %q", got)
	}

	f32 := float32(3.1415927)
	expected32 := "3.1415927"
	if got := strconv.FormatFloat(float64(f32), 'g', -1, 32); got != expected32 {
		t.Fatalf("FormatFloat 32 mismatch: %q", got)
	}

	if v, err := strconv.ParseFloat(expected32, 32); err != nil || math.Abs(float64(float32(v))-float64(f32)) > 1e-6 {
		t.Fatalf("ParseFloat 32 mismatch: value=%v err=%v", v, err)
	}
	if v, err := strconv.ParseFloat("-123.46", 64); err != nil || math.Abs(v-(-123.46)) > 1e-12 {
		t.Fatalf("ParseFloat 64 mismatch: value=%v err=%v", v, err)
	}
	if v, err := strconv.ParseFloat("NaN", 64); err != nil || !math.IsNaN(v) {
		t.Fatalf("ParseFloat NaN mismatch: value=%v err=%v", v, err)
	}
	if v, err := strconv.ParseFloat("+Inf", 64); err != nil || !math.IsInf(v, 1) {
		t.Fatalf("ParseFloat +Inf mismatch: value=%v err=%v", v, err)
	}

	if _, err := strconv.ParseFloat("1e5000", 64); !errors.Is(err, strconv.ErrRange) {
		t.Fatalf("ParseFloat overflow should return ErrRange, got %v", err)
	}
	if _, err := strconv.ParseFloat("not-a-number", 64); !errors.Is(err, strconv.ErrSyntax) {
		t.Fatalf("ParseFloat invalid should return ErrSyntax, got %v", err)
	}

	buf := strconv.AppendFloat([]byte("value="), 3.5, 'f', 1, 64)
	if got := string(buf); got != "value=3.5" {
		t.Fatalf("AppendFloat mismatch: %q", got)
	}
}

func TestComplexConversions(t *testing.T) {
	c := complex(1.25, -2.5)
	if got := strconv.FormatComplex(c, 'f', 2, 128); got != "(1.25-2.50i)" {
		t.Fatalf("FormatComplex mismatch: %q", got)
	}

	parsed, err := strconv.ParseComplex("(1.25-2.50i)", 128)
	if err != nil {
		t.Fatalf("ParseComplex unexpected error: %v", err)
	}
	if real(parsed) != real(c) || imag(parsed) != imag(c) {
		t.Fatalf("ParseComplex mismatch: got %v, want %v", parsed, c)
	}

	if _, err := strconv.ParseComplex("(bad)", 128); !errors.Is(err, strconv.ErrSyntax) {
		t.Fatalf("ParseComplex invalid should return ErrSyntax, got %v", err)
	}
}

func TestQuoteFunctions(t *testing.T) {
	const sample = "café"
	const sampleWithNewline = "café\n"

	quoted := strconv.Quote(sample)
	if !strings.HasPrefix(quoted, "\"") || !strings.HasSuffix(quoted, "\"") {
		t.Fatalf("Quote should wrap input in quotes: %q", quoted)
	}
	if decoded, err := strconv.Unquote(quoted); err != nil || decoded != sample {
		t.Fatalf("Quote round-trip mismatch: decoded=%q err=%v", decoded, err)
	}

	quotedASCII := strconv.QuoteToASCII(sample)
	if !isASCII(quotedASCII) {
		t.Fatalf("QuoteToASCII should emit ASCII-only output: %q", quotedASCII)
	}
	if decoded, err := strconv.Unquote(quotedASCII); err != nil || decoded != sample {
		t.Fatalf("QuoteToASCII round-trip mismatch: decoded=%q err=%v", decoded, err)
	}

	quotedGraphic := strconv.QuoteToGraphic(sampleWithNewline)
	if !strings.Contains(quotedGraphic, "\\n") {
		t.Fatalf("QuoteToGraphic should escape newlines: %q", quotedGraphic)
	}
	if decoded, err := strconv.Unquote(quotedGraphic); err != nil || decoded != sampleWithNewline {
		t.Fatalf("QuoteToGraphic round-trip mismatch: decoded=%q err=%v", decoded, err)
	}

	runeQuoted := strconv.QuoteRune('π')
	if !strings.HasPrefix(runeQuoted, "'") || !strings.HasSuffix(runeQuoted, "'") {
		t.Fatalf("QuoteRune should wrap rune in single quotes: %q", runeQuoted)
	}
	if decoded, err := strconv.Unquote(runeQuoted); err != nil || decoded != "π" {
		t.Fatalf("QuoteRune round-trip mismatch: decoded=%q err=%v", decoded, err)
	}

	runeQuoteASCII := strconv.QuoteRuneToASCII('π')
	if !isASCII(runeQuoteASCII) {
		t.Fatalf("QuoteRuneToASCII should emit ASCII-only output: %q", runeQuoteASCII)
	}
	if decoded, err := strconv.Unquote(runeQuoteASCII); err != nil || decoded != "π" {
		t.Fatalf("QuoteRuneToASCII round-trip mismatch: decoded=%q err=%v", decoded, err)
	}

	runeQuoteGraphic := strconv.QuoteRuneToGraphic('\n')
	if !strings.Contains(runeQuoteGraphic, "\\n") {
		t.Fatalf("QuoteRuneToGraphic should escape control characters: %q", runeQuoteGraphic)
	}
	if decoded, err := strconv.Unquote(runeQuoteGraphic); err != nil || decoded != "\n" {
		t.Fatalf("QuoteRuneToGraphic round-trip mismatch: decoded=%q err=%v", decoded, err)
	}
}

func TestAppendQuoteVariants(t *testing.T) {
	if got := string(strconv.AppendQuote(nil, "hi\n")); got != strconv.Quote("hi\n") {
		t.Fatalf("AppendQuote mismatch: %q", got)
	}
	if got := string(strconv.AppendQuoteToASCII(nil, "hi\n")); got != strconv.QuoteToASCII("hi\n") {
		t.Fatalf("AppendQuoteToASCII mismatch: %q", got)
	}
	if got := string(strconv.AppendQuoteToGraphic(nil, "café\n")); got != strconv.QuoteToGraphic("café\n") {
		t.Fatalf("AppendQuoteToGraphic mismatch: %q", got)
	}

	if got := string(strconv.AppendQuoteRune(nil, '\n')); got != strconv.QuoteRune('\n') {
		t.Fatalf("AppendQuoteRune mismatch: %q", got)
	}
	if got := string(strconv.AppendQuoteRuneToASCII(nil, 'π')); got != strconv.QuoteRuneToASCII('π') {
		t.Fatalf("AppendQuoteRuneToASCII mismatch: %q", got)
	}
	if got := string(strconv.AppendQuoteRuneToGraphic(nil, '\n')); got != strconv.QuoteRuneToGraphic('\n') {
		t.Fatalf("AppendQuoteRuneToGraphic mismatch: %q", got)
	}
}

func TestUnquoteFunctions(t *testing.T) {
	if got, err := strconv.Unquote("\"line\\n\""); err != nil || got != "line\n" {
		t.Fatalf("Unquote escaped mismatch: value=%q err=%v", got, err)
	}
	if got, err := strconv.Unquote("`raw`"); err != nil || got != "raw" {
		t.Fatalf("Unquote raw mismatch: value=%q err=%v", got, err)
	}

	if _, err := strconv.Unquote("\"unterminated"); err == nil {
		t.Fatal("Unquote should fail on unterminated string")
	}

	r, multibyte, tail, err := strconv.UnquoteChar("\\u263Arest", '"')
	if err != nil || r != '☺' || !multibyte || tail != "rest" {
		t.Fatalf("UnquoteChar unicode mismatch: r=%q multibyte=%v tail=%q err=%v", r, multibyte, tail, err)
	}

	if _, _, _, err := strconv.UnquoteChar("\\xZZ", '"'); !errors.Is(err, strconv.ErrSyntax) {
		t.Fatalf("UnquoteChar invalid should return ErrSyntax, got %v", err)
	}
}

func TestQuotedPrefix(t *testing.T) {
	prefix, err := strconv.QuotedPrefix("\"hi\" tail")
	if err != nil {
		t.Fatalf("QuotedPrefix unexpected error: %v", err)
	}
	if prefix != "\"hi\"" {
		t.Fatalf("QuotedPrefix mismatch: %q", prefix)
	}

	rawPrefix, err := strconv.QuotedPrefix("`raw`\n")
	if err != nil {
		t.Fatalf("QuotedPrefix raw error: %v", err)
	}
	if rawPrefix != "`raw`" {
		t.Fatalf("QuotedPrefix raw mismatch: %q", rawPrefix)
	}

	if _, err := strconv.QuotedPrefix("noquote"); !errors.Is(err, strconv.ErrSyntax) {
		t.Fatalf("QuotedPrefix invalid should return ErrSyntax, got %v", err)
	}
}

func TestGraphicAndBackquote(t *testing.T) {
	if !strconv.IsPrint('Ω') || !strconv.IsGraphic('Ω') {
		t.Fatal("Expected IsPrint/IsGraphic to report true for Ω")
	}
	if strconv.IsPrint('\t') || strconv.IsGraphic('\t') {
		t.Fatal("Expected IsPrint/IsGraphic to report false for tab")
	}

	if !strconv.CanBackquote("hello world") {
		t.Fatal("CanBackquote should allow simple ASCII")
	}
	if strconv.CanBackquote("line\n") {
		t.Fatal("CanBackquote should reject strings with newlines")
	}
	if strconv.CanBackquote("tick`") {
		t.Fatal("CanBackquote should reject strings with backquotes")
	}
}

func TestNumErrorFormatting(t *testing.T) {
	_, err := strconv.ParseUint(strings.Repeat("9", 40), 10, 32)
	if err == nil {
		t.Fatal("ParseUint should fail on large input")
	}

	var numErr *strconv.NumError
	if !errors.As(err, &numErr) {
		t.Fatalf("expected *NumError, got %T", err)
	}
	if !errors.Is(err, strconv.ErrRange) {
		t.Fatalf("expected ErrRange, got %v", err)
	}
	if numErr.Unwrap() != strconv.ErrRange {
		t.Fatalf("NumError.Unwrap mismatch: %v", numErr.Unwrap())
	}
	if !strings.Contains(numErr.Error(), "value out of range") {
		t.Fatalf("NumError message missing range hint: %q", numErr.Error())
	}
}

func isASCII(s string) bool {
	for i := 0; i < len(s); i++ {
		if s[i] > 0x7f {
			return false
		}
	}
	return true
}
