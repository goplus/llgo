//go:build !llgo

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
	"strings"
	"testing"
)

func TestManifestBuilder_Build(t *testing.T) {
	m := NewManifestBuilder()
	m.AddEnv("GOARCH", "arm64")
	m.AddEnv("GOOS", "darwin")
	m.AddCommon("DEBUG", "false")
	m.AddPackage("PKG_PATH", "example.com/foo")

	content := m.Build()
	data, err := decodeManifest(content)
	if err != nil {
		t.Fatalf("decodeManifest: %v", err)
	}

	if data.Env["GOARCH"] != "arm64" || data.Env["GOOS"] != "darwin" {
		t.Fatalf("env section mismatch: %+v", data.Env)
	}
	if data.Common["DEBUG"] != "false" {
		t.Fatalf("common section mismatch: %+v", data.Common)
	}
	if data.Package["PKG_PATH"] != "example.com/foo" {
		t.Fatalf("package section mismatch: %+v", data.Package)
	}
}

func TestManifestBuilder_BuildSorting(t *testing.T) {
	m := NewManifestBuilder()
	// Add in reverse order
	m.AddEnv("Z_KEY", "z")
	m.AddEnv("A_KEY", "a")
	m.AddEnv("M_KEY", "m")
	m.AddCommon("ZEBRA", "1")
	m.AddCommon("APPLE", "2")
	m.AddPackage("ZZZ", "last")
	m.AddPackage("AAA", "first")

	content := m.Build()
	// order should appear sorted in string output
	if !strings.Contains(content, "env:\n  A_KEY: a\n  M_KEY: m\n  Z_KEY: z") {
		t.Fatalf("env section not sorted:\n%s", content)
	}
	if !strings.Contains(content, "common:\n  APPLE: \"2\"\n  ZEBRA: \"1\"") {
		t.Fatalf("common section not sorted:\n%s", content)
	}
	if !strings.Contains(content, "package:\n  AAA: first\n  ZZZ: last") {
		t.Fatalf("package section not sorted:\n%s", content)
	}
}

func TestManifestBuilder_Fingerprint(t *testing.T) {
	m := NewManifestBuilder()
	m.AddEnv("GOOS", "linux")
	m.AddEnv("GOARCH", "amd64")
	m.AddPackage("PKG_PATH", "test/pkg")

	fp1 := m.Fingerprint()
	fp2 := m.Fingerprint()

	if fp1 != fp2 {
		t.Error("fingerprint not stable")
	}

	// Fingerprint should be 64 hex characters (sha256)
	if len(fp1) != 64 {
		t.Errorf("fingerprint length = %d, want 64", len(fp1))
	}
}

func TestManifestBuilder_FingerprintDeterminism(t *testing.T) {
	// Different order of adding, same fingerprint
	m1 := NewManifestBuilder()
	m1.AddEnv("A", "1")
	m1.AddEnv("B", "2")
	m1.AddCommon("X", "10")
	m1.AddCommon("Y", "20")

	m2 := NewManifestBuilder()
	m2.AddEnv("B", "2")
	m2.AddEnv("A", "1")
	m2.AddCommon("Y", "20")
	m2.AddCommon("X", "10")

	if m1.Fingerprint() != m2.Fingerprint() {
		t.Error("order should not affect fingerprint")
	}

	if m1.Build() != m2.Build() {
		t.Error("order should not affect build output")
	}
}

func TestManifestBuilder_FingerprintDifferentValues(t *testing.T) {
	m1 := NewManifestBuilder()
	m1.AddEnv("KEY", "value1")

	m2 := NewManifestBuilder()
	m2.AddEnv("KEY", "value2")

	if m1.Fingerprint() == m2.Fingerprint() {
		t.Error("different values should produce different fingerprints")
	}
}

func TestManifestBuilder_EmptySections(t *testing.T) {
	m := NewManifestBuilder()
	content := m.Build()

	// Empty sections should not be written
	expected := ``
	if content != expected {
		t.Errorf("unexpected empty manifest:\ngot:\n%s\nwant:\n%s", content, expected)
	}

	// Should still produce a valid fingerprint
	fp := m.Fingerprint()
	if len(fp) != 64 {
		t.Errorf("fingerprint length = %d, want 64", len(fp))
	}
}

func TestDigestBytes(t *testing.T) {
	data := []byte("hello world")
	hash := DigestBytes(data)

	// Known sha256 of "hello world"
	expected := "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"
	if hash != expected {
		t.Errorf("DigestBytes = %s, want %s", hash, expected)
	}

	// Empty data
	emptyHash := DigestBytes([]byte{})
	if len(emptyHash) != 64 {
		t.Errorf("empty hash length = %d, want 64", len(emptyHash))
	}
}

func TestDigestFile(t *testing.T) {
	// Create temp file
	td := t.TempDir()
	path := filepath.Join(td, "test.txt")
	content := []byte("test content")
	if err := os.WriteFile(path, content, 0644); err != nil {
		t.Fatal(err)
	}

	hash, err := DigestFile(path)
	if err != nil {
		t.Fatalf("DigestFile: %v", err)
	}

	// Should match DigestBytes
	expected := DigestBytes(content)
	if hash != expected {
		t.Errorf("DigestFile = %s, want %s", hash, expected)
	}
}

func TestDigestFile_NotExist(t *testing.T) {
	_, err := DigestFile("/nonexistent/file.txt")
	if err == nil {
		t.Error("expected error for nonexistent file")
	}
}

func TestDigestFiles(t *testing.T) {
	td := t.TempDir()

	// Create test files
	file1 := filepath.Join(td, "a.go")
	file2 := filepath.Join(td, "b.go")
	content1 := []byte("package a")
	content2 := []byte("package b")

	if err := os.WriteFile(file1, content1, 0644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(file2, content2, 0644); err != nil {
		t.Fatal(err)
	}

	// Test with files in reverse order (should be sorted)
	result, list, err := DigestFiles([]string{file2, file1})
	if err != nil {
		t.Fatalf("DigestFiles: %v", err)
	}

	hash1 := DigestBytes(content1)
	hash2 := DigestBytes(content2)

	// Should be sorted by path
	expected := file1 + "]sha256:" + hash1 + "," + file2 + "]sha256:" + hash2
	if result != expected {
		t.Errorf("DigestFiles =\n%s\nwant:\n%s", result, expected)
	}
	if len(list) != 2 || list[0].Path != file1 || list[1].Path != file2 {
		t.Errorf("structured list not sorted: %+v", list)
	}
}

func TestDigestFiles_Empty(t *testing.T) {
	result, list, err := DigestFiles([]string{})
	if err != nil {
		t.Fatalf("DigestFiles: %v", err)
	}
	if result != "" {
		t.Errorf("DigestFiles empty = %q, want empty string", result)
	}
	if list != nil {
		t.Errorf("DigestFiles empty list = %#v, want nil", list)
	}
}

func TestDigestFiles_Determinism(t *testing.T) {
	td := t.TempDir()

	file1 := filepath.Join(td, "x.go")
	file2 := filepath.Join(td, "y.go")
	if err := os.WriteFile(file1, []byte("x"), 0644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(file2, []byte("y"), 0644); err != nil {
		t.Fatal(err)
	}

	// Different order should produce same result
	result1, _, _ := DigestFiles([]string{file1, file2})
	result2, _, _ := DigestFiles([]string{file2, file1})

	if result1 != result2 {
		t.Errorf("order should not affect DigestFiles result")
	}
}

func TestDigestFilesWithOverlay(t *testing.T) {
	td := t.TempDir()

	// Create a real file
	realFile := filepath.Join(td, "real.go")
	realContent := []byte("real content")
	if err := os.WriteFile(realFile, realContent, 0644); err != nil {
		t.Fatal(err)
	}

	// Create overlay
	overlayFile := filepath.Join(td, "overlay.go")
	overlayContent := []byte("overlay content")
	overlay := map[string][]byte{
		overlayFile: overlayContent,
	}

	result, list, err := DigestFilesWithOverlay([]string{overlayFile, realFile}, overlay)
	if err != nil {
		t.Fatalf("DigestFilesWithOverlay: %v", err)
	}

	hashReal := DigestBytes(realContent)
	hashOverlay := DigestBytes(overlayContent)

	// Should be sorted by path
	if len(list) != 2 {
		t.Fatalf("expected 2 digests, got %d", len(list))
	}

	// Check overlay file uses overlay content
	if !strings.Contains(result, overlayFile+"]sha256:"+hashOverlay) {
		t.Errorf("overlay file should use overlay content hash")
	}

	// Check real file uses disk content
	if !strings.Contains(result, realFile+"]sha256:"+hashReal) {
		t.Errorf("real file should use disk content hash")
	}
}

func TestDigestFilesWithOverlay_Empty(t *testing.T) {
	result, list, err := DigestFilesWithOverlay([]string{}, nil)
	if err != nil {
		t.Fatalf("DigestFilesWithOverlay: %v", err)
	}
	if result != "" {
		t.Errorf("DigestFilesWithOverlay empty = %q, want empty string", result)
	}
	if list != nil {
		t.Errorf("DigestFilesWithOverlay empty list = %#v, want nil", list)
	}
}

func TestManifestBuilder_SpecialCharacters(t *testing.T) {
	m := NewManifestBuilder()
	m.AddEnv("PATH", "/usr/bin:/usr/local/bin")
	m.AddPackage("FLAGS", "-X main.version=1.0.0 -ldflags=-s")

	content := m.Build()
	data, err := decodeManifest(content)
	if err != nil {
		t.Fatalf("decodeManifest: %v", err)
	}
	if data.Env["PATH"] != "/usr/bin:/usr/local/bin" {
		t.Errorf("PATH not preserved: %+v", data.Env)
	}
	if data.Package["FLAGS"] != "-X main.version=1.0.0 -ldflags=-s" {
		t.Errorf("FLAGS not preserved: %+v", data.Package)
	}
}

func TestManifestBuilder_MultipleValues(t *testing.T) {
	m := NewManifestBuilder()
	m.AddEnv("KEY", "value1")
	m.AddEnv("KEY", "value2") // Duplicate key

	content := m.Build()
	data, err := decodeManifest(content)
	if err != nil {
		t.Fatalf("decodeManifest: %v", err)
	}
	values, ok := data.Env["KEY"].([]interface{})
	if !ok {
		t.Fatalf("duplicate key should be slice, got %T", data.Env["KEY"])
	}
	if len(values) != 2 || values[0] != "value1" || values[1] != "value2" {
		t.Errorf("duplicate values not preserved: %+v", values)
	}
}
