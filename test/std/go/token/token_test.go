package token_test

import (
	"go/token"
	"testing"
)

func TestLookupAndKeyword(t *testing.T) {
	testcases := []struct {
		name    string
		literal string
		want    token.Token
		keyword bool
	}{
		{name: "IfKeyword", literal: "if", want: token.IF, keyword: true},
		{name: "GoKeyword", literal: "go", want: token.GO, keyword: true},
		{name: "NotKeyword", literal: "channel", want: token.IDENT, keyword: false},
		{name: "Identifier", literal: "_foo42", want: token.IDENT, keyword: false},
		{name: "Capitalized", literal: "Func", want: token.IDENT, keyword: false},
	}

	for _, tc := range testcases {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			if got := token.Lookup(tc.literal); got != tc.want {
				t.Fatalf("Lookup(%q) = %v, want %v", tc.literal, got, tc.want)
			}
			if got := token.IsKeyword(tc.literal); got != tc.keyword {
				t.Fatalf("IsKeyword(%q) = %v, want %v", tc.literal, got, tc.keyword)
			}
		})
	}
}

func TestIsIdentifier(t *testing.T) {
	testcases := []struct {
		name      string
		candidate string
		want      bool
	}{
		{name: "Empty", candidate: "", want: false},
		{name: "NumericPrefix", candidate: "123abc", want: false},
		{name: "Keyword", candidate: "func", want: false},
		{name: "ASCII", candidate: "hello", want: true},
		{name: "Underscore", candidate: "_tmp", want: true},
		{name: "Unicode", candidate: "π", want: true},
		{name: "Spaces", candidate: "foo bar", want: false},
	}

	for _, tc := range testcases {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			if got := token.IsIdentifier(tc.candidate); got != tc.want {
				t.Fatalf("IsIdentifier(%q) = %v, want %v", tc.candidate, got, tc.want)
			}
		})
	}
}

func TestTokenStringAndPredicates(t *testing.T) {
	if got := token.ADD.String(); got != "+" {
		t.Fatalf("ADD.String() = %q, want \"+\"", got)
	}
	if got := token.INT.String(); got != "INT" {
		t.Fatalf("INT.String() = %q, want \"INT\"", got)
	}
	if !token.INT.IsLiteral() {
		t.Fatal("INT should be treated as literal token")
	}
	if token.LPAREN.IsLiteral() {
		t.Fatal("LPAREN must not be classified as literal")
	}
	if !token.ADD.IsOperator() {
		t.Fatal("ADD must be classified as operator")
	}
	if !token.FOR.IsKeyword() {
		t.Fatal("FOR must be classified as keyword")
	}
	if (token.Token(999)).String() == "" {
		t.Fatal("unknown tokens should produce diagnostic string")
	}
}

func TestIsExported(t *testing.T) {
	testcases := []struct {
		input string
		want  bool
	}{
		{input: "Foo", want: true},
		{input: "foo", want: false},
		{input: "Δelta", want: true},
		{input: "_Hidden", want: false},
		{input: "", want: false},
	}

	for _, tc := range testcases {
		if got := token.IsExported(tc.input); got != tc.want {
			t.Fatalf("IsExported(%q) = %v, want %v", tc.input, got, tc.want)
		}
	}
}

func TestTokenPrecedenceAndConstants(t *testing.T) {
	if token.LowestPrec != 0 {
		t.Fatalf("LowestPrec = %d, want 0", token.LowestPrec)
	}
	if token.UnaryPrec <= token.LowestPrec {
		t.Fatalf("UnaryPrec = %d must exceed LowestPrec", token.UnaryPrec)
	}
	if token.HighestPrec <= token.UnaryPrec {
		t.Fatalf("HighestPrec = %d must exceed UnaryPrec", token.HighestPrec)
	}

	if prec := token.ADD.Precedence(); prec != 4 {
		t.Fatalf("ADD.Precedence() = %d, want 4", prec)
	}
	if prec := token.LPAREN.Precedence(); prec != token.LowestPrec {
		t.Fatalf("LPAREN.Precedence() = %d, want %d", prec, token.LowestPrec)
	}
	if prec := token.Token(999).Precedence(); prec != token.LowestPrec {
		t.Fatalf("unknown token precedence = %d, want %d", prec, token.LowestPrec)
	}
}
