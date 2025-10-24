package csv_test

import (
	"bytes"
	"encoding/csv"
	"errors"
	"io"
	"reflect"
	"strings"
	"testing"
)

func TestReaderBasicRead(t *testing.T) {
	data := "name,age\nAlice,30\n"
	r := csv.NewReader(strings.NewReader(data))
	record, err := r.Read()
	if err != nil {
		t.Fatalf("Read error: %v", err)
	}
	if want := []string{"name", "age"}; !reflect.DeepEqual(record, want) {
		t.Fatalf("record=%v want=%v", record, want)
	}
	if offset := r.InputOffset(); offset == 0 {
		t.Fatalf("InputOffset=%d", offset)
	}
	line, col := r.FieldPos(1)
	if line != 1 || col != 6 {
		t.Fatalf("FieldPos line=%d col=%d", line, col)
	}

	record, err = r.Read()
	if err != nil {
		t.Fatalf("Read second error: %v", err)
	}
	if want := []string{"Alice", "30"}; !reflect.DeepEqual(record, want) {
		t.Fatalf("record=%v want=%v", record, want)
	}
}

func TestReaderCommentsTrimAndReuse(t *testing.T) {
	data := "#header\n  a ,\t b\nVALUE,DATA\n"
	r := csv.NewReader(strings.NewReader(data))
	r.Comment = '#'
	r.TrimLeadingSpace = true
	r.ReuseRecord = true

	rec1, err := r.Read()
	if err != nil {
		t.Fatalf("Read err: %v", err)
	}
	if !strings.HasPrefix(rec1[0], "a") || !strings.HasPrefix(rec1[1], "b") {
		t.Fatalf("TrimLeadingSpace rec1=%q", rec1)
	}
	ptr := &rec1[0]
	rec2, err := r.Read()
	if err != nil {
		t.Fatalf("Read second err: %v", err)
	}
	if want := []string{"VALUE", "DATA"}; !reflect.DeepEqual(rec2, want) {
		t.Fatalf("rec2=%v want=%v", rec2, want)
	}
	if ptr != &rec2[0] {
		t.Fatal("expected ReuseRecord to reuse backing storage")
	}
}

func TestReaderFieldsPerRecordErrors(t *testing.T) {
	r := csv.NewReader(strings.NewReader("onlyone\n"))
	r.FieldsPerRecord = 2
	_, err := r.Read()
	if err == nil {
		t.Fatal("expected error")
	}
	pe, ok := err.(*csv.ParseError)
	if !ok {
		t.Fatalf("want ParseError got %T", err)
	}
	if !errors.Is(pe.Err, csv.ErrFieldCount) {
		t.Fatalf("want ErrFieldCount got %v", pe.Err)
	}
	if !strings.Contains(pe.Error(), "wrong number of fields") {
		t.Fatalf("ParseError message %q", pe.Error())
	}
	if !errors.Is(pe, csv.ErrFieldCount) {
		t.Fatal("ParseError should unwrap to ErrFieldCount")
	}
	if pe.Unwrap() != csv.ErrFieldCount {
		t.Fatalf("ParseError.Unwrap=%v", pe.Unwrap())
	}

	peTrailing := &csv.ParseError{StartLine: 1, Line: 1, Column: 1, Err: csv.ErrTrailingComma}
	if !strings.Contains(peTrailing.Error(), "extra delimiter") {
		t.Fatalf("ParseError trailing message %q", peTrailing.Error())
	}
	if peTrailing.Unwrap() != csv.ErrTrailingComma {
		t.Fatalf("ParseError trailing unwrap=%v", peTrailing.Unwrap())
	}
}

func TestReaderLazyQuotesAndBareErrors(t *testing.T) {
	bare := csv.NewReader(strings.NewReader("a\"b\n"))
	_, err := bare.Read()
	if !errors.Is(err, csv.ErrBareQuote) {
		t.Fatalf("expected ErrBareQuote got %v", err)
	}

	lazy := csv.NewReader(strings.NewReader("a\"b,c\n"))
	lazy.LazyQuotes = true
	rec, err := lazy.Read()
	if err != nil {
		t.Fatalf("LazyQuotes err %v", err)
	}
	if want := []string{"a\"b", "c"}; !reflect.DeepEqual(rec, want) {
		t.Fatalf("LazyQuotes record=%v", rec)
	}

	missing := csv.NewReader(strings.NewReader("\"unterminated\n"))
	_, err = missing.Read()
	if !errors.Is(err, csv.ErrQuote) {
		t.Fatalf("expected ErrQuote got %v", err)
	}
}

func TestReaderReadAllWithCustomComma(t *testing.T) {
	data := "x;y\n1;2\n"
	r := csv.NewReader(strings.NewReader(data))
	r.Comma = ';'
	records, err := r.ReadAll()
	if err != nil {
		t.Fatalf("ReadAll err %v", err)
	}
	if want := [][]string{{"x", "y"}, {"1", "2"}}; !reflect.DeepEqual(records, want) {
		t.Fatalf("records=%v want=%v", records, want)
	}
}

func TestWriterBasicUsage(t *testing.T) {
	var buf bytes.Buffer
	w := csv.NewWriter(&buf)
	w.Comma = ';'
	w.UseCRLF = true
	if err := w.Write([]string{"a", "b"}); err != nil {
		t.Fatalf("Write err %v", err)
	}
	if err := w.WriteAll([][]string{{"c", "d"}}); err != nil {
		t.Fatalf("WriteAll err %v", err)
	}
	w.Flush()
	if err := w.Error(); err != nil {
		t.Fatalf("Writer error %v", err)
	}
	if got, want := buf.String(), "a;b\r\nc;d\r\n"; got != want {
		t.Fatalf("output=%q want=%q", got, want)
	}
}

func TestWriterErrorPropagation(t *testing.T) {
	fw := &failingWriter{failOn: 1, err: io.ErrClosedPipe}
	w := csv.NewWriter(fw)
	if err := w.Write([]string{"fail"}); err != nil {
		t.Fatalf("Write err %v", err)
	}
	w.Flush()
	if !errors.Is(w.Error(), io.ErrClosedPipe) {
		t.Fatalf("Writer.Error=%v", w.Error())
	}
}

type failingWriter struct {
	failOn int
	count  int
	err    error
}

func (f *failingWriter) Write(p []byte) (int, error) {
	f.count++
	if f.count >= f.failOn {
		return 0, f.err
	}
	return len(p), nil
}

func BenchmarkCSVRead(b *testing.B) {
	input := strings.Repeat("a,b,c\n", 256)
	for i := 0; i < b.N; i++ {
		r := csv.NewReader(strings.NewReader(input))
		for {
			if _, err := r.Read(); err != nil {
				if !errors.Is(err, io.EOF) {
					b.Fatalf("read err %v", err)
				}
				break
			}
		}
	}
}

func BenchmarkCSVWrite(b *testing.B) {
	record := []string{"alpha", "beta", "gamma"}
	for i := 0; i < b.N; i++ {
		var buf bytes.Buffer
		w := csv.NewWriter(&buf)
		for j := 0; j < 256; j++ {
			if err := w.Write(record); err != nil {
				b.Fatalf("write err %v", err)
			}
		}
		w.Flush()
	}
}
