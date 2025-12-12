package strings_test

import (
	"bytes"
	"io"
	"iter"
	"strings"
	"testing"
	"unicode"
	"unsafe"
)

func collectSeq(seq iter.Seq[string]) []string {
	var out []string
	for v := range seq {
		out = append(out, v)
	}
	return out
}

func TestStringsBasicFunctions(t *testing.T) {
	src := "go+plus"
	cloned := strings.Clone(src)
	if cloned != src {
		t.Fatalf("Clone(%q) = %q", src, cloned)
	}
	if unsafe.StringData(cloned) == unsafe.StringData(src) {
		t.Fatalf("Clone should allocate a new backing string")
	}

	if strings.Compare("a", "b") >= 0 {
		t.Fatal("Compare should report a<b")
	}
	if strings.Compare("a", "a") != 0 {
		t.Fatal("Compare should report equality")
	}

	if !strings.Contains("alphabet", "pha") {
		t.Fatal("Contains should find substring")
	}
	if strings.ContainsAny("hello", "xyz") {
		t.Fatal("ContainsAny should not find characters")
	}
	if !strings.ContainsAny("hello", "xyzlo") {
		t.Fatal("ContainsAny should find shared character")
	}
	if !strings.ContainsFunc("abc123", unicode.IsDigit) {
		t.Fatal("ContainsFunc should find digit")
	}
	if !strings.ContainsRune("café", 'é') {
		t.Fatal("ContainsRune should find rune")
	}

	if strings.Count("aaaa", "aa") != 2 {
		t.Fatal("Count should count non-overlapping occurrences")
	}
	if strings.Count("abc", "") != 1+len("abc") {
		t.Fatal("Count of empty string should be len+1")
	}

	before, after, found := strings.Cut("go+plus", "+")
	if !found || before != "go" || after != "plus" {
		t.Fatalf("Cut mismatch: %v, %v, %v", before, after, found)
	}
	trimmed, ok := strings.CutPrefix("foobar", "foo")
	if !ok || trimmed != "bar" {
		t.Fatalf("CutPrefix mismatch: %q, %v", trimmed, ok)
	}
	chopped, ok := strings.CutSuffix("foobar", "bar")
	if !ok || chopped != "foo" {
		t.Fatalf("CutSuffix mismatch: %q, %v", chopped, ok)
	}

	if !strings.EqualFold("Go", "gO") {
		t.Fatal("EqualFold should treat case-insensitive match")
	}

	fields := strings.Fields("  jump over  spaces  ")
	if want := []string{"jump", "over", "spaces"}; !slicesEqual(fields, want) {
		t.Fatalf("Fields mismatch: %v", fields)
	}

	fieldsFunc := strings.FieldsFunc("a|b||c", func(r rune) bool { return r == '|' })
	if want := []string{"a", "b", "c"}; !slicesEqual(fieldsFunc, want) {
		t.Fatalf("FieldsFunc mismatch: %v", fieldsFunc)
	}

	if !strings.HasPrefix("goplus", "go") || !strings.HasSuffix("goplus", "plus") {
		t.Fatal("HasPrefix/HasSuffix mismatch")
	}

	joined := strings.Join([]string{"go", "plus"}, "+")
	if joined != "go+plus" {
		t.Fatalf("Join mismatch: %q", joined)
	}

	if strings.Index("abracadabra", "cad") != 4 {
		t.Fatal("Index mismatch")
	}
	if strings.IndexAny("hello", "xyz") != -1 {
		t.Fatal("IndexAny should miss")
	}
	if strings.IndexAny("hello", "oy") != 4 {
		t.Fatal("IndexAny should find y")
	}
	if strings.IndexByte("gopher", 'p') != 2 {
		t.Fatal("IndexByte mismatch")
	}
	if strings.IndexFunc("Hello123", unicode.IsDigit) != 5 {
		t.Fatal("IndexFunc mismatch")
	}
	if strings.IndexRune("cafétéria", 'é') != 3 {
		t.Fatal("IndexRune mismatch")
	}

	if strings.LastIndex("gophers", "go") != 0 {
		t.Fatal("LastIndex mismatch")
	}
	if strings.LastIndexAny("hello", "xyz") != -1 {
		t.Fatal("LastIndexAny should miss")
	}
	if strings.LastIndexAny("hello", "ox") != 4 {
		t.Fatal("LastIndexAny mismatch")
	}
	if strings.LastIndexByte("gopher", 'h') != 3 {
		t.Fatal("LastIndexByte mismatch")
	}
	if strings.LastIndexFunc("Hello123", unicode.IsDigit) != 7 {
		t.Fatal("LastIndexFunc mismatch")
	}

	mapped := strings.Map(func(r rune) rune {
		if unicode.IsLower(r) {
			return unicode.ToUpper(r)
		}
		return r
	}, "GoPlus")
	if mapped != "GOPLUS" {
		t.Fatalf("Map mismatch: %q", mapped)
	}

	if strings.Repeat("go", 3) != "gogogo" {
		t.Fatal("Repeat mismatch")
	}

	if strings.Replace("go go", "go", "GO", 1) != "GO go" {
		t.Fatal("Replace mismatch")
	}
	if strings.ReplaceAll("go go", "go", "GO") != "GO GO" {
		t.Fatal("ReplaceAll mismatch")
	}

	if strings.Title("hello world") != "Hello World" {
		t.Fatal("Title mismatch")
	}
	if strings.ToLower("GoPLUS") != "goplus" {
		t.Fatal("ToLower mismatch")
	}
	if strings.ToUpper("GoPLUS") != "GOPLUS" {
		t.Fatal("ToUpper mismatch")
	}
	if strings.ToTitle("go") != "GO" {
		t.Fatal("ToTitle mismatch")
	}

	turkish := unicode.TurkishCase
	if strings.ToLowerSpecial(turkish, "I") != "ı" {
		t.Fatal("ToLowerSpecial mismatch")
	}
	if strings.ToUpperSpecial(turkish, "i") != "İ" {
		t.Fatal("ToUpperSpecial mismatch")
	}
	if strings.ToTitleSpecial(turkish, "i") != "İ" {
		t.Fatal("ToTitleSpecial mismatch")
	}

	if got := strings.ToValidUTF8("go\xffplus", "?"); got != "go?plus" {
		t.Fatalf("ToValidUTF8 mismatch: %q", got)
	}

	if strings.Trim("--go--", "-") != "go" {
		t.Fatal("Trim mismatch")
	}
	if strings.TrimFunc("123go123", unicode.IsDigit) != "go" {
		t.Fatal("TrimFunc mismatch")
	}
	if strings.TrimLeft("..go..", ".") != "go.." {
		t.Fatal("TrimLeft mismatch")
	}
	if strings.TrimLeftFunc("  go", unicode.IsSpace) != "go" {
		t.Fatal("TrimLeftFunc mismatch")
	}
	if strings.TrimPrefix("gopher", "go") != "pher" {
		t.Fatal("TrimPrefix mismatch")
	}
	if strings.TrimRight("..go..", ".") != "..go" {
		t.Fatal("TrimRight mismatch")
	}
	if strings.TrimRightFunc("go  ", unicode.IsSpace) != "go" {
		t.Fatal("TrimRightFunc mismatch")
	}
	if strings.TrimSpace("  go  ") != "go" {
		t.Fatal("TrimSpace mismatch")
	}
	if strings.TrimSuffix("gopher", "her") != "gop" {
		t.Fatal("TrimSuffix mismatch")
	}
}

func TestStringsSequenceFunctions(t *testing.T) {
	fields := collectSeq(strings.FieldsSeq("  a  b c\t"))
	if want := []string{"a", "b", "c"}; !slicesEqual(fields, want) {
		t.Fatalf("FieldsSeq mismatch: %v", fields)
	}

	fieldsFunc := collectSeq(strings.FieldsFuncSeq("a|b||c", func(r rune) bool { return r == '|' }))
	if want := []string{"a", "b", "c"}; !slicesEqual(fieldsFunc, want) {
		t.Fatalf("FieldsFuncSeq mismatch: %v", fieldsFunc)
	}

	splits := strings.Split("a,b,c", ",")
	if want := []string{"a", "b", "c"}; !slicesEqual(splits, want) {
		t.Fatalf("Split mismatch: %v", splits)
	}
	splitsAfter := strings.SplitAfter("a,b", ",")
	if want := []string{"a,", "b"}; !slicesEqual(splitsAfter, want) {
		t.Fatalf("SplitAfter mismatch: %v", splitsAfter)
	}
	splitsAfterN := strings.SplitAfterN("a,b,c", ",", 2)
	if want := []string{"a,", "b,c"}; !slicesEqual(splitsAfterN, want) {
		t.Fatalf("SplitAfterN mismatch: %v", splitsAfterN)
	}
	splitsN := strings.SplitN("a,b,c", ",", 2)
	if want := []string{"a", "b,c"}; !slicesEqual(splitsN, want) {
		t.Fatalf("SplitN mismatch: %v", splitsN)
	}

	seqAfter := collectSeq(strings.SplitAfterSeq("a,b,c", ","))
	if want := []string{"a,", "b,", "c"}; !slicesEqual(seqAfter, want) {
		t.Fatalf("SplitAfterSeq mismatch: %v", seqAfter)
	}
	seq := collectSeq(strings.SplitSeq("a,b,c", ","))
	if want := []string{"a", "b", "c"}; !slicesEqual(seq, want) {
		t.Fatalf("SplitSeq mismatch: %v", seq)
	}

	lines := collectSeq(strings.Lines("a\nb\n"))
	if want := []string{"a\n", "b\n"}; !slicesEqual(lines, want) {
		t.Fatalf("Lines mismatch: %v", lines)
	}

	cuts := collectSeq(strings.Lines("single line"))
	if want := []string{"single line"}; !slicesEqual(cuts, want) {
		t.Fatalf("Lines single mismatch: %v", cuts)
	}
}

func TestStringsBuilder(t *testing.T) {
	var b strings.Builder
	if b.Len() != 0 {
		t.Fatal("zero Builder should have length 0")
	}

	b.Grow(16)
	if b.Cap() < 16 {
		t.Fatalf("Grow should ensure capacity, got %d", b.Cap())
	}

	if _, err := b.Write([]byte("Go")); err != nil {
		t.Fatalf("Write error: %v", err)
	}
	if err := b.WriteByte('+'); err != nil {
		t.Fatalf("WriteByte error: %v", err)
	}
	if _, err := b.WriteRune('π'); err != nil {
		t.Fatalf("WriteRune error: %v", err)
	}
	if _, err := b.WriteString("Plus"); err != nil {
		t.Fatalf("WriteString error: %v", err)
	}

	if b.Len() == 0 {
		t.Fatal("Builder should contain data")
	}
	if b.String() != "Go+πPlus" {
		t.Fatalf("Builder String mismatch: %q", b.String())
	}

	b.Reset()
	if b.Len() != 0 || b.String() != "" {
		t.Fatal("Reset should clear builder")
	}
}

func TestStringsReader(t *testing.T) {
	r := strings.NewReader("hello")
	if r == nil {
		t.Fatal("NewReader returned nil")
	}
	if r.Size() != int64(len("hello")) {
		t.Fatal("Size mismatch")
	}

	buf := make([]byte, 2)
	if n, err := r.Read(buf); err != nil || string(buf[:n]) != "he" {
		t.Fatalf("Read mismatch: n=%d err=%v", n, err)
	}
	if r.Len() != len("hello")-2 {
		t.Fatal("Len after read mismatch")
	}

	b, err := r.ReadByte()
	if err != nil || b != 'l' {
		t.Fatalf("ReadByte mismatch: %v %q", err, b)
	}
	if err := r.UnreadByte(); err != nil {
		t.Fatalf("UnreadByte error: %v", err)
	}

	runeVal, size, err := r.ReadRune()
	if err != nil || runeVal != 'l' || size != 1 {
		t.Fatalf("ReadRune mismatch: %v %q %d", err, runeVal, size)
	}
	if err := r.UnreadRune(); err != nil {
		t.Fatalf("UnreadRune error: %v", err)
	}
	if _, _, err := r.ReadRune(); err != nil {
		t.Fatalf("ReadRune after UnreadRune error: %v", err)
	}

	if pos, err := r.Seek(0, io.SeekStart); err != nil || pos != 0 {
		t.Fatalf("Seek mismatch: %v %d", err, pos)
	}

	readAtBuf := make([]byte, 5)
	n, err := r.ReadAt(readAtBuf, 0)
	if n != 5 || (err != nil && err != io.EOF) || string(readAtBuf) != "hello" {
		t.Fatalf("ReadAt mismatch: n=%d err=%v buf=%q", n, err, readAtBuf)
	}

	r.Reset("abc")
	if r.Len() != 3 {
		t.Fatal("Len after Reset mismatch")
	}

	var out bytes.Buffer
	if written, err := r.WriteTo(&out); err != nil || written != int64(len("abc")) {
		t.Fatalf("WriteTo mismatch: written=%d err=%v", written, err)
	}
	if out.String() != "abc" {
		t.Fatalf("WriteTo output mismatch: %q", out.String())
	}
}

func TestStringsReplacer(t *testing.T) {
	rep := strings.NewReplacer("go", "Go", "plus", "Plus")
	if rep.Replace("go plus") != "Go Plus" {
		t.Fatal("Replacer.Replace mismatch")
	}

	var out bytes.Buffer
	if n, err := rep.WriteString(&out, "go plus"); err != nil || n != len("Go Plus") {
		t.Fatalf("Replacer.WriteString mismatch: n=%d err=%v", n, err)
	}
	if out.String() != "Go Plus" {
		t.Fatalf("Replacer.WriteString output mismatch: %q", out.String())
	}
}

func slicesEqual(a, b []string) bool {
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
