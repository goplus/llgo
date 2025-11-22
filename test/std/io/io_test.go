//go:build !llgo

package io_test

import (
	"bytes"
	"errors"
	"fmt"
	"io"
	"strings"
	"testing"
	"time"
)

type staticWriterAt struct {
	buf []byte
}

func newStaticWriterAt(size int) *staticWriterAt {
	return &staticWriterAt{buf: make([]byte, size)}
}

func (s *staticWriterAt) WriteAt(p []byte, off int64) (int, error) {
	if int(off)+len(p) > len(s.buf) {
		return 0, io.ErrShortWrite
	}
	copy(s.buf[int(off):], p)
	return len(p), nil
}

func TestCopyAndCopyBuffer(t *testing.T) {
	src := strings.NewReader(strings.Repeat("goplus", 3))
	var dst bytes.Buffer
	n, err := io.Copy(&dst, src)
	if err != nil {
		t.Fatalf("Copy error: %v", err)
	}
	if got, want := n, int64(dst.Len()); got != want {
		t.Fatalf("Copy wrote %d bytes, want %d", got, want)
	}
	if !strings.Contains(dst.String(), "goplus") {
		t.Fatalf("Copy produced %q", dst.String())
	}

	buf := make([]byte, 4)
	src2 := strings.NewReader("hello world")
	dst.Reset()
	n, err = io.CopyBuffer(&dst, src2, buf)
	if err != nil {
		t.Fatalf("CopyBuffer error: %v", err)
	}
	if n != int64(len("hello world")) {
		t.Fatalf("CopyBuffer wrote %d", n)
	}
}

func TestCopyNAndReadHelpers(t *testing.T) {
	src := strings.NewReader("abcdefghij")
	var dst bytes.Buffer
	n, err := io.CopyN(&dst, src, 4)
	if err != nil || n != 4 {
		t.Fatalf("CopyN got (%d,%v)", n, err)
	}
	if dst.String() != "abcd" {
		t.Fatalf("CopyN result %q", dst.String())
	}

	src2 := strings.NewReader("short")
	dst.Reset()
	_, err = io.CopyN(&dst, src2, 10)
	if !errors.Is(err, io.EOF) {
		t.Fatalf("CopyN expected EOF, got %v", err)
	}

	data := strings.NewReader("read-all")
	all, err := io.ReadAll(data)
	if err != nil || string(all) != "read-all" {
		t.Fatalf("ReadAll = %q err=%v", all, err)
	}

	buf := make([]byte, 3)
	_, err = io.ReadAtLeast(strings.NewReader("abc"), buf, 2)
	if err != nil {
		t.Fatalf("ReadAtLeast unexpected error %v", err)
	}
	_, err = io.ReadAtLeast(strings.NewReader("xy"), buf[:2], 3)
	if !errors.Is(err, io.ErrShortBuffer) {
		t.Fatalf("ReadAtLeast expected ErrShortBuffer got %v", err)
	}
	fullEnough := make([]byte, 4)
	_, err = io.ReadAtLeast(strings.NewReader("zz"), fullEnough, 4)
	if !errors.Is(err, io.ErrUnexpectedEOF) {
		t.Fatalf("ReadAtLeast expected ErrUnexpectedEOF got %v", err)
	}

	fullBuf := make([]byte, 5)
	_, err = io.ReadFull(strings.NewReader("12345"), fullBuf)
	if err != nil || string(fullBuf) != "12345" {
		t.Fatalf("ReadFull=%q err=%v", fullBuf, err)
	}
	_, err = io.ReadFull(strings.NewReader("123"), make([]byte, 5))
	if !errors.Is(err, io.ErrUnexpectedEOF) {
		t.Fatalf("ReadFull expected ErrUnexpectedEOF got %v", err)
	}
}

func TestLimitReaderAndLimitedReader(t *testing.T) {
	base := strings.NewReader("abcdef")
	limited := io.LimitReader(base, 3)
	got, err := io.ReadAll(limited)
	if err != nil || string(got) != "abc" {
		t.Fatalf("LimitReader => %q err=%v", got, err)
	}

	lr := io.LimitedReader{R: strings.NewReader("12345"), N: 2}
	buf := make([]byte, 4)
	n, err := lr.Read(buf)
	if err != nil && !errors.Is(err, io.EOF) {
		t.Fatalf("LimitedReader read err %v", err)
	}
	if n != 2 || string(buf[:n]) != "12" {
		t.Fatalf("LimitedReader read %d %q", n, buf[:n])
	}
}

func TestMultiReaderAndTeeReader(t *testing.T) {
	mr := io.MultiReader(strings.NewReader("go"), strings.NewReader("+"), strings.NewReader("plus"))
	res, err := io.ReadAll(mr)
	if err != nil || string(res) != "go+plus" {
		t.Fatalf("MultiReader => %q err=%v", res, err)
	}

	var teeTarget bytes.Buffer
	teed := io.TeeReader(strings.NewReader("mirror"), &teeTarget)
	data, err := io.ReadAll(teed)
	if err != nil || string(data) != "mirror" {
		t.Fatalf("TeeReader read %q", data)
	}
	if teeTarget.String() != "mirror" {
		t.Fatalf("TeeReader duplicated %q", teeTarget.String())
	}
}

func TestMultiWriterAndWriteString(t *testing.T) {
	var a, b bytes.Buffer
	mw := io.MultiWriter(&a, &b, io.Discard)
	if _, err := mw.Write([]byte("hi")); err != nil {
		t.Fatalf("MultiWriter err %v", err)
	}
	if a.String() != "hi" || b.String() != "hi" {
		t.Fatalf("MultiWriter outputs %q %q", a.String(), b.String())
	}

	var buf bytes.Buffer
	n, err := io.WriteString(&buf, "string")
	if err != nil || n != len("string") || buf.String() != "string" {
		t.Fatalf("WriteString => %d %q err=%v", n, buf.String(), err)
	}

	var builder strings.Builder
	if sw, ok := interface{}(&builder).(io.StringWriter); !ok {
		t.Fatal("strings.Builder should implement io.StringWriter")
	} else {
		if _, err := sw.WriteString("builder"); err != nil {
			t.Fatalf("StringWriter err %v", err)
		}
	}
}

func TestPipeAndErrSentinels(t *testing.T) {
	r, w := io.Pipe()
	errCh := make(chan error, 2)
	go func() {
		_, err := io.WriteString(w, "piped")
		errCh <- err
		errCh <- w.Close()
	}()
	result, err := io.ReadAll(r)
	if err != nil || string(result) != "piped" {
		t.Fatalf("Pipe read %q err=%v", result, err)
	}
	if err := r.Close(); err != nil {
		t.Fatalf("PipeReader close err %v", err)
	}
	for i := 0; i < 2; i++ {
		if err := <-errCh; err != nil {
			t.Fatalf("pipe goroutine err %v", err)
		}
	}

	if !errors.Is(io.ErrShortWrite, io.ErrShortWrite) || !errors.Is(io.EOF, io.EOF) {
		t.Fatal("error sentinels should compare equal")
	}
	if !strings.Contains(io.ErrNoProgress.Error(), "no data") {
		t.Fatalf("ErrNoProgress message %q", io.ErrNoProgress)
	}

	closedR, closedW := io.Pipe()
	_ = closedR.Close()
	if _, err := io.WriteString(closedW, "x"); !errors.Is(err, io.ErrClosedPipe) {
		t.Fatalf("expected ErrClosedPipe got %v", err)
	}
}

func TestPipeWriterAndReaderCloseWithError(t *testing.T) {
	pr, pw := io.Pipe()
	readDone := make(chan error, 2)
	go func() {
		buf := make([]byte, 2)
		if n, err := pr.Read(buf); n != 2 || err != nil {
			readDone <- fmt.Errorf("first read n=%d err=%v", n, err)
		} else {
			readDone <- nil
		}
		_, err := pr.Read(buf)
		readDone <- err
	}()
	if _, err := pw.Write([]byte("hi")); err != nil {
		t.Fatalf("PipeWriter Write err %v", err)
	}
	if err := pr.CloseWithError(io.ErrClosedPipe); err != nil {
		t.Fatalf("PipeReader CloseWithError err %v", err)
	}
	if _, err := pw.Write([]byte("!")); !errors.Is(err, io.ErrClosedPipe) {
		t.Fatalf("PipeWriter Write after close err %v", err)
	}
	if err := pw.Close(); err != nil {
		t.Fatalf("PipeWriter close err %v", err)
	}
	if err := <-readDone; err != nil {
		t.Fatal(err)
	}
	if err := <-readDone; !errors.Is(err, io.ErrClosedPipe) {
		t.Fatalf("second read expected ErrClosedPipe got %v", err)
	}
}

func TestNopCloserAndReadSeekInterfaces(t *testing.T) {
	r := strings.NewReader("closer")
	nc := io.NopCloser(r)
	data, err := io.ReadAll(nc)
	if err != nil || string(data) != "closer" {
		t.Fatalf("NopCloser read %q err=%v", data, err)
	}
	if err := nc.Close(); err != nil {
		t.Fatalf("NopCloser close err %v", err)
	}

	if _, ok := interface{}(readSeekCloserWrapper{strings.NewReader("data")}).(io.ReadSeekCloser); !ok {
		t.Fatal("wrapper should satisfy ReadSeekCloser")
	}

	var _ io.ReadSeeker = strings.NewReader("rs")
	var _ io.Seeker = io.NewSectionReader(strings.NewReader("seek"), 0, 4)
	var _ io.ReadWriteCloser = pipeLike{}
	var _ io.ReadWriter = &bytes.Buffer{}
	var _ io.ReadWriteSeeker = newSectionSeeker()
	var _ io.WriterAt = newStaticWriterAt(0)
	var _ io.ReaderAt = io.NewSectionReader(strings.NewReader("abcd"), 0, 4)
	var _ io.WriterTo = &bytes.Buffer{}
	var _ io.ReaderFrom = &bytes.Buffer{}
	var _ io.ByteReader = bytes.NewReader([]byte("b"))
	var _ io.ByteScanner = bufioLike{}
	var _ io.ByteWriter = &byteRecorder{}
	var _ io.RuneReader = strings.NewReader("rune")
	var _ io.RuneScanner = bufioLike{}
	var _ io.WriteSeeker = writeSeekerStub{}
}

type pipeLike struct{}

func (p pipeLike) Read(b []byte) (int, error)  { return copy(b, "rw"), nil }
func (p pipeLike) Write(b []byte) (int, error) { return len(b), nil }
func (p pipeLike) Close() error                { return nil }

type byteRecorder struct{}

func (byteRecorder) WriteByte(c byte) error { return nil }

type bufioLike struct{}

func (bufioLike) ReadByte() (byte, error) { return 'x', nil }
func (bufioLike) UnreadByte() error       { return nil }
func (bufioLike) ReadRune() (rune, int, error) {
	return '好', 3, nil
}
func (bufioLike) UnreadRune() error { return nil }

type readSeekCloserWrapper struct {
	*strings.Reader
}

func (readSeekCloserWrapper) Close() error { return nil }

type writeSeekerStub struct{}

func (writeSeekerStub) Write(p []byte) (int, error) { return len(p), nil }
func (writeSeekerStub) Seek(offset int64, whence int) (int64, error) {
	return offset, nil
}

type sectionSeeker struct {
	*io.SectionReader
}

func newSectionSeeker() *sectionSeeker {
	return &sectionSeeker{io.NewSectionReader(strings.NewReader("abcdef"), 0, 6)}
}

func (s *sectionSeeker) Read(p []byte) (int, error)  { return s.SectionReader.Read(p) }
func (s *sectionSeeker) Write(p []byte) (int, error) { return len(p), nil }
func (s *sectionSeeker) Seek(offset int64, whence int) (int64, error) {
	return s.SectionReader.Seek(offset, whence)
}

func TestSectionReaderAndOffsetWriter(t *testing.T) {
	base := strings.NewReader("0123456789")
	section := io.NewSectionReader(base, 2, 5)
	buf := make([]byte, 5)
	n, err := section.Read(buf)
	if err != nil && !errors.Is(err, io.EOF) {
		t.Fatalf("SectionReader read err %v", err)
	}
	if n != 5 || string(buf) != "23456" {
		t.Fatalf("SectionReader read %d %q", n, buf)
	}

	if _, err := section.Seek(1, io.SeekStart); err != nil {
		t.Fatalf("SeekStart err %v", err)
	}
	if pos, err := section.Seek(-1, io.SeekCurrent); err != nil || pos != 0 {
		t.Fatalf("SeekCurrent pos=%d err=%v", pos, err)
	}
	if pos, err := section.Seek(0, io.SeekEnd); err != nil || pos != 5 {
		t.Fatalf("SeekEnd pos=%d err=%v", pos, err)
	}
	readBack := make([]byte, 3)
	if _, err := section.ReadAt(readBack, 1); err != nil && !errors.Is(err, io.EOF) {
		t.Fatalf("SectionReader ReadAt err %v", err)
	}
	if string(readBack) != "345" {
		t.Fatalf("SectionReader ReadAt got %q", readBack)
	}
	if section.Size() != 5 {
		t.Fatalf("SectionReader size=%d", section.Size())
	}
	if outer, off, n := section.Outer(); outer == nil || off != 2 || n != 5 {
		t.Fatalf("SectionReader Outer returned reader=%v off=%d n=%d", outer, off, n)
	}

	writer := newStaticWriterAt(16)
	offset := io.NewOffsetWriter(writer, 4)
	if _, err := offset.Write([]byte("DATA")); err != nil {
		t.Fatalf("OffsetWriter err %v", err)
	}
	if string(writer.buf[4:8]) != "DATA" {
		t.Fatalf("OffsetWriter wrote %q", writer.buf)
	}
	if _, err := offset.Seek(0, io.SeekStart); err != nil {
		t.Fatalf("OffsetWriter seek err %v", err)
	}
	if _, err := offset.WriteAt([]byte("++"), 1); err != nil {
		t.Fatalf("OffsetWriter WriteAt err %v", err)
	}
	if string(writer.buf[5:7]) != "++" {
		t.Fatalf("OffsetWriter WriteAt result %q", writer.buf[4:8])
	}
}

func TestDiscardAndInterfaces(t *testing.T) {
	if _, err := io.Discard.Write([]byte("ignored")); err != nil {
		t.Fatalf("Discard write err %v", err)
	}

	var deadlinePipe struct {
		r *io.PipeReader
		w *io.PipeWriter
	}
	deadlinePipe.r, deadlinePipe.w = io.Pipe()
	_ = deadlinePipe.w.CloseWithError(io.ErrClosedPipe)
	_ = deadlinePipe.r.Close()

	var _ io.Closer = io.NopCloser(strings.NewReader("c"))
	var _ io.ReadCloser = io.NopCloser(strings.NewReader("rc"))
	var _ io.WriteCloser = closeWriter{}
}

type closeWriter struct{}

func (closeWriter) Write(p []byte) (int, error) { return len(p), nil }
func (closeWriter) Close() error                { return nil }

func TestReaderFromAndWriterToInteractions(t *testing.T) {
	r := strings.NewReader(strings.Repeat("abc", 3))
	var buf bytes.Buffer
	if wt, ok := interface{}(&buf).(io.WriterTo); !ok {
		t.Fatal("bytes.Buffer should implement WriterTo")
	} else {
		if _, err := wt.WriteTo(io.Discard); err != nil {
			t.Fatalf("WriterTo err %v", err)
		}
	}
	if rf, ok := interface{}(&buf).(io.ReaderFrom); !ok {
		t.Fatal("bytes.Buffer should implement ReaderFrom")
	} else {
		if _, err := rf.ReadFrom(r); err != nil {
			t.Fatalf("ReaderFrom err %v", err)
		}
	}
	if buf.String() != "abcabcabc" {
		t.Fatalf("ReaderFrom copied %q", buf.String())
	}
}

func TestReaderInterfaceBasic(t *testing.T) {
	var reader io.Reader = strings.NewReader("reader")
	buf := make([]byte, 3)
	if n, err := reader.Read(buf); n == 0 || (err != nil && !errors.Is(err, io.EOF)) {
		t.Fatalf("Reader.Read n=%d err=%v", n, err)
	}
}

func TestStringReaderRuneScanner(t *testing.T) {
	s := strings.NewReader("héllo")
	r, size, err := s.ReadRune()
	if err != nil || r != 'h' || size != 1 {
		t.Fatalf("ReadRune first=%q size=%d err=%v", r, size, err)
	}
	if err := s.UnreadRune(); err != nil {
		t.Fatalf("UnreadRune err %v", err)
	}
	r, size, err = s.ReadRune()
	if err != nil || r != 'h' || size != 1 {
		t.Fatalf("ReadRune after unread=%q size=%d err=%v", r, size, err)
	}
}

func TestDeadlineLikePipe(t *testing.T) {
	r, w := io.Pipe()
	errCh := make(chan error, 1)
	go func() {
		time.Sleep(5 * time.Millisecond)
		errCh <- w.CloseWithError(io.ErrClosedPipe)
	}()
	buf := make([]byte, 8)
	_, err := r.Read(buf)
	if !errors.Is(err, io.ErrClosedPipe) {
		t.Fatalf("Pipe read expected ErrClosedPipe got %v", err)
	}
	if err := <-errCh; err != nil {
		t.Fatalf("CloseWithError err %v", err)
	}
}
