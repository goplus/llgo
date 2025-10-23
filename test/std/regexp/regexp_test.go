package regexp_test

import (
	"bytes"
	"regexp"
	"strings"
	"testing"
)

func TestCompile(t *testing.T) {
	re, err := regexp.Compile(`\d+`)
	if err != nil {
		t.Fatalf("Compile failed: %v", err)
	}
	if re == nil {
		t.Fatal("Compile returned nil")
	}
}

func TestCompilePOSIX(t *testing.T) {
	re, err := regexp.CompilePOSIX(`[[:digit:]]+`)
	if err != nil {
		t.Fatalf("CompilePOSIX failed: %v", err)
	}
	if re == nil {
		t.Fatal("CompilePOSIX returned nil")
	}
}

func TestMustCompile(t *testing.T) {
	defer func() {
		if r := recover(); r != nil {
			t.Error("MustCompile panicked on valid pattern")
		}
	}()

	re := regexp.MustCompile(`\w+`)
	if re == nil {
		t.Fatal("MustCompile returned nil")
	}
}

func TestMustCompilePOSIX(t *testing.T) {
	defer func() {
		if r := recover(); r != nil {
			t.Error("MustCompilePOSIX panicked on valid pattern")
		}
	}()

	re := regexp.MustCompilePOSIX(`[[:alpha:]]+`)
	if re == nil {
		t.Fatal("MustCompilePOSIX returned nil")
	}
}

func TestMatch(t *testing.T) {
	matched, err := regexp.Match(`\d+`, []byte("abc123def"))
	if err != nil {
		t.Fatalf("Match failed: %v", err)
	}
	if !matched {
		t.Error("Match should have matched")
	}
}

func TestMatchString(t *testing.T) {
	matched, err := regexp.MatchString(`hello`, "hello world")
	if err != nil {
		t.Fatalf("MatchString failed: %v", err)
	}
	if !matched {
		t.Error("MatchString should have matched")
	}
}

func TestMatchReader(t *testing.T) {
	r := strings.NewReader("test123")
	matched, err := regexp.MatchReader(`\d+`, r)
	if err != nil {
		t.Fatalf("MatchReader failed: %v", err)
	}
	if !matched {
		t.Error("MatchReader should have matched")
	}
}

func TestQuoteMeta(t *testing.T) {
	testCases := []struct {
		input    string
		expected string
	}{
		{"hello", "hello"},
		{"hello.world", `hello\.world`},
		{"a*b+c?", `a\*b\+c\?`},
		{"[a-z]", `\[a-z\]`},
	}

	for _, tc := range testCases {
		result := regexp.QuoteMeta(tc.input)
		if result != tc.expected {
			t.Errorf("QuoteMeta(%q) = %q, want %q", tc.input, result, tc.expected)
		}
	}
}

func TestRegexpString(t *testing.T) {
	pattern := `\d+`
	re := regexp.MustCompile(pattern)
	if re.String() != pattern {
		t.Errorf("String() = %q, want %q", re.String(), pattern)
	}
}

func TestRegexpMatchString(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	if !re.MatchString("abc123") {
		t.Error("MatchString should match")
	}
	if re.MatchString("abc") {
		t.Error("MatchString should not match")
	}
}

func TestRegexpMatch(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	if !re.Match([]byte("abc123")) {
		t.Error("Match should match")
	}
	if re.Match([]byte("abc")) {
		t.Error("Match should not match")
	}
}

func TestRegexpMatchReader(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	r := strings.NewReader("abc123")
	matched := re.MatchReader(r)
	if !matched {
		t.Error("MatchReader should match")
	}
}

func TestFindString(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	result := re.FindString("abc123def456")
	if result != "123" {
		t.Errorf("FindString = %q, want %q", result, "123")
	}
}

func TestFindStringIndex(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	loc := re.FindStringIndex("abc123def")
	if len(loc) != 2 || loc[0] != 3 || loc[1] != 6 {
		t.Errorf("FindStringIndex = %v, want [3 6]", loc)
	}
}

func TestFindStringSubmatch(t *testing.T) {
	re := regexp.MustCompile(`(\d+)`)
	matches := re.FindStringSubmatch("abc123def")
	if len(matches) != 2 || matches[0] != "123" || matches[1] != "123" {
		t.Errorf("FindStringSubmatch = %v, want [123 123]", matches)
	}
}

func TestFindStringSubmatchIndex(t *testing.T) {
	re := regexp.MustCompile(`(\d+)`)
	locs := re.FindStringSubmatchIndex("abc123def")
	if len(locs) != 4 {
		t.Errorf("FindStringSubmatchIndex returned %d values, want 4", len(locs))
	}
}

func TestFindAllString(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	matches := re.FindAllString("a1b2c3", -1)
	if len(matches) != 3 {
		t.Errorf("FindAllString found %d matches, want 3", len(matches))
	}
}

func TestFindAllStringIndex(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	locs := re.FindAllStringIndex("a1b2c3", -1)
	if len(locs) != 3 {
		t.Errorf("FindAllStringIndex found %d matches, want 3", len(locs))
	}
}

func TestFindAllStringSubmatch(t *testing.T) {
	re := regexp.MustCompile(`(\d+)`)
	matches := re.FindAllStringSubmatch("a1b2c3", -1)
	if len(matches) != 3 {
		t.Errorf("FindAllStringSubmatch found %d matches, want 3", len(matches))
	}
}

func TestFindAllStringSubmatchIndex(t *testing.T) {
	re := regexp.MustCompile(`(\d+)`)
	locs := re.FindAllStringSubmatchIndex("a1b2c3", -1)
	if len(locs) != 3 {
		t.Errorf("FindAllStringSubmatchIndex found %d matches, want 3", len(locs))
	}
}

func TestFind(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	result := re.Find([]byte("abc123def456"))
	if !bytes.Equal(result, []byte("123")) {
		t.Errorf("Find = %q, want %q", result, "123")
	}
}

func TestFindIndex(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	loc := re.FindIndex([]byte("abc123def"))
	if len(loc) != 2 || loc[0] != 3 || loc[1] != 6 {
		t.Errorf("FindIndex = %v, want [3 6]", loc)
	}
}

func TestFindSubmatch(t *testing.T) {
	re := regexp.MustCompile(`(\d+)`)
	matches := re.FindSubmatch([]byte("abc123def"))
	if len(matches) != 2 {
		t.Errorf("FindSubmatch returned %d matches, want 2", len(matches))
	}
}

func TestFindSubmatchIndex(t *testing.T) {
	re := regexp.MustCompile(`(\d+)`)
	locs := re.FindSubmatchIndex([]byte("abc123def"))
	if len(locs) != 4 {
		t.Errorf("FindSubmatchIndex returned %d values, want 4", len(locs))
	}
}

func TestFindAll(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	matches := re.FindAll([]byte("a1b2c3"), -1)
	if len(matches) != 3 {
		t.Errorf("FindAll found %d matches, want 3", len(matches))
	}
}

func TestFindAllIndex(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	locs := re.FindAllIndex([]byte("a1b2c3"), -1)
	if len(locs) != 3 {
		t.Errorf("FindAllIndex found %d matches, want 3", len(locs))
	}
}

func TestFindAllSubmatch(t *testing.T) {
	re := regexp.MustCompile(`(\d+)`)
	matches := re.FindAllSubmatch([]byte("a1b2c3"), -1)
	if len(matches) != 3 {
		t.Errorf("FindAllSubmatch found %d matches, want 3", len(matches))
	}
}

func TestFindAllSubmatchIndex(t *testing.T) {
	re := regexp.MustCompile(`(\d+)`)
	locs := re.FindAllSubmatchIndex([]byte("a1b2c3"), -1)
	if len(locs) != 3 {
		t.Errorf("FindAllSubmatchIndex found %d matches, want 3", len(locs))
	}
}

func TestFindReaderIndex(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	r := strings.NewReader("abc123def")
	loc := re.FindReaderIndex(r)
	if len(loc) != 2 || loc[0] != 3 || loc[1] != 6 {
		t.Errorf("FindReaderIndex = %v, want [3 6]", loc)
	}
}

func TestFindReaderSubmatchIndex(t *testing.T) {
	re := regexp.MustCompile(`(\d+)`)
	r := strings.NewReader("abc123def")
	locs := re.FindReaderSubmatchIndex(r)
	if len(locs) != 4 {
		t.Errorf("FindReaderSubmatchIndex returned %d values, want 4", len(locs))
	}
}

func TestReplaceAllString(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	result := re.ReplaceAllString("a1b2c3", "X")
	if result != "aXbXcX" {
		t.Errorf("ReplaceAllString = %q, want %q", result, "aXbXcX")
	}
}

func TestReplaceAllLiteralString(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	result := re.ReplaceAllLiteralString("a1b2c3", "$0")
	if result != "a$0b$0c$0" {
		t.Errorf("ReplaceAllLiteralString = %q, want %q", result, "a$0b$0c$0")
	}
}

func TestReplaceAllStringFunc(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	result := re.ReplaceAllStringFunc("a1b2c3", func(s string) string {
		return "[" + s + "]"
	})
	if result != "a[1]b[2]c[3]" {
		t.Errorf("ReplaceAllStringFunc = %q, want %q", result, "a[1]b[2]c[3]")
	}
}

func TestReplaceAll(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	result := re.ReplaceAll([]byte("a1b2c3"), []byte("X"))
	if !bytes.Equal(result, []byte("aXbXcX")) {
		t.Errorf("ReplaceAll = %q, want %q", result, "aXbXcX")
	}
}

func TestReplaceAllLiteral(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	result := re.ReplaceAllLiteral([]byte("a1b2c3"), []byte("$0"))
	if !bytes.Equal(result, []byte("a$0b$0c$0")) {
		t.Errorf("ReplaceAllLiteral = %q, want %q", result, "a$0b$0c$0")
	}
}

func TestReplaceAllFunc(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	result := re.ReplaceAllFunc([]byte("a1b2c3"), func(b []byte) []byte {
		return []byte("[" + string(b) + "]")
	})
	if !bytes.Equal(result, []byte("a[1]b[2]c[3]")) {
		t.Errorf("ReplaceAllFunc = %q, want %q", result, "a[1]b[2]c[3]")
	}
}

func TestSplit(t *testing.T) {
	re := regexp.MustCompile(`,\s*`)
	parts := re.Split("a, b,c, d", -1)
	if len(parts) != 4 {
		t.Errorf("Split returned %d parts, want 4", len(parts))
	}
}

func TestSubexpNames(t *testing.T) {
	re := regexp.MustCompile(`(?P<first>\d+)\.(?P<second>\d+)`)
	names := re.SubexpNames()
	if len(names) != 3 {
		t.Errorf("SubexpNames returned %d names, want 3", len(names))
	}
	if names[1] != "first" || names[2] != "second" {
		t.Errorf("SubexpNames = %v, want [\"\", \"first\", \"second\"]", names)
	}
}

func TestSubexpIndex(t *testing.T) {
	re := regexp.MustCompile(`(?P<name>\w+)`)
	idx := re.SubexpIndex("name")
	if idx != 1 {
		t.Errorf("SubexpIndex(\"name\") = %d, want 1", idx)
	}

	idx = re.SubexpIndex("unknown")
	if idx != -1 {
		t.Errorf("SubexpIndex(\"unknown\") = %d, want -1", idx)
	}
}

func TestNumSubexp(t *testing.T) {
	re := regexp.MustCompile(`(\d+)\.(\d+)\.(\d+)`)
	if n := re.NumSubexp(); n != 3 {
		t.Errorf("NumSubexp() = %d, want 3", n)
	}
}

func TestLiteralPrefix(t *testing.T) {
	re := regexp.MustCompile(`hello\d+`)
	prefix, complete := re.LiteralPrefix()
	if prefix != "hello" {
		t.Errorf("LiteralPrefix prefix = %q, want %q", prefix, "hello")
	}
	if complete {
		t.Error("LiteralPrefix complete should be false")
	}
}

func TestLongest(t *testing.T) {
	re := regexp.MustCompile(`a+`)
	re.Longest()
	result := re.FindString("aaaa")
	if result != "aaaa" {
		t.Errorf("After Longest(), FindString = %q, want %q", result, "aaaa")
	}
}

func TestCopy(t *testing.T) {
	re1 := regexp.MustCompile(`\d+`)
	re2 := re1.Copy()

	if re2.String() != re1.String() {
		t.Error("Copy() did not preserve pattern")
	}

	if re2.MatchString("123") != re1.MatchString("123") {
		t.Error("Copy() did not preserve behavior")
	}
}

func TestExpand(t *testing.T) {
	re := regexp.MustCompile(`(\w+)@(\w+)\.(\w+)`)
	match := re.FindStringSubmatchIndex("user@example.com")

	result := re.Expand(nil, []byte("$1 at $2 dot $3"), []byte("user@example.com"), match)
	expected := "user at example dot com"
	if string(result) != expected {
		t.Errorf("Expand = %q, want %q", result, expected)
	}
}

func TestExpandString(t *testing.T) {
	re := regexp.MustCompile(`(\w+)@(\w+)\.(\w+)`)
	match := re.FindStringSubmatchIndex("user@example.com")

	result := re.ExpandString(nil, "$1 at $2 dot $3", "user@example.com", match)
	expected := "user at example dot com"
	if string(result) != expected {
		t.Errorf("ExpandString = %q, want %q", result, expected)
	}
}

func TestAppendText(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	dst := []byte("prefix:")
	result, err := re.AppendText(dst)
	if err != nil {
		t.Fatalf("AppendText failed: %v", err)
	}
	expected := "prefix:" + `\d+`
	if string(result) != expected {
		t.Errorf("AppendText = %q, want %q", result, expected)
	}
}

func TestMarshalText(t *testing.T) {
	re := regexp.MustCompile(`\d+`)
	text, err := re.MarshalText()
	if err != nil {
		t.Fatalf("MarshalText failed: %v", err)
	}
	if string(text) != `\d+` {
		t.Errorf("MarshalText = %q, want %q", text, `\d+`)
	}
}

func TestUnmarshalText(t *testing.T) {
	var re regexp.Regexp
	err := re.UnmarshalText([]byte(`\d+`))
	if err != nil {
		t.Fatalf("UnmarshalText failed: %v", err)
	}
	if !re.MatchString("123") {
		t.Error("UnmarshalText did not create working regexp")
	}
}
