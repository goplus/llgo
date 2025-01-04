package main

import (
	"unicode/utf8"
)

type Reader interface {
	Read(p []byte) (n int, err error)
}

type Writer interface {
	Write(p []byte) (n int, err error)
}

type Closer interface {
	Close() error
}

type Seeker interface {
	Seek(offset int64, whence int) (int64, error)
}

type ReadWriter interface {
	Reader
	Writer
}

type ReadCloser interface {
	Reader
	Closer
}

type WriteCloser interface {
	Writer
	Closer
}

type ReadWriteCloser interface {
	Reader
	Writer
	Closer
}

type ReadSeeker interface {
	Reader
	Seeker
}

type ReadSeekCloser interface {
	Reader
	Seeker
	Closer
}

type WriteSeeker interface {
	Writer
	Seeker
}

type ReadWriteSeeker interface {
	Reader
	Writer
	Seeker
}

type ReaderFrom interface {
	ReadFrom(r Reader) (n int64, err error)
}

type WriterTo interface {
	WriteTo(w Writer) (n int64, err error)
}

type ReaderAt interface {
	ReadAt(p []byte, off int64) (n int, err error)
}

type WriterAt interface {
	WriteAt(p []byte, off int64) (n int, err error)
}

type ByteReader interface {
	ReadByte() (byte, error)
}

type ByteScanner interface {
	ByteReader
	UnreadByte() error
}

type ByteWriter interface {
	WriteByte(c byte) error
}

type RuneReader interface {
	ReadRune() (r rune, size int, err error)
}

type RuneScanner interface {
	RuneReader
	UnreadRune() error
}

type StringWriter interface {
	WriteString(s string) (n int, err error)
}

func WriteString(w Writer, s string) (n int, err error) {
	if sw, ok := w.(StringWriter); ok {
		return sw.WriteString(s)
	}
	return w.Write([]byte(s))
}

func NopCloser(r Reader) ReadCloser {
	if _, ok := r.(WriterTo); ok {
		return nopCloserWriterTo{r}
	}
	return nopCloser{r}
}

type nopCloser struct {
	Reader
}

func (nopCloser) Close() error { return nil }

type nopCloserWriterTo struct {
	Reader
}

func (nopCloserWriterTo) Close() error { return nil }

func (c nopCloserWriterTo) WriteTo(w Writer) (n int64, err error) {
	return c.Reader.(WriterTo).WriteTo(w)
}

func ReadAll(r Reader) ([]byte, error) {
	b := make([]byte, 0, 512)
	for {
		n, err := r.Read(b[len(b):cap(b)])
		b = b[:len(b)+n]
		if err != nil {
			if err == EOF {
				err = nil
			}
			return b, err
		}

		if len(b) == cap(b) {
			// Add more capacity (let append pick how much).
			b = append(b, 0)[:len(b)]
		}
	}
}

type stringReader struct {
	s        string
	i        int64 // current reading index
	prevRune int   // index of previous rune; or < 0
}

func (r *stringReader) Len() int {
	if r.i >= int64(len(r.s)) {
		return 0
	}
	return int(int64(len(r.s)) - r.i)
}

func (r *stringReader) Size() int64 { return int64(len(r.s)) }

func (r *stringReader) Read(b []byte) (n int, err error) {
	if r.i >= int64(len(r.s)) {
		return 0, EOF
	}
	r.prevRune = -1
	n = copy(b, r.s[r.i:])
	r.i += int64(n)
	return
}

func (r *stringReader) ReadAt(b []byte, off int64) (n int, err error) {
	if off < 0 {
		return 0, newError("stringsReader.ReadAt: negative offset")
	}
	if off >= int64(len(r.s)) {
		return 0, EOF
	}
	n = copy(b, r.s[off:])
	if n < len(b) {
		err = EOF
	}
	return
}

func (r *stringReader) ReadByte() (byte, error) {
	r.prevRune = -1
	if r.i >= int64(len(r.s)) {
		return 0, EOF
	}
	b := r.s[r.i]
	r.i++
	return b, nil
}

func (r *stringReader) UnreadByte() error {
	if r.i <= 0 {
		return newError("stringsReader.UnreadByte: at beginning of string")
	}
	r.prevRune = -1
	r.i--
	return nil
}

func (r *stringReader) ReadRune() (ch rune, size int, err error) {
	if r.i >= int64(len(r.s)) {
		r.prevRune = -1
		return 0, 0, EOF
	}
	r.prevRune = int(r.i)
	if c := r.s[r.i]; c < utf8.RuneSelf {
		r.i++
		return rune(c), 1, nil
	}
	ch, size = utf8.DecodeRuneInString(r.s[r.i:])
	r.i += int64(size)
	return
}

func (r *stringReader) UnreadRune() error {
	if r.i <= 0 {
		return newError("strings.Reader.UnreadRune: at beginning of string")
	}
	if r.prevRune < 0 {
		return newError("strings.Reader.UnreadRune: previous operation was not ReadRune")
	}
	r.i = int64(r.prevRune)
	r.prevRune = -1
	return nil
}

const (
	SeekStart   = 0 // seek relative to the origin of the file
	SeekCurrent = 1 // seek relative to the current offset
	SeekEnd     = 2 // seek relative to the end
)

func (r *stringReader) Seek(offset int64, whence int) (int64, error) {
	r.prevRune = -1
	var abs int64
	switch whence {
	case SeekStart:
		abs = offset
	case SeekCurrent:
		abs = r.i + offset
	case SeekEnd:
		abs = int64(len(r.s)) + offset
	default:
		return 0, newError("stringsReader.Seek: invalid whence")
	}
	if abs < 0 {
		return 0, newError("stringsReader.Seek: negative position")
	}
	r.i = abs
	return abs, nil
}

func (r *stringReader) WriteTo(w Writer) (n int64, err error) {
	r.prevRune = -1
	if r.i >= int64(len(r.s)) {
		return 0, nil
	}
	s := r.s[r.i:]
	m, err := WriteString(w, s)
	if m > len(s) {
		panic("stringsReader.WriteTo: invalid WriteString count")
	}
	r.i += int64(m)
	n = int64(m)
	if m != len(s) && err == nil {
		err = ErrShortWrite
	}
	return
}

func newError(text string) error {
	return &errorString{text}
}

type errorString struct {
	s string
}

func (e *errorString) Error() string {
	return e.s
}

var (
	EOF           = newError("EOF")
	ErrShortWrite = newError("short write")
)

func main() {
	r := &stringReader{s: "hello world"}
	data, err := ReadAll(r)
	println(string(data), err)
}
