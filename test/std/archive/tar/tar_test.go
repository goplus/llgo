package tar_test

import (
	"archive/tar"
	"bytes"
	"errors"
	"io"
	"io/fs"
	"strings"
	"testing"
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

type stubInfoNames struct {
	*stubInfo
	uname string
	gname string
}

func (s *stubInfoNames) Uname() (string, error) { return s.uname, nil }
func (s *stubInfoNames) Gname() (string, error) { return s.gname, nil }

var _ tar.FileInfoNames = (*stubInfoNames)(nil)

type memEntry struct {
	name     string
	mode     fs.FileMode
	modTime  time.Time
	data     []byte
	children []string
}

type memFS struct {
	entries map[string]*memEntry
}

func newMemFS(fileData []byte) *memFS {
	entries := make(map[string]*memEntry)
	root := &memEntry{
		name:     ".",
		mode:     fs.ModeDir | 0o755,
		modTime:  time.Unix(3, 0),
		children: []string{"dir"},
	}
	dir := &memEntry{
		name:     "dir",
		mode:     fs.ModeDir | 0o755,
		modTime:  time.Unix(3, 0),
		children: []string{"dir/file.txt"},
	}
	file := &memEntry{
		name:    "dir/file.txt",
		mode:    0o644,
		modTime: time.Unix(4, 0),
		data:    append([]byte(nil), fileData...),
	}
	entries[root.name] = root
	entries[dir.name] = dir
	entries[file.name] = file
	return &memFS{entries: entries}
}

func (m *memFS) Open(name string) (fs.File, error) {
	if name == "" || name == "." {
		name = "."
	}
	entry, ok := m.entries[name]
	if !ok {
		return nil, &fs.PathError{Op: "open", Path: name, Err: fs.ErrNotExist}
	}
	if entry.mode.IsDir() {
		return &memDirFile{entry: entry, fs: m}, nil
	}
	return &memRegFile{Reader: bytes.NewReader(entry.data), entry: entry}, nil
}

func (m *memFS) ReadDir(name string) ([]fs.DirEntry, error) {
	if name == "" || name == "." {
		name = "."
	}
	entry, ok := m.entries[name]
	if !ok {
		return nil, &fs.PathError{Op: "readdir", Path: name, Err: fs.ErrNotExist}
	}
	if !entry.mode.IsDir() {
		return nil, &fs.PathError{Op: "readdir", Path: name, Err: errors.New("not a directory")}
	}
	entries := make([]fs.DirEntry, 0, len(entry.children))
	for _, child := range entry.children {
		entries = append(entries, memDirEntry{entry: m.entries[child]})
	}
	return entries, nil
}

type memFileInfo struct {
	entry *memEntry
}

func (m *memFileInfo) Name() string {
	return entryBase(m.entry.name)
}

func (m *memFileInfo) Size() int64 {
	if m.entry.mode.IsDir() {
		return 0
	}
	return int64(len(m.entry.data))
}

func (m *memFileInfo) Mode() fs.FileMode      { return m.entry.mode }
func (m *memFileInfo) ModTime() time.Time     { return m.entry.modTime }
func (m *memFileInfo) IsDir() bool            { return m.entry.mode.IsDir() }
func (m *memFileInfo) Sys() any               { return &tar.Header{Uname: "memU", Gname: "memG"} }
func (m *memFileInfo) Uname() (string, error) { return "memU", nil }
func (m *memFileInfo) Gname() (string, error) { return "memG", nil }

type memDirEntry struct {
	entry *memEntry
}

func (d memDirEntry) Name() string               { return entryBase(d.entry.name) }
func (d memDirEntry) IsDir() bool                { return d.entry.mode.IsDir() }
func (d memDirEntry) Type() fs.FileMode          { return d.entry.mode.Type() }
func (d memDirEntry) Info() (fs.FileInfo, error) { return &memFileInfo{entry: d.entry}, nil }

type memDirFile struct {
	entry *memEntry
	fs    *memFS
	pos   int
}

func (d *memDirFile) Close() error { return nil }

func (d *memDirFile) Read([]byte) (int, error) { return 0, io.EOF }

func (d *memDirFile) Stat() (fs.FileInfo, error) { return &memFileInfo{entry: d.entry}, nil }

func (d *memDirFile) ReadDir(n int) ([]fs.DirEntry, error) {
	children := d.entry.children
	if d.pos >= len(children) && n > 0 {
		return nil, io.EOF
	}
	var entries []fs.DirEntry
	if n <= 0 {
		for d.pos < len(children) {
			entries = append(entries, memDirEntry{entry: d.fs.entries[children[d.pos]]})
			d.pos++
		}
		if len(entries) == 0 {
			return nil, io.EOF
		}
		return entries, nil
	}
	limit := d.pos + n
	if limit > len(children) {
		limit = len(children)
	}
	for d.pos < limit {
		entries = append(entries, memDirEntry{entry: d.fs.entries[children[d.pos]]})
		d.pos++
	}
	if len(entries) == 0 {
		return nil, io.EOF
	}
	return entries, nil
}

type memRegFile struct {
	*bytes.Reader
	entry *memEntry
}

func (f *memRegFile) Close() error { return nil }

func (f *memRegFile) Stat() (fs.FileInfo, error) { return &memFileInfo{entry: f.entry}, nil }

func entryBase(name string) string {
	if name == "." {
		return "."
	}
	if idx := strings.LastIndex(name, "/"); idx >= 0 {
		return name[idx+1:]
	}
	return name
}

func TestWriterReaderRoundTrip(t *testing.T) {
	var buf bytes.Buffer
	tw := tar.NewWriter(&buf)

	dirHeader := &tar.Header{
		Name:     "assets/",
		Typeflag: tar.TypeDir,
		Mode:     0o755,
		ModTime:  time.Unix(1, 0),
		Format:   tar.FormatUSTAR,
	}
	if err := tw.WriteHeader(dirHeader); err != nil {
		t.Fatalf("WriteHeader dir: %v", err)
	}
	if err := tw.Flush(); err != nil {
		t.Fatalf("Flush dir: %v", err)
	}

	fileData := []byte("hello from tar")
	fileHeader := &tar.Header{
		Name:       "assets/file.txt",
		Typeflag:   tar.TypeReg,
		Mode:       0o644,
		Size:       int64(len(fileData)),
		ModTime:    time.Unix(2, 500_000_000),
		Format:     tar.FormatPAX,
		PAXRecords: map[string]string{"comment": "greeting"},
	}
	if err := tw.WriteHeader(fileHeader); err != nil {
		t.Fatalf("WriteHeader file: %v", err)
	}
	if _, err := tw.Write(fileData); err != nil {
		t.Fatalf("Write file data: %v", err)
	}
	if err := tw.Close(); err != nil {
		t.Fatalf("Close tar: %v", err)
	}

	tr := tar.NewReader(bytes.NewReader(buf.Bytes()))
	hdr, err := tr.Next()
	if err != nil {
		t.Fatalf("Next dir: %v", err)
	}
	if hdr.Typeflag != tar.TypeDir {
		t.Fatalf("dir typeflag mismatch: %v", hdr.Typeflag)
	}
	if !hdr.FileInfo().IsDir() {
		t.Fatalf("FileInfo for directory should report IsDir")
	}

	hdr, err = tr.Next()
	if err != nil {
		t.Fatalf("Next file: %v", err)
	}
	if !strings.Contains(hdr.Format.String(), "PAX") {
		t.Fatalf("expected PAX format string, got %q", hdr.Format.String())
	}
	info := hdr.FileInfo()
	if info.Name() != "file.txt" {
		t.Fatalf("FileInfo name mismatch: %s", info.Name())
	}
	bufRead := make([]byte, len(fileData))
	n, err := tr.Read(bufRead)
	if err != nil && !errors.Is(err, io.EOF) {
		t.Fatalf("Read data: %v", err)
	}
	if string(bufRead[:n]) != string(fileData) {
		t.Fatalf("Read data mismatch: %q", bufRead[:n])
	}
	n, err = tr.Read(make([]byte, 1))
	if !errors.Is(err, io.EOF) {
		t.Fatalf("expected EOF after file data, got n=%d err=%v", n, err)
	}
}

func TestFileInfoHeader(t *testing.T) {
	now := time.Unix(100, 0)
	base := &tar.Header{Uid: 7, Gid: 11, Uname: "sysU", Gname: "sysG", Typeflag: tar.TypeLink, Linkname: "hard"}
	cases := []struct {
		name     string
		mode     fs.FileMode
		size     int64
		link     string
		sys      any
		wantType byte
	}{
		{"regular", 0o640, 5, "", nil, tar.TypeReg},
		{"dir", fs.ModeDir | 0o755, 0, "", nil, tar.TypeDir},
		{"symlink", fs.ModeSymlink | 0o777, 0, "target", nil, tar.TypeSymlink},
		{"fifo", fs.ModeNamedPipe | 0o644, 0, "", nil, tar.TypeFifo},
		{"char", fs.ModeDevice | fs.ModeCharDevice, 0, "", nil, tar.TypeChar},
		{"block", fs.ModeDevice, 0, "", nil, tar.TypeBlock},
		{"hardlink", 0o640, 0, "", base, tar.TypeLink},
	}
	for _, tc := range cases {
		info := &stubInfoNames{
			stubInfo: &stubInfo{
				name:    tc.name,
				size:    tc.size,
				mode:    tc.mode,
				modTime: now,
				sys:     tc.sys,
			},
			uname: "user",
			gname: "group",
		}
		hdr, err := tar.FileInfoHeader(info, tc.link)
		if err != nil {
			t.Fatalf("FileInfoHeader(%s): %v", tc.name, err)
		}
		if hdr.Typeflag != tc.wantType {
			t.Fatalf("FileInfoHeader(%s) typeflag=%v want %v", tc.name, hdr.Typeflag, tc.wantType)
		}
		if hdr.Uname != "user" || hdr.Gname != "group" {
			t.Fatalf("FileInfoHeader(%s) uname/gname not honored", tc.name)
		}
		fi := hdr.FileInfo()
		if fi.Name() == "" {
			t.Fatalf("FileInfoHeader(%s) returned empty Name", tc.name)
		}
	}
}

func TestFormatString(t *testing.T) {
	cases := []struct {
		fmt  tar.Format
		want string
	}{
		{tar.FormatUnknown, "<unknown>"},
		{tar.FormatUSTAR, "USTAR"},
		{tar.FormatPAX, "PAX"},
		{tar.FormatGNU, "GNU"},
		{tar.FormatUSTAR | tar.FormatPAX, "(USTAR | PAX)"},
	}
	for _, tc := range cases {
		if got := tc.fmt.String(); got != tc.want {
			t.Fatalf("Format.String() got %q want %q", got, tc.want)
		}
	}
}

func TestTypeFlagConstants(t *testing.T) {
	flags := map[byte]string{
		tar.TypeReg:           "reg",
		tar.TypeRegA:          "rega",
		tar.TypeLink:          "link",
		tar.TypeSymlink:       "symlink",
		tar.TypeChar:          "char",
		tar.TypeBlock:         "block",
		tar.TypeDir:           "dir",
		tar.TypeFifo:          "fifo",
		tar.TypeCont:          "cont",
		tar.TypeXHeader:       "xheader",
		tar.TypeXGlobalHeader: "xglobal",
		tar.TypeGNUSparse:     "sparse",
		tar.TypeGNULongName:   "longname",
		tar.TypeGNULongLink:   "longlink",
	}
	if len(flags) != 14 {
		t.Fatalf("unexpected flag count: %d", len(flags))
	}
	if flags[tar.TypeReg] == flags[tar.TypeDir] {
		t.Fatal("flags should map distinct entries")
	}
}

func TestWriterErrors(t *testing.T) {
	var buf bytes.Buffer
	tw := tar.NewWriter(&buf)
	hdr := &tar.Header{Name: "file", Typeflag: tar.TypeReg, Mode: 0o600, Size: 1}
	if err := tw.WriteHeader(hdr); err != nil {
		t.Fatalf("WriteHeader: %v", err)
	}
	if _, err := tw.Write([]byte("ab")); !errors.Is(err, tar.ErrWriteTooLong) {
		t.Fatalf("expected ErrWriteTooLong, got %v", err)
	}
	if err := tw.Close(); err != nil {
		t.Fatalf("Close: %v", err)
	}
	if _, err := tw.Write([]byte("x")); !errors.Is(err, tar.ErrWriteAfterClose) {
		t.Fatalf("expected ErrWriteAfterClose, got %v", err)
	}

	var buf2 bytes.Buffer
	tw2 := tar.NewWriter(&buf2)
	large := strings.Repeat("a", 1<<20)
	header := &tar.Header{
		Name:       "big",
		Typeflag:   tar.TypeReg,
		Mode:       0o600,
		PAXRecords: map[string]string{"comment": large},
		Format:     tar.FormatPAX,
	}
	if err := tw2.WriteHeader(header); !errors.Is(err, tar.ErrFieldTooLong) {
		t.Fatalf("expected ErrFieldTooLong, got %v", err)
	}
}

func TestReaderInvalidHeader(t *testing.T) {
	garbage := bytes.Repeat([]byte{0x7f}, 512)
	r := tar.NewReader(bytes.NewReader(garbage))
	if _, err := r.Next(); !errors.Is(err, tar.ErrHeader) {
		t.Fatalf("expected ErrHeader, got %v", err)
	}
}

func TestReaderInsecurePath(t *testing.T) {
	t.Setenv("GODEBUG", "tarinsecurepath=0")
	content := []byte("ok")
	var buf bytes.Buffer
	tw := tar.NewWriter(&buf)
	hdr := &tar.Header{Name: "../escape", Typeflag: tar.TypeReg, Mode: 0o600, Size: int64(len(content))}
	if err := tw.WriteHeader(hdr); err != nil {
		t.Fatalf("WriteHeader insecure: %v", err)
	}
	if _, err := tw.Write(content); err != nil {
		t.Fatalf("Write content: %v", err)
	}
	if err := tw.Close(); err != nil {
		t.Fatalf("Close: %v", err)
	}

	r := tar.NewReader(bytes.NewReader(buf.Bytes()))
	hdr, err := r.Next()
	if err != nil && !errors.Is(err, tar.ErrInsecurePath) {
		t.Fatalf("expected ErrInsecurePath, got %v", err)
	}
	if hdr == nil {
		t.Fatalf("expected header, got nil")
	}
	if hdr.Name != "../escape" {
		t.Fatalf("unexpected header name: %s", hdr.Name)
	}
	data, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll: %v", err)
	}
	if string(data) != string(content) {
		t.Fatalf("content mismatch: %q", data)
	}
}

func TestWriterAddFS(t *testing.T) {
	dataBytes := []byte("data")
	fsys := newMemFS(dataBytes)
	var buf bytes.Buffer
	tw := tar.NewWriter(&buf)
	if err := tw.AddFS(fsys); err != nil {
		t.Fatalf("AddFS: %v", err)
	}
	if err := tw.Close(); err != nil {
		t.Fatalf("Close: %v", err)
	}

	r := tar.NewReader(bytes.NewReader(buf.Bytes()))
	seen := make(map[string]byte)
	for {
		hdr, err := r.Next()
		if errors.Is(err, io.EOF) {
			break
		}
		if err != nil {
			t.Fatalf("Next: %v", err)
		}
		seen[hdr.Name] = hdr.Typeflag
		if hdr.Typeflag == tar.TypeReg {
			data, err := io.ReadAll(r)
			if err != nil {
				t.Fatalf("ReadAll: %v", err)
			}
			if string(data) != string(dataBytes) {
				t.Fatalf("file content mismatch: %q", data)
			}
		}
	}
	if seen["dir/"] != tar.TypeDir {
		t.Fatalf("directory entry missing or wrong type: %v", seen["dir/"])
	}
	if seen["dir/file.txt"] != tar.TypeReg {
		t.Fatalf("file entry missing or wrong type: %v", seen["dir/file.txt"])
	}
}
