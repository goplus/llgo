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

	zipFile, err := os.Create(zipPath)
	if err != nil {
		t.Fatal(err)
	}

	zipWriter := zip.NewWriter(zipFile)

	fileWriter, err := zipWriter.Create("test.txt")
	if err != nil {
		t.Fatal(err)
	}
	_, err = fileWriter.Write([]byte("test content"))
	if err != nil {
		t.Fatal(err)
	}

	dirWriter, err := zipWriter.Create("testdir/")
	if err != nil {
		t.Fatal(err)
	}
	_ = dirWriter

	subFileWriter, err := zipWriter.Create("testdir/subfile.txt")
	if err != nil {
		t.Fatal(err)
	}
	_, err = subFileWriter.Write([]byte("sub content"))
	if err != nil {
		t.Fatal(err)
	}

	zipWriter.Close()
	zipFile.Close()

	err = Unzip(zipPath, outputDir)
	if err != nil {
		t.Fatal(err)
	}

	testFilePath := filepath.Join(outputDir, "test.txt")
	content, err := os.ReadFile(testFilePath)
	if err != nil {
		t.Fatal(err)
	}
	if string(content) != "test content" {
		t.Errorf("expected 'test content', got %s", string(content))
	}

	subFilePath := filepath.Join(outputDir, "testdir", "subfile.txt")
	subContent, err := os.ReadFile(subFilePath)
	if err != nil {
		t.Fatal(err)
	}
	if string(subContent) != "sub content" {
		t.Errorf("expected 'sub content', got %s", string(subContent))
	}

	dirPath := filepath.Join(outputDir, "testdir")
	if _, err := os.Stat(dirPath); os.IsNotExist(err) {
		t.Error("directory was not created")
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

		expectedFilename := filepath.Join(outputDir, "libxslt_darwin_amd64.zip")
		if absFilename != expectedFilename {
			t.Errorf("expected filename %s, got %s", expectedFilename, absFilename)
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
