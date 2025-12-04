//go:build !llgo

package zip_test

import (
	"archive/zip"
	"bytes"
	"errors"
	"hash/crc32"
	"io"
	"io/fs"
	"os"
	"path/filepath"
	"testing"
	"testing/fstest"
	"time"
)

type stubInfo struct {
	name    string
	size    int64
	mode    fs.FileMode
	modTime time.Time
	sys     any
}

func (s *stubInfo) Name() string       { return s.name }
func (s *stubInfo) Size() int64        { return s.size }
func (s *stubInfo) Mode() fs.FileMode  { return s.mode }
func (s *stubInfo) ModTime() time.Time { return s.modTime }
func (s *stubInfo) IsDir() bool        { return s.mode.IsDir() }
func (s *stubInfo) Sys() any           { return s.sys }

type passthroughWriteCloser struct {
	io.Writer
}

func (n passthroughWriteCloser) Write(p []byte) (int, error) {
	return n.Writer.Write(p)
}

func (passthroughWriteCloser) Close() error { return nil }

func passThroughCompressor(w io.Writer) (io.WriteCloser, error) {
	return passthroughWriteCloser{Writer: w}, nil
}

func passThroughDecompressor(r io.Reader) io.ReadCloser {
	return io.NopCloser(r)
}

var (
	_ zip.Compressor   = passThroughCompressor
	_ zip.Decompressor = passThroughDecompressor
)

func readAll(t *testing.T, r io.Reader) []byte {
	t.Helper()
	data, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll: %v", err)
	}
	return data
}

func findFile(t *testing.T, zr *zip.Reader, name string) *zip.File {
	t.Helper()
	for _, f := range zr.File {
		if f.Name == name {
			return f
		}
	}
	t.Fatalf("file %q not found", name)
	return nil
}

func TestFileHeaderHelpers(t *testing.T) {
	modTime := time.Date(2023, time.February, 1, 9, 30, 0, 0, time.UTC)
	original := &zip.FileHeader{}
	info := &stubInfo{
		name:    "file.txt",
		size:    64,
		mode:    0o640,
		modTime: modTime,
		sys:     original,
	}
	fh, err := zip.FileInfoHeader(info)
	if err != nil {
		t.Fatalf("FileInfoHeader: %v", err)
	}
	fh.SetModTime(modTime)
	fh.SetMode(fs.ModeDir | 0o755)
	if !fh.ModTime().Equal(modTime) {
		t.Fatalf("ModTime mismatch: got %v want %v", fh.ModTime(), modTime)
	}
	if mode := fh.Mode(); !mode.IsDir() || mode.Perm() != 0o755 {
		t.Fatalf("Mode mismatch: %v", mode)
	}
	fi := fh.FileInfo()
	if fi.Name() != "file.txt" {
		t.Fatalf("FileInfo name: %s", fi.Name())
	}
	if fi.Size() != info.size {
		t.Fatalf("FileInfo size: %d", fi.Size())
	}
	if !fi.ModTime().Equal(fh.ModTime()) {
		t.Fatalf("FileInfo ModTime mismatch: %v vs %v", fi.ModTime(), fh.ModTime())
	}
	if fi.Sys() != fh {
		t.Fatalf("FileInfo Sys should reference header")
	}
}

func TestZipWriterReaderFlow(t *testing.T) {
	const (
		globalMethod = 0xface
		writerMethod = 0xfeed
	)
	zip.RegisterCompressor(globalMethod, passThroughCompressor)
	zip.RegisterDecompressor(globalMethod, passThroughDecompressor)

	var buf bytes.Buffer
	zw := zip.NewWriter(&buf)
	if err := zw.SetComment("zip-comment"); err != nil {
		t.Fatalf("SetComment: %v", err)
	}
	zw.SetOffset(0)
	zw.RegisterCompressor(writerMethod, passThroughCompressor)
	t.Log("registered writer compressor")

	dataAlpha := []byte("alpha payload")
	alphaHeader := &zip.FileHeader{Name: "alpha.txt", Method: zip.Store}
	aw, err := zw.CreateHeader(alphaHeader)
	if err != nil {
		t.Fatalf("Create alpha: %v", err)
	}
	if _, err := aw.Write(dataAlpha); err != nil {
		t.Fatalf("Write alpha: %v", err)
	}
	t.Log("wrote alpha")

	modTime := time.Date(2024, time.April, 5, 6, 7, 0, 0, time.UTC)
	dataBeta := []byte("beta data")
	fh := &zip.FileHeader{Name: "beta.txt", Method: globalMethod}
	fh.SetModTime(modTime)
	fh.SetMode(0o600)
	bw, err := zw.CreateHeader(fh)
	if err != nil {
		t.Fatalf("CreateHeader beta: %v", err)
	}
	if _, err := bw.Write(dataBeta); err != nil {
		t.Fatalf("Write beta: %v", err)
	}

	dataGamma := []byte("gamma text")
	gammaHeader := &zip.FileHeader{Name: "gamma.txt", Method: writerMethod}
	gw, err := zw.CreateHeader(gammaHeader)
	if err != nil {
		t.Fatalf("CreateHeader gamma: %v", err)
	}
	if _, err := gw.Write(dataGamma); err != nil {
		t.Fatalf("Write gamma: %v", err)
	}

	dataDeflate := []byte("deflate body")
	deflateHeader := &zip.FileHeader{Name: "deflate.txt", Method: zip.Deflate}
	dw, err := zw.CreateHeader(deflateHeader)
	if err != nil {
		t.Fatalf("CreateHeader deflate: %v", err)
	}
	if _, err := dw.Write(dataDeflate); err != nil {
		t.Fatalf("Write deflate: %v", err)
	}

	rawData := []byte("raw")
	rawHeader := &zip.FileHeader{
		Name:               "raw.bin",
		Method:             zip.Store,
		CompressedSize64:   uint64(len(rawData)),
		UncompressedSize64: uint64(len(rawData)),
		CRC32:              crc32.ChecksumIEEE(rawData),
	}
	rw, err := zw.CreateRaw(rawHeader)
	if err != nil {
		t.Fatalf("CreateRaw: %v", err)
	}
	if _, err := rw.Write(rawData); err != nil {
		t.Fatalf("Write raw: %v", err)
	}

	fss := fstest.MapFS{
		"dir":           {Mode: fs.ModeDir | 0o755},
		"dir/inner.txt": {Data: []byte("inner"), Mode: 0o644},
	}
	if err := zw.AddFS(fss); err != nil {
		t.Fatalf("AddFS: %v", err)
	}
	if err := zw.Flush(); err != nil {
		t.Fatalf("Flush: %v", err)
	}
	if err := zw.Close(); err != nil {
		t.Fatalf("Close writer: %v", err)
	}
	t.Log("writer closed")

	zr, err := zip.NewReader(bytes.NewReader(buf.Bytes()), int64(buf.Len()))
	if err != nil {
		t.Fatalf("NewReader: %v", err)
	}
	t.Logf("reader files: %d", len(zr.File))
	if zr.Comment != "zip-comment" {
		t.Fatalf("reader comment mismatch: %q", zr.Comment)
	}

	dirFile, err := zr.Open("dir/inner.txt")
	if err != nil {
		t.Fatalf("Reader.Open: %v", err)
	}
	if got := readAll(t, dirFile); string(got) != "inner" {
		t.Fatalf("Reader.Open content: %q", got)
	}
	if err := dirFile.Close(); err != nil {
		t.Fatalf("dirFile.Close: %v", err)
	}

	alpha := findFile(t, zr, "alpha.txt")
	if _, err := alpha.DataOffset(); err != nil {
		t.Fatalf("DataOffset alpha: %v", err)
	}
	alphaRC, err := alpha.Open()
	if err != nil {
		t.Fatalf("alpha.Open: %v", err)
	}
	if got := readAll(t, alphaRC); !bytes.Equal(got, dataAlpha) {
		t.Fatalf("alpha content mismatch: %q", got)
	}
	if err := alphaRC.Close(); err != nil {
		t.Fatalf("alphaRC.Close: %v", err)
	}

	beta := findFile(t, zr, "beta.txt")
	if !beta.FileHeader.ModTime().Equal(modTime) {
		t.Fatalf("beta ModTime mismatch: %v", beta.FileHeader.ModTime())
	}
	betaRC, err := beta.Open()
	if err != nil {
		t.Fatalf("beta.Open: %v", err)
	}
	if got := readAll(t, betaRC); !bytes.Equal(got, dataBeta) {
		t.Fatalf("beta content mismatch: %q", got)
	}
	if err := betaRC.Close(); err != nil {
		t.Fatalf("betaRC.Close: %v", err)
	}

	deflateFile := findFile(t, zr, "deflate.txt")
	deflateRC, err := deflateFile.Open()
	if err != nil {
		t.Fatalf("deflate.Open: %v", err)
	}
	if got := readAll(t, deflateRC); !bytes.Equal(got, dataDeflate) {
		t.Fatalf("deflate content mismatch: %q", got)
	}
	if err := deflateRC.Close(); err != nil {
		t.Fatalf("deflateRC.Close: %v", err)
	}

	gamma := findFile(t, zr, "gamma.txt")
	if _, err := gamma.Open(); !errors.Is(err, zip.ErrAlgorithm) {
		t.Fatalf("expected ErrAlgorithm, got %v", err)
	}
	zr.RegisterDecompressor(writerMethod, passThroughDecompressor)
	gammaRC, err := gamma.Open()
	if err != nil {
		t.Fatalf("gamma.Open after register: %v", err)
	}
	if got := readAll(t, gammaRC); !bytes.Equal(got, dataGamma) {
		t.Fatalf("gamma content mismatch: %q", got)
	}
	if err := gammaRC.Close(); err != nil {
		t.Fatalf("gammaRC.Close: %v", err)
	}

	raw := findFile(t, zr, "raw.bin")
	rawReader, err := raw.OpenRaw()
	if err != nil {
		t.Fatalf("OpenRaw: %v", err)
	}
	if got := readAll(t, rawReader); !bytes.Equal(got, rawData) {
		t.Fatalf("raw content mismatch: %q", got)
	}

	var copyBuf bytes.Buffer
	zw2 := zip.NewWriter(&copyBuf)
	zw2.RegisterCompressor(writerMethod, passThroughCompressor)
	if err := zw2.Copy(gamma); err != nil {
		t.Fatalf("Copy: %v", err)
	}
	if err := zw2.Close(); err != nil {
		t.Fatalf("Close writer2: %v", err)
	}
	zr2, err := zip.NewReader(bytes.NewReader(copyBuf.Bytes()), int64(copyBuf.Len()))
	if err != nil {
		t.Fatalf("NewReader copy: %v", err)
	}
	zr2.RegisterDecompressor(writerMethod, passThroughDecompressor)
	copyFile := findFile(t, zr2, "gamma.txt")
	copyRC, err := copyFile.Open()
	if err != nil {
		t.Fatalf("copy.Open: %v", err)
	}
	if got := readAll(t, copyRC); !bytes.Equal(got, dataGamma) {
		t.Fatalf("copy content mismatch: %q", got)
	}
	if err := copyRC.Close(); err != nil {
		t.Fatalf("copyRC.Close: %v", err)
	}
}

func TestZipErrors(t *testing.T) {
	if _, err := zip.NewReader(bytes.NewReader([]byte("bad")), 3); !errors.Is(err, zip.ErrFormat) {
		t.Fatalf("expected ErrFormat, got %v", err)
	}

	var buf bytes.Buffer
	zw := zip.NewWriter(&buf)
	w, err := zw.CreateHeader(&zip.FileHeader{Name: "bad.txt", Method: zip.Store})
	if err != nil {
		t.Fatalf("CreateHeader: %v", err)
	}
	original := []byte("checksum")
	if _, err := w.Write(original); err != nil {
		t.Fatalf("Write: %v", err)
	}
	if err := zw.Close(); err != nil {
		t.Fatalf("Close writer: %v", err)
	}

	zr, err := zip.NewReader(bytes.NewReader(buf.Bytes()), int64(buf.Len()))
	if err != nil {
		t.Fatalf("NewReader good: %v", err)
	}
	badFile := findFile(t, zr, "bad.txt")
	offset, err := badFile.DataOffset()
	if err != nil {
		t.Fatalf("DataOffset: %v", err)
	}
	corrupt := make([]byte, buf.Len())
	copy(corrupt, buf.Bytes())
	corrupt[offset] ^= 0xff
	badReader, err := zip.NewReader(bytes.NewReader(corrupt), int64(len(corrupt)))
	if err != nil {
		t.Fatalf("NewReader corrupt: %v", err)
	}
	rc, err := findFile(t, badReader, "bad.txt").Open()
	if err == nil {
		_, err = io.ReadAll(rc)
		rc.Close()
	}
	if !errors.Is(err, zip.ErrChecksum) {
		t.Fatalf("expected ErrChecksum, got %v", err)
	}
}

func TestOpenReaderInsecurePath(t *testing.T) {
	t.Setenv("GODEBUG", "zipinsecurepath=0")
	var buf bytes.Buffer
	zw := zip.NewWriter(&buf)
	w, err := zw.Create("../escape")
	if err != nil {
		t.Fatalf("Create: %v", err)
	}
	if _, err := w.Write([]byte("data")); err != nil {
		t.Fatalf("Write: %v", err)
	}
	if err := zw.Close(); err != nil {
		t.Fatalf("Close: %v", err)
	}

	zipPath := filepath.Join(t.TempDir(), "insecure.zip")
	if err := os.WriteFile(zipPath, buf.Bytes(), 0o600); err != nil {
		t.Fatalf("WriteFile: %v", err)
	}
	rc, err := zip.OpenReader(zipPath)
	if !errors.Is(err, zip.ErrInsecurePath) {
		t.Fatalf("expected ErrInsecurePath, got %v", err)
	}
	if rc != nil {
		if cerr := rc.Close(); cerr != nil {
			t.Fatalf("ReadCloser.Close: %v", cerr)
		}
	}
}
