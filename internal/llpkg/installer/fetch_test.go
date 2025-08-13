package installer

import (
	"archive/zip"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestUnzip(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	zipPath := filepath.Join(tempDir, "test.zip")
	outputDir := filepath.Join(tempDir, "output")

	// Create test zip file with helper function
	if err := createTestZip(zipPath, map[string]string{
		"test.txt":            "test content",
		"testdir/":            "", // directory entry
		"testdir/subfile.txt": "sub content",
	}); err != nil {
		t.Fatalf("failed to create test zip: %v", err)
	}

	// Test unzip operation
	err = Unzip(zipPath, outputDir)
	if err != nil {
		t.Fatalf("Unzip failed: %v", err)
	}

	// Validate extracted files
	validateFile(t, filepath.Join(outputDir, "test.txt"), "test content")
	validateFile(t, filepath.Join(outputDir, "testdir", "subfile.txt"), "sub content")
	validateDir(t, filepath.Join(outputDir, "testdir"))
}

func TestUnzip_NestedZip(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_nested_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	// First create a nested zip file
	nestedZipPath := filepath.Join(tempDir, "nested.zip")
	if err := createTestZip(nestedZipPath, map[string]string{
		"nested_file.txt": "nested content",
	}); err != nil {
		t.Fatalf("failed to create nested zip: %v", err)
	}

	// Read the nested zip content
	nestedContent, err := os.ReadFile(nestedZipPath)
	if err != nil {
		t.Fatalf("failed to read nested zip: %v", err)
	}

	// Create main zip with nested zip
	mainZipPath := filepath.Join(tempDir, "main.zip")
	if err := createTestZipWithBinary(mainZipPath, map[string]interface{}{
		"main.txt":   "main content",
		"nested.zip": nestedContent,
	}); err != nil {
		t.Fatalf("failed to create main zip: %v", err)
	}

	outputDir := filepath.Join(tempDir, "output")

	// Test unzip operation
	err = Unzip(mainZipPath, outputDir)
	if err != nil {
		t.Fatalf("Unzip failed: %v", err)
	}

	// Validate main file
	validateFile(t, filepath.Join(outputDir, "main.txt"), "main content")

	// Validate nested files were extracted
	validateFile(t, filepath.Join(outputDir, "nested_file.txt"), "nested content")

	// The nested.zip should be removed after extraction
	if _, err := os.Stat(filepath.Join(outputDir, "nested.zip")); !os.IsNotExist(err) {
		t.Error("nested.zip should be removed after extraction")
	}
}

func TestUnzip_InvalidZip(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_invalid_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	invalidZipPath := filepath.Join(tempDir, "invalid.zip")
	err = os.WriteFile(invalidZipPath, []byte("not a zip file"), 0644)
	if err != nil {
		t.Fatal(err)
	}

	outputDir := filepath.Join(tempDir, "output")
	err = Unzip(invalidZipPath, outputDir)
	if err == nil {
		t.Error("expected error for invalid zip file")
	}
}

func TestUnzip_OutputDirCreationFailure(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_mkdir_fail_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	zipPath := filepath.Join(tempDir, "test.zip")
	if err := createTestZip(zipPath, map[string]string{
		"test.txt": "test content",
	}); err != nil {
		t.Fatalf("failed to create test zip: %v", err)
	}

	// Create a file with the same name as the output directory to cause mkdir failure
	outputDir := filepath.Join(tempDir, "output")
	if err := os.WriteFile(outputDir, []byte("blocking file"), 0644); err != nil {
		t.Fatal(err)
	}

	err = Unzip(zipPath, outputDir)
	if err == nil {
		t.Error("expected error when output directory creation fails")
	}
}

func TestUnzip_FileCreationFailure(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_file_create_fail_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	zipPath := filepath.Join(tempDir, "test.zip")
	if err := createTestZip(zipPath, map[string]string{
		"test.txt": "test content",
	}); err != nil {
		t.Fatalf("failed to create test zip: %v", err)
	}

	outputDir := filepath.Join(tempDir, "output")

	// Create the output directory first
	if err := os.MkdirAll(outputDir, 0700); err != nil {
		t.Fatal(err)
	}

	// Create a directory with the same name as the file to be extracted
	conflictPath := filepath.Join(outputDir, "test.txt")
	if err := os.MkdirAll(conflictPath, 0700); err != nil {
		t.Fatal(err)
	}

	err = Unzip(zipPath, outputDir)
	if err == nil {
		t.Error("expected error when file creation fails due to directory conflict")
	}
}

func TestUnzip_DirectoryMkdirError(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_dir_mkdir_error_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	zipPath := filepath.Join(tempDir, "test.zip")
	if err := createTestZip(zipPath, map[string]string{
		"testdir/":         "",
		"testdir/file.txt": "content",
	}); err != nil {
		t.Fatalf("failed to create test zip: %v", err)
	}

	outputDir := filepath.Join(tempDir, "output")

	// Create the output directory first
	if err := os.MkdirAll(outputDir, 0700); err != nil {
		t.Fatal(err)
	}

	// Create a file with the same name as the directory to be created
	conflictPath := filepath.Join(outputDir, "testdir")
	if err := os.WriteFile(conflictPath, []byte("blocking file"), 0644); err != nil {
		t.Fatal(err)
	}

	err = Unzip(zipPath, outputDir)
	if err == nil {
		t.Error("expected error when directory creation fails due to file conflict")
	}
}

func TestUnzip_NestedZipError(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_nested_error_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	// Create a corrupted nested zip
	corruptedZipContent := []byte("corrupted zip content")

	// Create main zip with corrupted nested zip
	mainZipPath := filepath.Join(tempDir, "main.zip")
	if err := createTestZipWithBinary(mainZipPath, map[string]interface{}{
		"main.txt":   "main content",
		"nested.zip": corruptedZipContent,
	}); err != nil {
		t.Fatalf("failed to create main zip: %v", err)
	}

	outputDir := filepath.Join(tempDir, "output")

	// Test unzip operation - should fail when trying to unzip the corrupted nested zip
	err = Unzip(mainZipPath, outputDir)
	if err == nil {
		t.Error("expected error when nested zip is corrupted")
	}
}

func TestUnzip_FileOpenError(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_file_open_error_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	// Create a zip file that will cause file.Open() to fail
	zipPath := filepath.Join(tempDir, "corrupted_entry.zip")

	// Create a zip file manually with a corrupted entry
	zipFile, err := os.Create(zipPath)
	if err != nil {
		t.Fatal(err)
	}
	defer zipFile.Close()

	zipWriter := zip.NewWriter(zipFile)

	// Create a normal file first
	normalWriter, err := zipWriter.Create("normal.txt")
	if err != nil {
		t.Fatal(err)
	}
	normalWriter.Write([]byte("normal content"))

	// Create a file entry that will be corrupted
	corruptedWriter, err := zipWriter.Create("corrupted.txt")
	if err != nil {
		t.Fatal(err)
	}
	corruptedWriter.Write([]byte("this will be corrupted"))

	zipWriter.Close()

	// Now corrupt the zip file by truncating it in the middle
	// This should cause file.Open() to fail for some entries
	file, err := os.OpenFile(zipPath, os.O_WRONLY, 0644)
	if err != nil {
		t.Fatal(err)
	}
	stat, err := file.Stat()
	if err != nil {
		t.Fatal(err)
	}
	// Truncate to about 80% of original size to corrupt some entries
	file.Truncate(stat.Size() * 8 / 10)
	file.Close()

	outputDir := filepath.Join(tempDir, "output")
	err = Unzip(zipPath, outputDir)
	if err == nil {
		t.Error("expected error when file.Open() fails due to corruption")
	}
}

func TestDownloadFile(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "download_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	t.Run("download real file", func(t *testing.T) {
		url := "https://github.com/goplus/llpkg/releases/download/libxslt%2Fv1.0.3/libxslt_darwin_amd64.zip"
		outputDir := filepath.Join(tempDir, "download")

		absFilename, err := DownloadFile(url, outputDir)
		if err != nil {
			t.Skipf("skipping download test due to network error: %v", err)
		}

		// DownloadFile returns a temporary file name, not the final filename
		if absFilename == "" {
			t.Error("expected non-empty filename")
		}

		if _, err := os.Stat(absFilename); os.IsNotExist(err) {
			t.Error("downloaded file does not exist")
		}

		fileInfo, err := os.Stat(absFilename)
		if err != nil {
			t.Fatal(err)
		}
		if fileInfo.Size() == 0 {
			t.Error("downloaded file is empty")
		}

		// Verify it's a temporary file
		if !strings.HasSuffix(absFilename, ".temp") {
			t.Errorf("expected temporary file name, got %s", absFilename)
		}
	})

	t.Run("invalid url", func(t *testing.T) {
		invalidURL := "invalid-url"
		outputDir := filepath.Join(tempDir, "invalid")

		_, err := DownloadFile(invalidURL, outputDir)
		if err == nil {
			t.Error("expected error for invalid URL")
		}
		if !strings.Contains(err.Error(), "failed to download llpkg binary files") {
			t.Errorf("expected wrapped error message, got %s", err.Error())
		}
	})

	t.Run("mkdir failure", func(t *testing.T) {
		// Create a file with the same name as the output directory to cause mkdir failure
		outputDir := filepath.Join(tempDir, "mkdir_fail")
		if err := os.WriteFile(outputDir, []byte("blocking file"), 0644); err != nil {
			t.Fatal(err)
		}

		url := "https://example.com/test.zip"
		_, err := DownloadFile(url, outputDir)
		if err == nil {
			t.Error("expected error when output directory creation fails")
		}
		if !strings.Contains(err.Error(), "failed to download llpkg binary files") {
			t.Errorf("expected wrapped error message, got %s", err.Error())
		}
	})

	t.Run("http status not ok", func(t *testing.T) {
		// Use a URL that returns 404
		notFoundURL := "https://httpbin.org/status/404"
		outputDir := filepath.Join(tempDir, "not_found")

		_, err := DownloadFile(notFoundURL, outputDir)
		if err == nil {
			t.Error("expected error for 404 status")
		}
		if !strings.Contains(err.Error(), "failed to download llpkg binary files: status") {
			t.Errorf("expected status error message, got %s", err.Error())
		}
	})
}

func TestDownloadFile_CreateTempFailure(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "download_createtemp_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	// Set TMPDIR to a non-existent directory to cause CreateTemp to fail
	originalTmpDir := os.Getenv("TMPDIR")
	defer os.Setenv("TMPDIR", originalTmpDir)

	nonExistentTmpDir := filepath.Join(tempDir, "nonexistent")
	os.Setenv("TMPDIR", nonExistentTmpDir)

	url := "https://httpbin.org/get"
	outputDir := filepath.Join(tempDir, "output")

	_, err = DownloadFile(url, outputDir)
	if err == nil {
		t.Error("expected error when CreateTemp fails")
	}
	if !strings.Contains(err.Error(), "failed to download llpkg binary files") {
		t.Errorf("expected wrapped error message, got %s", err.Error())
	}
}

func TestWrapDownloadError(t *testing.T) {
	t.Run("nil error", func(t *testing.T) {
		result := wrapDownloadError(nil)
		if result != nil {
			t.Errorf("expected nil, got %v", result)
		}
	})

	t.Run("non-nil error", func(t *testing.T) {
		originalErr := fmt.Errorf("original error")
		result := wrapDownloadError(originalErr)
		if result == nil {
			t.Error("expected non-nil error")
		}
		if !strings.Contains(result.Error(), "failed to download llpkg binary files") {
			t.Errorf("expected wrapped error message, got %s", result.Error())
		}
		if !strings.Contains(result.Error(), "original error") {
			t.Errorf("expected original error in wrapped message, got %s", result.Error())
		}
	})
}

// Helper functions

func createTestZip(zipPath string, files map[string]string) error {
	zipFile, err := os.Create(zipPath)
	if err != nil {
		return err
	}
	defer zipFile.Close()

	zipWriter := zip.NewWriter(zipFile)
	defer zipWriter.Close()

	// Sort entries to ensure directories come before files
	// This prevents the issue where files are created before their parent directories
	var entries []string
	for name := range files {
		entries = append(entries, name)
	}

	// Sort with custom logic: directories (ending with /) first, then files
	// Within each category, sort alphabetically
	for i := 0; i < len(entries); i++ {
		for j := i + 1; j < len(entries); j++ {
			// If entries[i] is a file and entries[j] is a directory, swap
			if !strings.HasSuffix(entries[i], "/") && strings.HasSuffix(entries[j], "/") {
				entries[i], entries[j] = entries[j], entries[i]
			} else if strings.HasSuffix(entries[i], "/") == strings.HasSuffix(entries[j], "/") {
				// Both are files or both are directories, sort alphabetically
				if entries[i] > entries[j] {
					entries[i], entries[j] = entries[j], entries[i]
				}
			}
		}
	}

	for _, name := range entries {
		content := files[name]
		fileWriter, err := zipWriter.Create(name)
		if err != nil {
			return err
		}
		if content == "" {
			continue
		}
		_, err = fileWriter.Write([]byte(content))
		if err != nil {
			return err
		}
	}

	return nil
}

func createTestZipWithBinary(zipPath string, files map[string]interface{}) error {
	zipFile, err := os.Create(zipPath)
	if err != nil {
		return err
	}
	defer zipFile.Close()

	zipWriter := zip.NewWriter(zipFile)
	defer zipWriter.Close()

	for name, content := range files {
		fileWriter, err := zipWriter.Create(name)
		if err != nil {
			return err
		}

		switch v := content.(type) {
		case string:
			_, err = fileWriter.Write([]byte(v))
		case []byte:
			_, err = fileWriter.Write(v)
		default:
			return err
		}

		if err != nil {
			return err
		}
	}

	return nil
}

func validateFile(t *testing.T, filePath, expectedContent string) {
	t.Helper()
	content, err := os.ReadFile(filePath)
	if err != nil {
		t.Errorf("failed to read file %s: %v", filePath, err)
		return
	}
	if string(content) != expectedContent {
		t.Errorf("file %s: expected '%s', got '%s'", filePath, expectedContent, string(content))
	}
}

func validateDir(t *testing.T, dirPath string) {
	t.Helper()
	if _, err := os.Stat(dirPath); os.IsNotExist(err) {
		t.Errorf("directory %s was not created", dirPath)
	}
}
