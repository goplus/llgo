package crosscompile

import (
	"archive/tar"
	"compress/gzip"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"testing"
	"time"
)

// Helper function to create a test tar.gz archive
func createTestTarGz(t *testing.T, files map[string]string) string {
	tempFile, err := os.CreateTemp("", "test*.tar.gz")
	if err != nil {
		t.Fatalf("Failed to create temp file: %v", err)
	}
	defer tempFile.Close()

	gzw := gzip.NewWriter(tempFile)
	defer gzw.Close()

	tw := tar.NewWriter(gzw)
	defer tw.Close()

	for name, content := range files {
		hdr := &tar.Header{
			Name: name,
			Mode: 0644,
			Size: int64(len(content)),
		}
		if err := tw.WriteHeader(hdr); err != nil {
			t.Fatalf("Failed to write tar header: %v", err)
		}
		if _, err := tw.Write([]byte(content)); err != nil {
			t.Fatalf("Failed to write tar content: %v", err)
		}
	}

	return tempFile.Name()
}

// Helper function to create a test HTTP server
func createTestServer(t *testing.T, files map[string]string) *httptest.Server {
	return httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		path := strings.TrimPrefix(r.URL.Path, "/")
		if content, exists := files[path]; exists {
			w.Header().Set("Content-Type", "application/octet-stream")
			w.Write([]byte(content))
		} else {
			w.WriteHeader(http.StatusNotFound)
		}
	}))
}

func TestAcquireAndReleaseLock(t *testing.T) {
	tempDir := t.TempDir()
	lockPath := filepath.Join(tempDir, "test.lock")

	// Test acquiring lock
	lockFile, err := acquireLock(lockPath)
	if err != nil {
		t.Fatalf("Failed to acquire lock: %v", err)
	}

	// Check lock file exists
	if _, err := os.Stat(lockPath); os.IsNotExist(err) {
		t.Error("Lock file should exist")
	}

	// Test releasing lock
	if err := releaseLock(lockFile); err != nil {
		t.Errorf("Failed to release lock: %v", err)
	}

	// Check lock file is removed
	if _, err := os.Stat(lockPath); !os.IsNotExist(err) {
		t.Error("Lock file should be removed after release")
	}
}

func TestAcquireLockConcurrency(t *testing.T) {
	tempDir := t.TempDir()
	lockPath := filepath.Join(tempDir, "concurrent.lock")

	var wg sync.WaitGroup
	var results []int
	var resultsMu sync.Mutex

	// Start multiple goroutines trying to acquire the same lock
	for i := 0; i < 5; i++ {
		wg.Add(1)
		go func(id int) {
			defer wg.Done()

			lockFile, err := acquireLock(lockPath)
			if err != nil {
				t.Errorf("Goroutine %d failed to acquire lock: %v", id, err)
				return
			}

			// Hold the lock for a short time
			resultsMu.Lock()
			results = append(results, id)
			resultsMu.Unlock()

			time.Sleep(10 * time.Millisecond)

			if err := releaseLock(lockFile); err != nil {
				t.Errorf("Goroutine %d failed to release lock: %v", id, err)
			}
		}(i)
	}

	wg.Wait()

	// All goroutines should have successfully acquired and released the lock
	if len(results) != 5 {
		t.Errorf("Expected 5 successful lock acquisitions, got %d", len(results))
	}
}

func TestDownloadFile(t *testing.T) {
	// Create test server
	testContent := "test file content"
	server := createTestServer(t, map[string]string{
		"test.txt": testContent,
	})
	defer server.Close()

	tempDir := t.TempDir()
	targetFile := filepath.Join(tempDir, "downloaded.txt")

	// Test successful download
	err := downloadFile(server.URL+"/test.txt", targetFile)
	if err != nil {
		t.Fatalf("Failed to download file: %v", err)
	}

	// Check file content
	content, err := os.ReadFile(targetFile)
	if err != nil {
		t.Fatalf("Failed to read downloaded file: %v", err)
	}

	if string(content) != testContent {
		t.Errorf("Expected content %q, got %q", testContent, string(content))
	}

	// Test download failure (404)
	err = downloadFile(server.URL+"/nonexistent.txt", targetFile)
	if err == nil {
		t.Error("Expected error for non-existent file, got nil")
	}
}

func TestExtractTarGz(t *testing.T) {
	// Create test archive
	files := map[string]string{
		"test-dir/file1.txt": "content of file1",
		"test-dir/file2.txt": "content of file2",
		"file3.txt":          "content of file3",
	}

	archivePath := createTestTarGz(t, files)
	defer os.Remove(archivePath)

	// Extract to temp directory
	tempDir := t.TempDir()
	err := extractTarGz(archivePath, tempDir)
	if err != nil {
		t.Fatalf("Failed to extract tar.gz: %v", err)
	}

	// Check extracted files
	for name, expectedContent := range files {
		filePath := filepath.Join(tempDir, name)
		content, err := os.ReadFile(filePath)
		if err != nil {
			t.Errorf("Failed to read extracted file %s: %v", name, err)
			continue
		}
		if string(content) != expectedContent {
			t.Errorf("File %s: expected content %q, got %q", name, expectedContent, string(content))
		}
	}
}

func TestExtractTarGzPathTraversal(t *testing.T) {
	// Create a malicious archive with path traversal
	tempFile, err := os.CreateTemp("", "malicious*.tar.gz")
	if err != nil {
		t.Fatalf("Failed to create temp file: %v", err)
	}
	defer tempFile.Close()
	defer os.Remove(tempFile.Name())

	gzw := gzip.NewWriter(tempFile)
	tw := tar.NewWriter(gzw)

	// Add a file with path traversal attack
	hdr := &tar.Header{
		Name:     "../../../etc/passwd",
		Mode:     0644,
		Size:     5,
		Typeflag: tar.TypeReg,
	}
	if err := tw.WriteHeader(hdr); err != nil {
		t.Fatalf("Failed to write tar header: %v", err)
	}
	if _, err := tw.Write([]byte("pwned")); err != nil {
		t.Fatalf("Failed to write tar content: %v", err)
	}

	// Close writers to flush all data
	if err := tw.Close(); err != nil {
		t.Fatalf("Failed to close tar writer: %v", err)
	}
	if err := gzw.Close(); err != nil {
		t.Fatalf("Failed to close gzip writer: %v", err)
	}
	if err := tempFile.Close(); err != nil {
		t.Fatalf("Failed to close temp file: %v", err)
	}

	tempDir := t.TempDir()
	err = extractTarGz(tempFile.Name(), tempDir)
	if err == nil {
		t.Error("Expected error for path traversal attack, got nil")
	}
	if !strings.Contains(err.Error(), "illegal file path") {
		t.Errorf("Expected 'illegal file path' error, got: %v", err)
	}
}

func TestDownloadAndExtractArchive(t *testing.T) {
	// Create test archive
	files := map[string]string{
		"test-app/bin/app":    "#!/bin/bash\necho hello",
		"test-app/lib/lib.so": "fake library content",
		"test-app/README":     "This is a test application",
	}

	archivePath := createTestTarGz(t, files)
	defer os.Remove(archivePath)

	// Create test server to serve the archive
	archiveContent, err := os.ReadFile(archivePath)
	if err != nil {
		t.Fatalf("Failed to read test archive: %v", err)
	}

	server := createTestServer(t, map[string]string{
		"test-app.tar.gz": string(archiveContent),
	})
	defer server.Close()

	// Test download and extract
	tempDir := t.TempDir()
	destDir := filepath.Join(tempDir, "extracted")

	err = downloadAndExtractArchive(server.URL+"/test-app.tar.gz", destDir, "Test App")
	if err != nil {
		t.Fatalf("Failed to download and extract: %v", err)
	}

	// Check extracted files
	for name, expectedContent := range files {
		filePath := filepath.Join(destDir, name)
		content, err := os.ReadFile(filePath)
		if err != nil {
			t.Errorf("Failed to read extracted file %s: %v", name, err)
			continue
		}
		if string(content) != expectedContent {
			t.Errorf("File %s: expected content %q, got %q", name, expectedContent, string(content))
		}
	}
}

func TestDownloadAndExtractArchiveUnsupportedFormat(t *testing.T) {
	server := createTestServer(t, map[string]string{
		"test.zip": "fake zip content",
	})
	defer server.Close()

	tempDir := t.TempDir()
	destDir := filepath.Join(tempDir, "extracted")

	err := downloadAndExtractArchive(server.URL+"/test.zip", destDir, "Test Archive")
	if err == nil {
		t.Error("Expected error for unsupported format, got nil")
	}
	if !strings.Contains(err.Error(), "unsupported archive format") {
		t.Errorf("Expected 'unsupported archive format' error, got: %v", err)
	}
}

// Mock test for WASI SDK (without actual download)
func TestWasiSDKExtractionLogic(t *testing.T) {
	tempDir := t.TempDir()

	// Create fake WASI SDK directory structure
	wasiSdkDir := filepath.Join(tempDir, wasiMacosSubdir)
	binDir := filepath.Join(wasiSdkDir, "bin")
	err := os.MkdirAll(binDir, 0755)
	if err != nil {
		t.Fatalf("Failed to create fake WASI SDK structure: %v", err)
	}

	// Create fake clang binary
	clangPath := filepath.Join(binDir, "clang")
	err = os.WriteFile(clangPath, []byte("fake clang"), 0755)
	if err != nil {
		t.Fatalf("Failed to create fake clang: %v", err)
	}

	// Test that function returns correct path for existing SDK
	sdkRoot, err := checkDownloadAndExtractWasiSDK(tempDir)
	if err != nil {
		t.Fatalf("checkDownloadAndExtractWasiSDK failed: %v", err)
	}

	expectedRoot := filepath.Join(tempDir, wasiMacosSubdir)
	if sdkRoot != expectedRoot {
		t.Errorf("Expected SDK root %q, got %q", expectedRoot, sdkRoot)
	}
}

// Test ESP Clang extraction logic with existing directory
func TestESPClangExtractionLogic(t *testing.T) {
	tempDir := t.TempDir()
	espClangDir := filepath.Join(tempDir, "esp-clang")

	// Create fake ESP Clang directory structure
	binDir := filepath.Join(espClangDir, "bin")
	err := os.MkdirAll(binDir, 0755)
	if err != nil {
		t.Fatalf("Failed to create fake ESP Clang structure: %v", err)
	}

	// Create fake clang binary
	clangPath := filepath.Join(binDir, "clang")
	err = os.WriteFile(clangPath, []byte("fake esp clang"), 0755)
	if err != nil {
		t.Fatalf("Failed to create fake esp clang: %v", err)
	}

	// Test that function skips download for existing directory
	err = checkDownloadAndExtractESPClang("linux", espClangDir)
	if err != nil {
		t.Fatalf("checkDownloadAndExtractESPClang failed: %v", err)
	}

	// Check that the directory still exists and has the right content
	if _, err := os.Stat(clangPath); os.IsNotExist(err) {
		t.Error("ESP Clang binary should exist")
	}
}
