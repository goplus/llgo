package unicode_test

import (
	"testing"
	"unicode"
)

func TestCategoryChecks(t *testing.T) {
	if !unicode.IsLetter('A') {
		t.Fatalf("IsLetter('A') = false, want true")
	}
	if unicode.IsLetter('5') {
		t.Fatalf("IsLetter('5') = true, want false")
	}
	if !unicode.IsDigit('9') {
		t.Fatalf("IsDigit('9') = false, want true")
	}
	if unicode.IsDigit('A') {
		t.Fatalf("IsDigit('A') = true, want false")
	}
	if !unicode.IsSpace('\u00A0') {
		t.Fatalf("IsSpace(NBSP) = false, want true")
	}
	if !unicode.Is(unicode.Latin, 'ñ') {
		t.Fatalf("Is(Latin, 'ñ') = false, want true")
	}
	if unicode.Is(unicode.Greek, 'A') {
		t.Fatalf("Is(Greek, 'A') = true, want false")
	}
	if !unicode.In('世', unicode.Han, unicode.Latin) {
		t.Fatalf("In('世', Han, Latin) = false, want true")
	}
	if unicode.In('世', unicode.Latin) {
		t.Fatalf("In('世', Latin) = true, want false")
	}
}

func TestCaseConversions(t *testing.T) {
	if got := unicode.ToUpper('ß'); got != 'ß' {
		t.Fatalf("ToUpper('ß') = %U, want %U", got, 'ß')
	}
	if got := unicode.ToLower('İ'); got != 'i' {
		t.Fatalf("ToLower('İ') = %U, want %U", got, 'i')
	}
	if got := unicode.ToTitle('ß'); got != 'ß' {
		t.Fatalf("ToTitle('ß') = %U, want %U", got, 'ß')
	}

	if folded := unicode.SimpleFold('A'); folded != 'a' {
		t.Fatalf("SimpleFold('A') = %U, want %U", folded, 'a')
	}
	if folded := unicode.SimpleFold('a'); folded != 'A' {
		t.Fatalf("SimpleFold('a') = %U, want %U", folded, 'A')
	}
	if got := unicode.To(unicode.UpperCase, 'i'); got != 'I' {
		t.Fatalf("To(UpperCase, 'i') = %U, want %U", got, 'I')
	}
	if got := unicode.To(unicode.TitleCase, 'β'); got != 'Β' {
		t.Fatalf("To(TitleCase, 'β') = %U, want %U", got, 'Β')
	}
}

func TestSpecialCaseTurkish(t *testing.T) {
	if got := unicode.TurkishCase.ToUpper('i'); got != 'İ' {
		t.Fatalf("TurkishCase.ToUpper('i') = %U, want %U", got, 'İ')
	}
	if got := unicode.TurkishCase.ToLower('İ'); got != 'i' {
		t.Fatalf("TurkishCase.ToLower('İ') = %U, want %U", got, 'i')
	}
	if got := unicode.AzeriCase.ToTitle('i'); got != 'İ' {
		t.Fatalf("AzeriCase.ToTitle('i') = %U, want %U", got, 'İ')
	}
}
