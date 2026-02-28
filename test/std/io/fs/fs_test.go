package fs_test

import (
	"errors"
	"io/fs"
	"testing"
	"testing/fstest"
)

func TestValidPath(t *testing.T) {
	tests := []struct {
		path  string
		valid bool
	}{
		{".", true},
		{"a/b", true},
		{"a/b/c", true},
		{".git", true},
		{"", false},
		{"..", false},
		{"../", false},
		{"a/..", false},
		{"/a", false},
		{"a/", false},
	}

	for _, tt := range tests {
		got := fs.ValidPath(tt.path)
		if got != tt.valid {
			t.Errorf("ValidPath(%q) = %v, want %v", tt.path, got, tt.valid)
		}
	}
}

func TestGlob(t *testing.T) {
	fsys := fstest.MapFS{
		"a.txt":     {Data: []byte("a")},
		"b.txt":     {Data: []byte("b")},
		"c.go":      {Data: []byte("c")},
		"dir/d.txt": {Data: []byte("d")},
	}

	tests := []struct {
		pattern string
		matches []string
	}{
		{"*.txt", []string{"a.txt", "b.txt"}},
		{"*.go", []string{"c.go"}},
		{"dir/*.txt", []string{"dir/d.txt"}},
		{"*", []string{"a.txt", "b.txt", "c.go", "dir"}},
	}

	for _, tt := range tests {
		matches, err := fs.Glob(fsys, tt.pattern)
		if err != nil {
			t.Errorf("Glob(%q) error: %v", tt.pattern, err)
			continue
		}
		if len(matches) != len(tt.matches) {
			t.Errorf("Glob(%q) = %v, want %v", tt.pattern, matches, tt.matches)
			continue
		}
		for i, m := range matches {
			if m != tt.matches[i] {
				t.Errorf("Glob(%q)[%d] = %q, want %q", tt.pattern, i, m, tt.matches[i])
			}
		}
	}
}

func TestReadFile(t *testing.T) {
	fsys := fstest.MapFS{
		"test.txt": {Data: []byte("hello world")},
	}

	data, err := fs.ReadFile(fsys, "test.txt")
	if err != nil {
		t.Fatalf("ReadFile error: %v", err)
	}
	if string(data) != "hello world" {
		t.Errorf("ReadFile = %q, want %q", data, "hello world")
	}

	_, err = fs.ReadFile(fsys, "nonexistent.txt")
	if err == nil {
		t.Error("ReadFile nonexistent should error")
	}
}

func TestReadDir(t *testing.T) {
	fsys := fstest.MapFS{
		"a.txt":     {Data: []byte("a")},
		"b.txt":     {Data: []byte("b")},
		"dir/c.txt": {Data: []byte("c")},
	}

	entries, err := fs.ReadDir(fsys, ".")
	if err != nil {
		t.Fatalf("ReadDir error: %v", err)
	}
	if len(entries) != 3 {
		t.Errorf("ReadDir len = %d, want 3", len(entries))
	}

	for _, entry := range entries {
		name := entry.Name()
		if name != "a.txt" && name != "b.txt" && name != "dir" {
			t.Errorf("unexpected entry: %s", name)
		}
	}
}

func TestStat(t *testing.T) {
	fsys := fstest.MapFS{
		"test.txt": {Data: []byte("hello")},
	}

	info, err := fs.Stat(fsys, "test.txt")
	if err != nil {
		t.Fatalf("Stat error: %v", err)
	}
	if info.Name() != "test.txt" {
		t.Errorf("Stat Name = %q, want %q", info.Name(), "test.txt")
	}
	if info.Size() != 5 {
		t.Errorf("Stat Size = %d, want 5", info.Size())
	}
}

func TestSub(t *testing.T) {
	fsys := fstest.MapFS{
		"dir/a.txt": {Data: []byte("a")},
		"dir/b.txt": {Data: []byte("b")},
	}

	sub, err := fs.Sub(fsys, "dir")
	if err != nil {
		t.Fatalf("Sub error: %v", err)
	}

	data, err := fs.ReadFile(sub, "a.txt")
	if err != nil {
		t.Fatalf("ReadFile from sub error: %v", err)
	}
	if string(data) != "a" {
		t.Errorf("ReadFile from sub = %q, want %q", data, "a")
	}
}

func TestWalkDir(t *testing.T) {
	fsys := fstest.MapFS{
		"a.txt":         {Data: []byte("a")},
		"dir/b.txt":     {Data: []byte("b")},
		"dir/sub/c.txt": {Data: []byte("c")},
	}

	var paths []string
	err := fs.WalkDir(fsys, ".", func(path string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		paths = append(paths, path)
		return nil
	})
	if err != nil {
		t.Fatalf("WalkDir error: %v", err)
	}

	expected := []string{".", "a.txt", "dir", "dir/b.txt", "dir/sub", "dir/sub/c.txt"}
	if len(paths) != len(expected) {
		t.Errorf("WalkDir found %d paths, want %d", len(paths), len(expected))
	}
}

func TestWalkDirSkipDir(t *testing.T) {
	fsys := fstest.MapFS{
		"a.txt":         {Data: []byte("a")},
		"dir/b.txt":     {Data: []byte("b")},
		"dir/sub/c.txt": {Data: []byte("c")},
	}

	var paths []string
	err := fs.WalkDir(fsys, ".", func(path string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		paths = append(paths, path)
		if d.IsDir() && d.Name() == "dir" {
			return fs.SkipDir
		}
		return nil
	})
	if err != nil {
		t.Fatalf("WalkDir error: %v", err)
	}

	for _, p := range paths {
		if p == "dir/b.txt" || p == "dir/sub" {
			t.Errorf("WalkDir should skip %q", p)
		}
	}
}

func TestFileInfoToDirEntry(t *testing.T) {
	fsys := fstest.MapFS{
		"test.txt": {Data: []byte("hello")},
	}

	info, err := fs.Stat(fsys, "test.txt")
	if err != nil {
		t.Fatalf("Stat error: %v", err)
	}

	entry := fs.FileInfoToDirEntry(info)
	if entry.Name() != info.Name() {
		t.Errorf("FileInfoToDirEntry Name = %q, want %q", entry.Name(), info.Name())
	}
	if entry.IsDir() != info.IsDir() {
		t.Errorf("FileInfoToDirEntry IsDir = %v, want %v", entry.IsDir(), info.IsDir())
	}
}

func TestFormatFileInfo(t *testing.T) {
	fsys := fstest.MapFS{
		"test.txt": {Data: []byte("hello")},
	}

	info, err := fs.Stat(fsys, "test.txt")
	if err != nil {
		t.Fatalf("Stat error: %v", err)
	}

	formatted := fs.FormatFileInfo(info)
	if formatted == "" {
		t.Error("FormatFileInfo returned empty string")
	}
}

func TestFormatDirEntry(t *testing.T) {
	fsys := fstest.MapFS{
		"test.txt": {Data: []byte("hello")},
	}

	entries, err := fs.ReadDir(fsys, ".")
	if err != nil {
		t.Fatalf("ReadDir error: %v", err)
	}
	if len(entries) == 0 {
		t.Fatal("ReadDir returned no entries")
	}

	formatted := fs.FormatDirEntry(entries[0])
	if formatted == "" {
		t.Error("FormatDirEntry returned empty string")
	}
}

func TestPathError(t *testing.T) {
	err := &fs.PathError{
		Op:   "open",
		Path: "/test",
		Err:  errors.New("test error"),
	}

	errStr := err.Error()
	if errStr == "" {
		t.Error("PathError.Error() returned empty string")
	}
}

func TestFileMode(t *testing.T) {
	tests := []struct {
		mode  fs.FileMode
		isDir bool
	}{
		{fs.ModeDir, true},
		{0, false},
		{fs.ModeDir | 0755, true},
	}

	for _, tt := range tests {
		if tt.mode.IsDir() != tt.isDir {
			t.Errorf("FileMode(%v).IsDir() = %v, want %v", tt.mode, tt.mode.IsDir(), tt.isDir)
		}
	}
}

func TestErrors(t *testing.T) {
	if fs.ErrInvalid == nil {
		t.Error("ErrInvalid should not be nil")
	}
	if fs.SkipDir == nil {
		t.Error("SkipDir should not be nil")
	}
	if fs.SkipAll == nil {
		t.Error("SkipAll should not be nil")
	}
	if fs.ErrClosed == nil {
		t.Error("ErrClosed should not be nil")
	}
	if fs.ErrExist == nil {
		t.Error("ErrExist should not be nil")
	}
	if fs.ErrNotExist == nil {
		t.Error("ErrNotExist should not be nil")
	}
	if fs.ErrPermission == nil {
		t.Error("ErrPermission should not be nil")
	}
}

func TestInterfaces(t *testing.T) {
	fsys := fstest.MapFS{
		"test.txt": {Data: []byte("hello")},
	}

	var _ fs.FS = fsys
	var _ fs.GlobFS = fsys
	var _ fs.ReadDirFS = fsys
	var _ fs.ReadFileFS = fsys
	var _ fs.StatFS = fsys
	var _ fs.SubFS = fsys

	file, err := fsys.Open("test.txt")
	if err != nil {
		t.Fatalf("Open error: %v", err)
	}
	defer file.Close()

	var _ fs.File = file

	if rdFile, ok := file.(fs.ReadDirFile); ok {
		var _ fs.ReadDirFile = rdFile
	}
}

func TestFileModeExtended(t *testing.T) {
	tests := []struct {
		mode      fs.FileMode
		isRegular bool
		perm      fs.FileMode
		typeMode  fs.FileMode
	}{
		{0644, true, 0644, 0},
		{fs.ModeDir | 0755, false, 0755, fs.ModeDir},
		{fs.ModeSymlink | 0777, false, 0777, fs.ModeSymlink},
	}

	for _, tt := range tests {
		if tt.mode.IsRegular() != tt.isRegular {
			t.Errorf("FileMode(%v).IsRegular() = %v, want %v", tt.mode, tt.mode.IsRegular(), tt.isRegular)
		}
		if tt.mode.Perm() != tt.perm {
			t.Errorf("FileMode(%v).Perm() = %v, want %v", tt.mode, tt.mode.Perm(), tt.perm)
		}
		if tt.mode.Type() != tt.typeMode {
			t.Errorf("FileMode(%v).Type() = %v, want %v", tt.mode, tt.mode.Type(), tt.typeMode)
		}
		str := tt.mode.String()
		if str == "" {
			t.Errorf("FileMode(%v).String() returned empty string", tt.mode)
		}
	}
}

func TestPathErrorExtended(t *testing.T) {
	baseErr := errors.New("test error")
	err := &fs.PathError{
		Op:   "open",
		Path: "/test",
		Err:  baseErr,
	}

	if err.Unwrap() != baseErr {
		t.Errorf("PathError.Unwrap() = %v, want %v", err.Unwrap(), baseErr)
	}
	if err.Timeout() {
		t.Error("PathError.Timeout() should return false for non-timeout error")
	}
}

func TestWalkDirFunc(t *testing.T) {
	fsys := fstest.MapFS{
		"a.txt": {Data: []byte("a")},
	}

	var walkFunc fs.WalkDirFunc = func(path string, d fs.DirEntry, err error) error {
		return nil
	}

	err := fs.WalkDir(fsys, ".", walkFunc)
	if err != nil {
		t.Errorf("WalkDir with WalkDirFunc error: %v", err)
	}
}
