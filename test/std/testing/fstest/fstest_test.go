package fstest_test

import (
	"errors"
	"io"
	"io/fs"
	"testing"
	"testing/fstest"
	"time"
)

func TestMapFSBasic(t *testing.T) {
	mfs := fstest.MapFS{
		"hello.txt": {
			Data: []byte("hello world"),
		},
		"dir/file.txt": {
			Data: []byte("content"),
		},
	}

	// Test Open and Read
	f, err := mfs.Open("hello.txt")
	if err != nil {
		t.Fatalf("Open failed: %v", err)
	}
	defer f.Close()

	data := make([]byte, 100)
	n, err := f.Read(data)
	if err != nil && !errors.Is(err, io.EOF) {
		t.Fatalf("Read failed: %v", err)
	}
	if string(data[:n]) != "hello world" {
		t.Fatalf("Read got %q, want %q", data[:n], "hello world")
	}

	// Test Stat
	info, err := f.Stat()
	if err != nil {
		t.Fatalf("Stat failed: %v", err)
	}
	if info.Name() != "hello.txt" {
		t.Fatalf("Name got %q", info.Name())
	}
	if info.Size() != 11 {
		t.Fatalf("Size got %d", info.Size())
	}
	if info.IsDir() {
		t.Fatal("IsDir should be false")
	}
}

func TestMapFSReadFile(t *testing.T) {
	mfs := fstest.MapFS{
		"data.txt": {
			Data: []byte("test data"),
		},
	}

	data, err := mfs.ReadFile("data.txt")
	if err != nil {
		t.Fatalf("ReadFile failed: %v", err)
	}
	if string(data) != "test data" {
		t.Fatalf("ReadFile got %q", data)
	}

	// Test non-existent file
	_, err = mfs.ReadFile("notexist.txt")
	if err == nil {
		t.Fatal("ReadFile should fail for non-existent file")
	}
}

func TestMapFSReadDir(t *testing.T) {
	mfs := fstest.MapFS{
		"a.txt":            {Data: []byte("a")},
		"b.txt":            {Data: []byte("b")},
		"dir/c.txt":        {Data: []byte("c")},
		"dir/subdir/d.txt": {Data: []byte("d")},
	}

	// Read root directory
	entries, err := mfs.ReadDir(".")
	if err != nil {
		t.Fatalf("ReadDir failed: %v", err)
	}
	if len(entries) != 3 { // a.txt, b.txt, dir
		t.Fatalf("ReadDir got %d entries, want 3", len(entries))
	}

	// Read subdirectory
	entries, err = mfs.ReadDir("dir")
	if err != nil {
		t.Fatalf("ReadDir dir failed: %v", err)
	}
	if len(entries) != 2 { // c.txt, subdir
		t.Fatalf("ReadDir dir got %d entries, want 2", len(entries))
	}

	// Check entry properties
	found := false
	for _, e := range entries {
		if e.Name() == "c.txt" {
			found = true
			if e.IsDir() {
				t.Fatal("c.txt should not be a directory")
			}
		}
	}
	if !found {
		t.Fatal("c.txt not found in dir entries")
	}
}

func TestMapFSGlob(t *testing.T) {
	mfs := fstest.MapFS{
		"file1.txt":     {Data: []byte("1")},
		"file2.txt":     {Data: []byte("2")},
		"data.log":      {Data: []byte("log")},
		"dir/file3.txt": {Data: []byte("3")},
	}

	matches, err := mfs.Glob("*.txt")
	if err != nil {
		t.Fatalf("Glob failed: %v", err)
	}
	if len(matches) != 2 {
		t.Fatalf("Glob *.txt got %d matches, want 2", len(matches))
	}

	matches, err = mfs.Glob("dir/*.txt")
	if err != nil {
		t.Fatalf("Glob dir/*.txt failed: %v", err)
	}
	if len(matches) != 1 || matches[0] != "dir/file3.txt" {
		t.Fatalf("Glob dir/*.txt got %v", matches)
	}
}

func TestMapFSSub(t *testing.T) {
	mfs := fstest.MapFS{
		"root.txt":               {Data: []byte("root")},
		"subdir/file.txt":        {Data: []byte("sub")},
		"subdir/nested/deep.txt": {Data: []byte("deep")},
	}

	subFS, err := mfs.Sub("subdir")
	if err != nil {
		t.Fatalf("Sub failed: %v", err)
	}

	// Read file from sub filesystem
	data, err := fs.ReadFile(subFS, "file.txt")
	if err != nil {
		t.Fatalf("ReadFile from sub failed: %v", err)
	}
	if string(data) != "sub" {
		t.Fatalf("Sub ReadFile got %q", data)
	}

	// Read nested file
	data, err = fs.ReadFile(subFS, "nested/deep.txt")
	if err != nil {
		t.Fatalf("ReadFile nested from sub failed: %v", err)
	}
	if string(data) != "deep" {
		t.Fatalf("Sub ReadFile nested got %q", data)
	}

	// Root file should not be accessible
	_, err = fs.ReadFile(subFS, "root.txt")
	if err == nil {
		t.Fatal("Should not be able to read root.txt from subFS")
	}
}

func TestMapFSWithModeAndModTime(t *testing.T) {
	modTime := time.Date(2024, 1, 1, 0, 0, 0, 0, time.UTC)
	mfs := fstest.MapFS{
		"file.txt": {
			Data:    []byte("content"),
			Mode:    0644,
			ModTime: modTime,
		},
		"executable": {
			Data: []byte("#!/bin/sh"),
			Mode: 0755,
		},
		"emptydir": {
			Mode: fs.ModeDir | 0755,
		},
	}

	// Check file mode and modtime
	info, err := mfs.Stat("file.txt")
	if err != nil {
		t.Fatalf("Stat failed: %v", err)
	}
	if info.Mode()&0777 != 0644 {
		t.Fatalf("Mode got %o, want 0644", info.Mode()&0777)
	}
	if !info.ModTime().Equal(modTime) {
		t.Fatalf("ModTime got %v, want %v", info.ModTime(), modTime)
	}

	// Check executable mode
	info, err = mfs.Stat("executable")
	if err != nil {
		t.Fatalf("Stat executable failed: %v", err)
	}
	if info.Mode()&0777 != 0755 {
		t.Fatalf("Executable mode got %o", info.Mode()&0777)
	}

	// Check directory
	info, err = mfs.Stat("emptydir")
	if err != nil {
		t.Fatalf("Stat emptydir failed: %v", err)
	}
	if !info.IsDir() {
		t.Fatal("emptydir should be a directory")
	}
}

func TestMapFSSysField(t *testing.T) {
	type customSys struct {
		ID int
	}

	mfs := fstest.MapFS{
		"file.txt": {
			Data: []byte("data"),
			Sys:  &customSys{ID: 42},
		},
	}

	info, err := mfs.Stat("file.txt")
	if err != nil {
		t.Fatalf("Stat failed: %v", err)
	}

	if sys, ok := info.Sys().(*customSys); !ok || sys.ID != 42 {
		t.Fatalf("Sys field not preserved correctly: %v", info.Sys())
	}
}

func TestMapFSErrors(t *testing.T) {
	mfs := fstest.MapFS{
		"exists.txt": {Data: []byte("data")},
	}

	// Test opening non-existent file
	_, err := mfs.Open("notexist.txt")
	if err == nil {
		t.Fatal("Open should fail for non-existent file")
	}
	if !errors.Is(err, fs.ErrNotExist) {
		t.Fatalf("Expected ErrNotExist, got %v", err)
	}

	// Test invalid paths
	_, err = mfs.Open("../outside")
	if err == nil {
		t.Fatal("Open should fail for invalid path")
	}

	// Test reading directory that doesn't exist
	_, err = mfs.ReadDir("nodir")
	if err == nil {
		t.Fatal("ReadDir should fail for non-existent directory")
	}
}

func TestFSWithTestFS(t *testing.T) {
	mfs := fstest.MapFS{
		"file1.txt":     {Data: []byte("content1")},
		"file2.txt":     {Data: []byte("content2")},
		"dir/file3.txt": {Data: []byte("content3")},
	}

	// Test that FS is valid
	err := fstest.TestFS(mfs, "file1.txt", "file2.txt", "dir/file3.txt")
	if err != nil {
		t.Fatalf("TestFS failed: %v", err)
	}
}

func TestTestFSWithEmpty(t *testing.T) {
	mfs := fstest.MapFS{}

	// Empty FS should pass when no files expected
	err := fstest.TestFS(mfs)
	if err != nil {
		t.Fatalf("TestFS on empty FS failed: %v", err)
	}
}

func TestTestFSMissingExpected(t *testing.T) {
	mfs := fstest.MapFS{
		"exists.txt": {Data: []byte("data")},
	}

	// Should fail if expected file is missing
	err := fstest.TestFS(mfs, "missing.txt")
	if err == nil {
		t.Fatal("TestFS should fail when expected file is missing")
	}
}

func TestMapFSOpenDirectory(t *testing.T) {
	mfs := fstest.MapFS{
		"dir/file.txt": {Data: []byte("content")},
	}

	// Open synthesized directory
	f, err := mfs.Open("dir")
	if err != nil {
		t.Fatalf("Open dir failed: %v", err)
	}
	defer f.Close()

	info, err := f.Stat()
	if err != nil {
		t.Fatalf("Stat dir failed: %v", err)
	}
	if !info.IsDir() {
		t.Fatal("dir should be a directory")
	}

	// Read directory
	dirFile, ok := f.(fs.ReadDirFile)
	if !ok {
		t.Fatal("Directory file should implement ReadDirFile")
	}

	entries, err := dirFile.ReadDir(-1)
	if err != nil {
		t.Fatalf("ReadDir failed: %v", err)
	}
	if len(entries) != 1 || entries[0].Name() != "file.txt" {
		t.Fatalf("ReadDir entries: %v", entries)
	}
}

func TestMapFSRootDirectory(t *testing.T) {
	mfs := fstest.MapFS{
		"a.txt": {Data: []byte("a")},
		"b.txt": {Data: []byte("b")},
	}

	// Open root directory
	f, err := mfs.Open(".")
	if err != nil {
		t.Fatalf("Open root failed: %v", err)
	}
	defer f.Close()

	info, err := f.Stat()
	if err != nil {
		t.Fatalf("Stat root failed: %v", err)
	}
	if !info.IsDir() {
		t.Fatal("Root should be a directory")
	}
	if info.Name() != "." {
		t.Fatalf("Root name got %q", info.Name())
	}
}

func TestMapFSSeek(t *testing.T) {
	mfs := fstest.MapFS{
		"data.txt": {Data: []byte("0123456789")},
	}

	f, err := mfs.Open("data.txt")
	if err != nil {
		t.Fatalf("Open failed: %v", err)
	}
	defer f.Close()

	seeker, ok := f.(io.Seeker)
	if !ok {
		t.Fatal("File should implement Seeker")
	}

	// Seek to position 5
	pos, err := seeker.Seek(5, io.SeekStart)
	if err != nil || pos != 5 {
		t.Fatalf("Seek failed: pos=%d err=%v", pos, err)
	}

	buf := make([]byte, 3)
	n, err := f.Read(buf)
	if err != nil || n != 3 || string(buf) != "567" {
		t.Fatalf("Read after seek got %q", buf)
	}

	// Seek relative
	pos, err = seeker.Seek(-2, io.SeekCurrent)
	if err != nil || pos != 6 {
		t.Fatalf("SeekCurrent failed: pos=%d err=%v", pos, err)
	}

	// Seek from end
	pos, err = seeker.Seek(-3, io.SeekEnd)
	if err != nil || pos != 7 {
		t.Fatalf("SeekEnd failed: pos=%d err=%v", pos, err)
	}

	n, err = f.Read(buf)
	if err != nil && !errors.Is(err, io.EOF) {
		t.Fatalf("Read after SeekEnd failed: %v", err)
	}
	if string(buf[:n]) != "789" {
		t.Fatalf("Read after SeekEnd got %q", buf[:n])
	}
}

func TestMapFSStatRoot(t *testing.T) {
	mfs := fstest.MapFS{
		"file.txt": {Data: []byte("data")},
	}

	info, err := mfs.Stat(".")
	if err != nil {
		t.Fatalf("Stat root failed: %v", err)
	}
	if !info.IsDir() {
		t.Fatal("Root should be directory")
	}
}

func TestMapFSMultipleReads(t *testing.T) {
	mfs := fstest.MapFS{
		"data.txt": {Data: []byte("hello")},
	}

	f, err := mfs.Open("data.txt")
	if err != nil {
		t.Fatalf("Open failed: %v", err)
	}
	defer f.Close()

	// First read
	buf1 := make([]byte, 2)
	n, err := f.Read(buf1)
	if err != nil || n != 2 || string(buf1) != "he" {
		t.Fatalf("First read got %q", buf1)
	}

	// Second read
	buf2 := make([]byte, 3)
	n, err = f.Read(buf2)
	if (err != nil && !errors.Is(err, io.EOF)) || n != 3 || string(buf2) != "llo" {
		t.Fatalf("Second read got %q", buf2)
	}

	// Third read should return EOF
	buf3 := make([]byte, 1)
	n, err = f.Read(buf3)
	if !errors.Is(err, io.EOF) || n != 0 {
		t.Fatalf("Third read should return EOF: n=%d err=%v", n, err)
	}
}

func TestMapFileStruct(t *testing.T) {
	// Test MapFile struct directly
	modTime := time.Date(2024, 6, 1, 12, 0, 0, 0, time.UTC)
	mapFile := &fstest.MapFile{
		Data:    []byte("file content"),
		Mode:    0755,
		ModTime: modTime,
		Sys:     "custom sys data",
	}

	if string(mapFile.Data) != "file content" {
		t.Fatalf("MapFile.Data got %q", mapFile.Data)
	}
	if mapFile.Mode != 0755 {
		t.Fatalf("MapFile.Mode got %o", mapFile.Mode)
	}
	if !mapFile.ModTime.Equal(modTime) {
		t.Fatalf("MapFile.ModTime got %v", mapFile.ModTime)
	}
	if mapFile.Sys != "custom sys data" {
		t.Fatalf("MapFile.Sys got %v", mapFile.Sys)
	}

	// Test MapFile with zero values
	zeroFile := &fstest.MapFile{}
	if zeroFile.Data != nil {
		t.Fatal("Zero MapFile.Data should be nil")
	}
	if zeroFile.Mode != 0 {
		t.Fatal("Zero MapFile.Mode should be 0")
	}
	if !zeroFile.ModTime.IsZero() {
		t.Fatal("Zero MapFile.ModTime should be zero time")
	}
}
