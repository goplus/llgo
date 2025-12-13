package bufio_test

import (
	"bytes"
	"errors"
	"io"
	"strings"
	"testing"
	"unicode/utf8"

	"bufio"
)

var _ bufio.SplitFunc = bufio.ScanWords
var _ io.ReadWriter = (*bufio.ReadWriter)(nil)

func TestReaderOperations(t *testing.T) {
	if bufio.MaxScanTokenSize <= 0 {
		t.Fatalf("MaxScanTokenSize must be positive, got %d", bufio.MaxScanTokenSize)
	}

	reader := bufio.NewReaderSize(strings.NewReader("hello world"), 8)
	if reader == nil || reader.Size() < 8 {
		t.Fatalf("NewReaderSize should provide buffer ≥ 8, got %d", reader.Size())
	}
	if reader.Buffered() != 0 {
		t.Fatalf("new reader should have zero buffered data, got %d", reader.Buffered())
	}

	peek, err := reader.Peek(5)
	if err != nil || string(peek) != "hello" {
		t.Fatalf("Peek mismatch: data=%q err=%v", peek, err)
	}

	if n, err := reader.Discard(6); err != nil || n != 6 {
		t.Fatalf("Discard mismatch: n=%d err=%v", n, err)
	}

	b, err := reader.ReadByte()
	if err != nil || b != 'w' {
		t.Fatalf("ReadByte mismatch: byte=%q err=%v", b, err)
	}
	if err := reader.UnreadByte(); err != nil {
		t.Fatalf("UnreadByte should succeed after ReadByte, got %v", err)
	}
	if err := reader.UnreadByte(); !errors.Is(err, bufio.ErrInvalidUnreadByte) {
		t.Fatalf("Expected ErrInvalidUnreadByte, got %v", err)
	}
	if _, err := reader.ReadByte(); err != nil {
		t.Fatalf("ReadByte after UnreadByte failed: %v", err)
	}

	r, size, err := reader.ReadRune()
	if err != nil || r != 'o' || size != utf8.RuneLen(r) {
		t.Fatalf("ReadRune mismatch: r=%q size=%d err=%v", r, size, err)
	}
	if err := reader.UnreadRune(); err != nil {
		t.Fatalf("UnreadRune should succeed, got %v", err)
	}
	if err := reader.UnreadRune(); !errors.Is(err, bufio.ErrInvalidUnreadRune) {
		t.Fatalf("Expected ErrInvalidUnreadRune, got %v", err)
	}
	if _, _, err := reader.ReadRune(); err != nil {
		t.Fatalf("ReadRune after UnreadRune failed: %v", err)
	}

	buf := make([]byte, 3)
	if n, err := reader.Read(buf); err != nil || string(buf[:n]) == "" {
		t.Fatalf("Read mismatch: n=%d data=%q err=%v", n, buf[:n], err)
	}

	var zeroReader bufio.Reader
	zeroReader.Reset(strings.NewReader("reset"))
	if zeroReader.Size() <= 0 {
		t.Fatalf("Reset should initialize buffer size, got %d", zeroReader.Size())
	}
	if _, err := zeroReader.ReadByte(); err != nil {
		t.Fatalf("Zero-value Reset reader should read: %v", err)
	}

	rSmall := bufio.NewReaderSize(strings.NewReader(strings.Repeat("x", 64)), 8)
	if _, err := rSmall.Peek(rSmall.Size() + 1); !errors.Is(err, bufio.ErrBufferFull) {
		t.Fatalf("Peek exceeding capacity should return ErrBufferFull, got %v", err)
	}

	if _, err := rSmall.Discard(-1); !errors.Is(err, bufio.ErrNegativeCount) {
		t.Fatalf("Negative Discard should return ErrNegativeCount, got %v", err)
	}

	lineReader := bufio.NewReaderSize(strings.NewReader("first line\nsecond line\n"), 5)
	slice, err := lineReader.ReadSlice('\n')
	if err != nil || string(slice) != "first line\n" {
		t.Fatalf("ReadSlice mismatch: data=%q err=%v", slice, err)
	}
	bytesLine, err := lineReader.ReadBytes('\n')
	if err != nil || string(bytesLine) != "second line\n" {
		t.Fatalf("ReadBytes mismatch: data=%q err=%v", bytesLine, err)
	}

	readerLine := bufio.NewReaderSize(strings.NewReader("longlinewithoutnewline"), 4)
	part, isPrefix, err := readerLine.ReadLine()
	if err != nil || !isPrefix || string(part) == "" {
		t.Fatalf("ReadLine first chunk mismatch: data=%q isPrefix=%v err=%v", part, isPrefix, err)
	}
	rest, isPrefix, err := readerLine.ReadLine()
	if err != nil || isPrefix || string(rest) == "" {
		t.Fatalf("ReadLine second chunk mismatch: data=%q isPrefix=%v err=%v", rest, isPrefix, err)
	}

	strReader := bufio.NewReader(strings.NewReader("token1,token2,"))
	if s, err := strReader.ReadString(','); err != nil || s != "token1," {
		t.Fatalf("ReadString mismatch: %q err=%v", s, err)
	}
	if s, err := strReader.ReadString(','); err != nil || s != "token2," {
		t.Fatalf("ReadString second mismatch: %q err=%v", s, err)
	}

	if _, err := strReader.ReadString(','); err != io.EOF {
		t.Fatalf("ReadString should hit EOF, got %v", err)
	}

	byteReader := bufio.NewReader(strings.NewReader("bytes,"))
	if data, err := byteReader.ReadBytes(','); err != nil || string(data) != "bytes," {
		t.Fatalf("ReadBytes mismatch: data=%q err=%v", data, err)
	}

	writeToReader := bufio.NewReader(strings.NewReader("write-to"))
	var dst bytes.Buffer
	n, err := writeToReader.WriteTo(&dst)
	if err != nil || dst.String() != "write-to" || n != int64(len("write-to")) {
		t.Fatalf("WriteTo mismatch: n=%d dst=%q err=%v", n, dst.String(), err)
	}
}

func TestWriterOperations(t *testing.T) {
	var dst bytes.Buffer
	writer := bufio.NewWriterSize(&dst, 8)
	if writer.Size() != 8 {
		t.Fatalf("NewWriterSize should honor size, got %d", writer.Size())
	}

	if writer.Available() != writer.Size() {
		t.Fatalf("initial Available mismatch: %d", writer.Available())
	}

	if _, err := writer.Write([]byte("hi")); err != nil {
		t.Fatalf("Write failed: %v", err)
	}
	if writer.Buffered() != 2 {
		t.Fatalf("Buffered mismatch: %d", writer.Buffered())
	}

	buf := writer.AvailableBuffer()
	if cap(buf) != writer.Available() {
		t.Fatalf("AvailableBuffer capacity mismatch: cap=%d available=%d", cap(buf), writer.Available())
	}
	buf = append(buf, ' ')
	if _, err := writer.Write(buf); err != nil {
		t.Fatalf("Write using AvailableBuffer failed: %v", err)
	}

	if err := writer.WriteByte('!'); err != nil {
		t.Fatalf("WriteByte failed: %v", err)
	}
	if n, err := writer.WriteRune('π'); err != nil || n != utf8.RuneLen('π') {
		t.Fatalf("WriteRune mismatch: n=%d err=%v", n, err)
	}
	if n, err := writer.WriteString(" done"); err != nil || n != len(" done") {
		t.Fatalf("WriteString mismatch: n=%d err=%v", n, err)
	}

	if err := writer.Flush(); err != nil {
		t.Fatalf("Flush failed: %v", err)
	}
	if got := dst.String(); got != "hi !π done" {
		t.Fatalf("Flush output mismatch: %q", got)
	}

	var dst2 bytes.Buffer
	writer.Reset(&dst2)
	if writer.Available() != writer.Size() {
		t.Fatalf("Reset should clear buffer, available=%d size=%d", writer.Available(), writer.Size())
	}
	if _, err := writer.WriteString("reset"); err != nil {
		t.Fatalf("WriteString post-reset failed: %v", err)
	}
	if _, err := writer.ReadFrom(strings.NewReader(" stream")); err != nil {
		t.Fatalf("ReadFrom failed: %v", err)
	}
	if err := writer.Flush(); err != nil {
		t.Fatalf("Flush after ReadFrom failed: %v", err)
	}
	if got := dst2.String(); got != "reset stream" {
		t.Fatalf("Reset/ReadFrom output mismatch: %q", got)
	}

	if defaultWriter := bufio.NewWriter(&bytes.Buffer{}); defaultWriter.Size() <= 0 {
		t.Fatalf("NewWriter should create a writer with positive size")
	}
}

func TestReadWriter(t *testing.T) {
	var out bytes.Buffer
	rw := bufio.NewReadWriter(bufio.NewReader(strings.NewReader("abcd")), bufio.NewWriter(&out))
	buf := make([]byte, 4)
	if n, err := rw.Read(buf); err != nil || string(buf[:n]) != "abcd" {
		t.Fatalf("ReadWriter.Read mismatch: n=%d data=%q err=%v", n, buf[:n], err)
	}

	if _, err := rw.WriteString("out"); err != nil {
		t.Fatalf("ReadWriter.WriteString failed: %v", err)
	}
	if err := rw.Flush(); err != nil {
		t.Fatalf("ReadWriter.Flush failed: %v", err)
	}
	if out.String() != "out" {
		t.Fatalf("ReadWriter output mismatch: %q", out.String())
	}
}

func TestScannerSplits(t *testing.T) {
	data := "one two\n三 四"
	scanner := bufio.NewScanner(strings.NewReader(data))
	scanner.Split(bufio.ScanWords)
	var words []string
	for scanner.Scan() {
		token := scanner.Text()
		if token != string(scanner.Bytes()) {
			t.Fatalf("Scanner.Bytes/Text mismatch: %q vs %q", scanner.Bytes(), token)
		}
		words = append(words, token)
	}
	if err := scanner.Err(); err != nil {
		t.Fatalf("ScanWords error: %v", err)
	}
	if want := []string{"one", "two", "三", "四"}; !equalStrings(words, want) {
		t.Fatalf("ScanWords mismatch: %v", words)
	}

	byteScanner := bufio.NewScanner(strings.NewReader("ab"))
	byteScanner.Split(bufio.ScanBytes)
	var bytesTokens []string
	for byteScanner.Scan() {
		bytesTokens = append(bytesTokens, byteScanner.Text())
	}
	if err := byteScanner.Err(); err != nil {
		t.Fatalf("ScanBytes error: %v", err)
	}
	if want := []string{"a", "b"}; !equalStrings(bytesTokens, want) {
		t.Fatalf("ScanBytes mismatch: %v", bytesTokens)
	}

	runeScanner := bufio.NewScanner(strings.NewReader("π😊"))
	runeScanner.Split(bufio.ScanRunes)
	var runes []string
	for runeScanner.Scan() {
		runes = append(runes, runeScanner.Text())
	}
	if err := runeScanner.Err(); err != nil {
		t.Fatalf("ScanRunes error: %v", err)
	}
	if want := []string{"π", "😊"}; !equalStrings(runes, want) {
		t.Fatalf("ScanRunes mismatch: %v", runes)
	}

	lineScanner := bufio.NewScanner(strings.NewReader("line1\nline2\n"))
	lineScanner.Split(bufio.ScanLines)
	lineScanner.Buffer(make([]byte, 0), bufio.MaxScanTokenSize)
	if !lineScanner.Scan() || lineScanner.Text() != "line1" {
		t.Fatalf("ScanLines first token mismatch: %q err=%v", lineScanner.Text(), lineScanner.Err())
	}
	if !lineScanner.Scan() || lineScanner.Text() != "line2" {
		t.Fatalf("ScanLines second token mismatch: %q err=%v", lineScanner.Text(), lineScanner.Err())
	}
	if err := lineScanner.Err(); err != nil {
		t.Fatalf("ScanLines error: %v", err)
	}
}

func TestScannerErrorCases(t *testing.T) {
	negatives := bufio.NewScanner(strings.NewReader("data"))
	negatives.Split(func(data []byte, atEOF bool) (int, []byte, error) {
		return -1, nil, nil
	})
	if negatives.Scan() {
		t.Fatal("Scan should not succeed with negative advance")
	}
	if !errors.Is(negatives.Err(), bufio.ErrNegativeAdvance) {
		t.Fatalf("expected ErrNegativeAdvance, got %v", negatives.Err())
	}

	advanceTooFar := bufio.NewScanner(strings.NewReader("abc"))
	advanceTooFar.Split(func(data []byte, atEOF bool) (int, []byte, error) {
		if len(data) == 0 {
			return 0, nil, nil
		}
		return len(data) + 1, nil, nil
	})
	if advanceTooFar.Scan() {
		t.Fatal("Scan should not succeed with advance too far")
	}
	if !errors.Is(advanceTooFar.Err(), bufio.ErrAdvanceTooFar) {
		t.Fatalf("expected ErrAdvanceTooFar, got %v", advanceTooFar.Err())
	}

	badCount := bufio.NewScanner(badCountReader{})
	if badCount.Scan() {
		t.Fatal("Scan should fail for bad reader counts")
	}
	if !errors.Is(badCount.Err(), bufio.ErrBadReadCount) {
		t.Fatalf("expected ErrBadReadCount, got %v", badCount.Err())
	}

	tooLong := bufio.NewScanner(strings.NewReader(strings.Repeat("x", 10)))
	tooLong.Buffer(make([]byte, 0), 4)
	if tooLong.Scan() {
		t.Fatal("Scan should fail for long tokens")
	}
	if !errors.Is(tooLong.Err(), bufio.ErrTooLong) {
		t.Fatalf("expected ErrTooLong, got %v", tooLong.Err())
	}

	finalToken := bufio.NewScanner(strings.NewReader("ignored"))
	finalToken.Split(func(data []byte, atEOF bool) (int, []byte, error) {
		if len(data) == 0 && !atEOF {
			return 0, nil, nil
		}
		return len(data), []byte("last"), bufio.ErrFinalToken
	})
	if !finalToken.Scan() {
		t.Fatalf("Scan should return final token, err=%v", finalToken.Err())
	}
	if finalToken.Text() != "last" {
		t.Fatalf("final token mismatch: %q", finalToken.Text())
	}
	if finalToken.Scan() {
		t.Fatal("Scan should stop after ErrFinalToken")
	}
	if finalToken.Err() != nil {
		t.Fatalf("ErrFinalToken should end scanning without error, got %v", finalToken.Err())
	}
}

func equalStrings(a, b []string) bool {
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

type badCountReader struct{}

func (badCountReader) Read(p []byte) (int, error) {
	if len(p) == 0 {
		return 0, nil
	}
	return len(p) + 1, nil
}
