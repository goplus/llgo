package installer

import (
	"archive/zip"
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
		"nested_file.txt":    "nested content",
		"nested_dir/":        "",
		"nested_dir/sub.txt": "nested sub content",
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
	validateFile(t, filepath.Join(outputDir, "nested_dir", "sub.txt"), "nested sub content")
	validateDir(t, filepath.Join(outputDir, "nested_dir"))

	// The nested.zip should be removed after extraction
	if _, err := os.Stat(filepath.Join(outputDir, "nested.zip")); !os.IsNotExist(err) {
		t.Error("nested.zip should be removed after extraction")
	}
}

func TestUnzip_EmptyZip(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_empty_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	zipPath := filepath.Join(tempDir, "empty.zip")
	outputDir := filepath.Join(tempDir, "output")

	// Create empty zip
	if err := createTestZip(zipPath, map[string]string{}); err != nil {
		t.Fatalf("failed to create empty zip: %v", err)
	}

	// Test unzip operation
	err = Unzip(zipPath, outputDir)
	if err != nil {
		t.Fatalf("Unzip failed: %v", err)
	}

	// Should create output directory even for empty zip
	validateDir(t, outputDir)
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

func TestUnzip_NonexistentFile(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "unzip_nonexistent_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	nonexistentPath := filepath.Join(tempDir, "nonexistent.zip")
	outputDir := filepath.Join(tempDir, "output")

	err = Unzip(nonexistentPath, outputDir)
	if err == nil {
		t.Error("expected error for nonexistent zip file")
	}
	if !strings.Contains(err.Error(), "no such file") {
		t.Errorf("expected 'no such file' error, got %s", err.Error())
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
		if !strings.Contains(absFilename, "download") || !strings.HasSuffix(absFilename, ".temp") {
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

	t.Run("nonexistent url", func(t *testing.T) {
		nonexistentURL := "https://example.com/nonexistent.zip"
		outputDir := filepath.Join(tempDir, "nonexistent")

		_, err := DownloadFile(nonexistentURL, outputDir)
		if err == nil {
			t.Error("expected error for nonexistent URL")
		}
		if !strings.Contains(err.Error(), "failed to download llpkg binary files") {
			t.Errorf("expected wrapped error message, got %s", err.Error())
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

	for name, content := range files {
		if strings.HasSuffix(name, "/") {
			// Directory entry
			_, err := zipWriter.Create(name)
			if err != nil {
				return err
			}
		} else {
			// File entry
			fileWriter, err := zipWriter.Create(name)
			if err != nil {
				return err
			}
			_, err = fileWriter.Write([]byte(content))
			if err != nil {
				return err
			}
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
