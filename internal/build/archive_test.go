/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package build

import (
	"os"
	"path/filepath"
	"testing"
)

func TestCreateArchive_Empty(t *testing.T) {
	td := t.TempDir()
	archivePath := filepath.Join(td, "empty.a")

	if err := CreateArchive(archivePath, nil); err != nil {
		t.Fatalf("CreateArchive empty: %v", err)
	}

	// Check file exists
	info, err := os.Stat(archivePath)
	if err != nil {
		t.Fatalf("archive not created: %v", err)
	}

	// Should have at least the global header
	if info.Size() < 8 {
		t.Errorf("archive too small: %d bytes", info.Size())
	}
}

func TestCreateArchive_WithFiles(t *testing.T) {
	td := t.TempDir()

	// Create test object files
	obj1 := filepath.Join(td, "a.o")
	obj2 := filepath.Join(td, "b.o")
	content1 := []byte("object file 1 content")
	content2 := []byte("object file 2 content")

	if err := os.WriteFile(obj1, content1, 0644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(obj2, content2, 0644); err != nil {
		t.Fatal(err)
	}

	archivePath := filepath.Join(td, "test.a")
	if err := CreateArchive(archivePath, []string{obj1, obj2}); err != nil {
		t.Fatalf("CreateArchive: %v", err)
	}

	// Check archive exists
	if _, err := os.Stat(archivePath); err != nil {
		t.Fatalf("archive not created: %v", err)
	}
}

func TestExtractArchive(t *testing.T) {
	td := t.TempDir()

	// Create test files
	obj1 := filepath.Join(td, "x.o")
	obj2 := filepath.Join(td, "y.o")
	content1 := []byte("content of x")
	content2 := []byte("content of y")

	if err := os.WriteFile(obj1, content1, 0644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(obj2, content2, 0644); err != nil {
		t.Fatal(err)
	}

	// Create archive
	archivePath := filepath.Join(td, "test.a")
	if err := CreateArchive(archivePath, []string{obj1, obj2}); err != nil {
		t.Fatalf("CreateArchive: %v", err)
	}

	// Extract to new directory
	extractDir := filepath.Join(td, "extracted")
	files, err := ExtractArchive(archivePath, extractDir)
	if err != nil {
		t.Fatalf("ExtractArchive: %v", err)
	}

	if len(files) != 2 {
		t.Errorf("expected 2 files, got %d", len(files))
	}

	// Verify content - files are now named sequentially (0.o, 1.o)
	// so we check by index order matching input order
	expected := [][]byte{content1, content2}
	for i, f := range files {
		got, err := os.ReadFile(f)
		if err != nil {
			t.Errorf("read %s: %v", f, err)
			continue
		}

		if string(got) != string(expected[i]) {
			t.Errorf("file %d content = %q, want %q", i, got, expected[i])
		}
	}
}

func TestExtractArchive_Empty(t *testing.T) {
	td := t.TempDir()

	// Create empty archive
	archivePath := filepath.Join(td, "empty.a")
	if err := CreateArchive(archivePath, nil); err != nil {
		t.Fatal(err)
	}

	// Extract
	extractDir := filepath.Join(td, "out")
	files, err := ExtractArchive(archivePath, extractDir)
	if err != nil {
		t.Fatalf("ExtractArchive empty: %v", err)
	}

	if len(files) != 0 {
		t.Errorf("expected 0 files, got %d", len(files))
	}
}

func TestExtractArchive_NotExist(t *testing.T) {
	td := t.TempDir()
	_, err := ExtractArchive(filepath.Join(td, "nonexistent.a"), td)
	if err == nil {
		t.Error("expected error for nonexistent archive")
	}
}

func TestCreateAndExtract_RoundTrip(t *testing.T) {
	td := t.TempDir()

	// Create multiple test files with different sizes
	files := map[string][]byte{
		"small.o":  []byte("small"),
		"medium.o": make([]byte, 1000),
		"large.o":  make([]byte, 10000),
	}

	var srcFiles []string
	for name, content := range files {
		path := filepath.Join(td, name)
		if err := os.WriteFile(path, content, 0644); err != nil {
			t.Fatal(err)
		}
		srcFiles = append(srcFiles, path)
	}

	// Create archive
	archivePath := filepath.Join(td, "roundtrip.a")
	if err := CreateArchive(archivePath, srcFiles); err != nil {
		t.Fatalf("CreateArchive: %v", err)
	}

	// Extract
	extractDir := filepath.Join(td, "out")
	extracted, err := ExtractArchive(archivePath, extractDir)
	if err != nil {
		t.Fatalf("ExtractArchive: %v", err)
	}

	if len(extracted) != len(files) {
		t.Errorf("expected %d files, got %d", len(files), len(extracted))
	}

	// Verify all files have expected sizes
	// Files are named sequentially so we verify by checking total sizes match
	var totalOriginal, totalExtracted int64
	for _, content := range files {
		totalOriginal += int64(len(content))
	}
	for _, f := range extracted {
		got, err := os.ReadFile(f)
		if err != nil {
			t.Errorf("read %s: %v", f, err)
			continue
		}
		totalExtracted += int64(len(got))
	}

	if totalOriginal != totalExtracted {
		t.Errorf("total size = %d, want %d", totalExtracted, totalOriginal)
	}
}
