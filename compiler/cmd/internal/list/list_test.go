package list

import (
	"os"
	"testing"
	"time"
)

func TestFileLastModificationTime(t *testing.T) {
	// Create a temporary file
	tempFile, err := os.CreateTemp("", "test-file-*")
	if err != nil {
		t.Fatalf("Failed to create temporary file: %v", err)
	}
	defer os.Remove(tempFile.Name())
	defer tempFile.Close()

	// Write some content to the file
	content := []byte("Hello, World!")
	if _, err := tempFile.Write(content); err != nil {
		t.Fatalf("Failed to write to temporary file: %v", err)
	}

	// Sync to ensure data is written to disk
	if err := tempFile.Sync(); err != nil {
		t.Fatalf("Failed to sync file: %v", err)
	}

	// Get file info using os.Stat
	fileInfo, err := os.Stat(tempFile.Name())
	if err != nil {
		t.Fatalf("Failed to get file info: %v", err)
	}

	// Get last modification time
	modTime := fileInfo.ModTime().Format(time.RFC1123)

	t.Logf("File last modification time: %v", modTime)
}
