package mod

import (
	"encoding/json"
	"errors"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"reflect"
	"testing"
)

var testMetadata = MetadataMap{
	"example-module": &Metadata{
		Versions: map[CVersion][]GoVersion{
			"1.7.18": []GoVersion{"v1.2.0"},
		},
	},
}

// TestNewMetadataMgr verifies that the MetadataMgr is successfully created with valid remote data.
func TestNewMetadataMgr(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/llpkgstore.json" {
			w.Header().Set("Last-Modified", "Sat, 01 Jan 2022 00:00:00 GMT")
			json.NewEncoder(w).Encode(testMetadata)
		} else {
			http.Error(w, "Not Found", http.StatusNotFound)
		}
	}))
	defer server.Close()

	// Save original URL and override with mock server URL
	originalURL := remoteMetadataURL
	defer func() { remoteMetadataURL = originalURL }()
	remoteMetadataURL = server.URL + "/llpkgstore.json"

	tmpDir := t.TempDir()
	mgr, err := NewMetadataMgr(tmpDir)
	if err != nil {
		t.Fatalf("Failed to create metadata manager: %v", err)
	}

	// Verify successful initialization
	if mgr == nil {
		t.Fatal("Metadata manager should not be nil")
	} else if mgr.cache == nil {
		t.Fatal("Metadata cache should not be nil")
	}
}

// TestMetadataMgr_AllMetadata verifies that AllMetadata() returns the complete metadata after update.
func TestMetadataMgr_AllMetadata(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/llpkgstore.json" {
			json.NewEncoder(w).Encode(testMetadata)
		} else {
			http.Error(w, "Not Found", http.StatusNotFound)
		}
	}))
	defer server.Close()

	// Override remote URL to mock server
	originalURL := remoteMetadataURL
	defer func() { remoteMetadataURL = originalURL }()
	remoteMetadataURL = server.URL + "/llpkgstore.json"

	tmpDir := t.TempDir()
	mgr, _ := NewMetadataMgr(tmpDir)

	// Force metadata update from mock server
	err := mgr.update()
	if err != nil {
		t.Fatalf("Failed to update metadata: %v", err)
	}

	// Retrieve and validate all metadata
	data, err := mgr.AllMetadata()
	if err != nil {
		t.Fatalf("Failed to retrieve metadata: %v", err)
	}

	if !reflect.DeepEqual(data, testMetadata) {
		t.Errorf("Metadata mismatch. Expected: %v, Got: %v", testMetadata, data)
	}
}

// TestNewMetadataMgr_LocalAndRemoteFailure verifies MetadataMgr creation fails when both local cache and remote are unavailable
func TestNewMetadataMgr_LocalAndRemoteFailure(t *testing.T) {
	tmpDir := t.TempDir()
	cachePath := filepath.Join(tmpDir, cachedMetadataFileName)
	err := os.WriteFile(cachePath, []byte(`{ invalid json `), 0644)
	if err != nil {
		t.Fatalf("Failed to write cache file: %v", err)
	}

	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusInternalServerError)
	}))
	defer server.Close()

	originalURL := remoteMetadataURL
	defer func() { remoteMetadataURL = originalURL }()
	remoteMetadataURL = server.URL + "/llpkgstore.json"

	_, err = NewMetadataMgr(tmpDir)
	if err == nil {
		t.Fatal("Expected error, but got nil")
	}
}

// TestMetadataMgr_MetadataByName_Existing validates MetadataByName returns correct metadata for existing modules
func TestMetadataMgr_MetadataByName_Existing(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/llpkgstore.json" {
			json.NewEncoder(w).Encode(testMetadata)
		} else {
			http.Error(w, "Not Found", http.StatusNotFound)
		}
	}))
	defer server.Close()

	originalURL := remoteMetadataURL
	defer func() { remoteMetadataURL = originalURL }()
	remoteMetadataURL = server.URL + "/llpkgstore.json"

	tmpDir := t.TempDir()
	mgr, _ := NewMetadataMgr(tmpDir)

	metadata, err := mgr.MetadataByName("example-module")
	if err != nil {
		t.Fatalf("Failed to retrieve metadata: %v", err)
	}

	if !reflect.DeepEqual(metadata, *testMetadata["example-module"]) {
		t.Errorf("Metadata mismatch. Expected: %v, Got: %v", testMetadata["example-module"], metadata)
	}
}

// TestMetadataMgr_MetadataByName_NotFound ensures MetadataByName returns error for non-existent modules
func TestMetadataMgr_MetadataByName_NotFound(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/llpkgstore.json" {
			json.NewEncoder(w).Encode(MetadataMap{})
		} else {
			http.Error(w, "Not Found", http.StatusNotFound)
		}
	}))
	defer server.Close()

	originalURL := remoteMetadataURL
	defer func() { remoteMetadataURL = originalURL }()
	remoteMetadataURL = server.URL + "/llpkgstore.json"

	tmpDir := t.TempDir()
	mgr, _ := NewMetadataMgr(tmpDir)

	_, err := mgr.MetadataByName("nonexistent-module")
	if !errors.Is(err, ErrMetadataNotInCache) {
		t.Errorf("Expected ErrMetadataNotInCache, but got: %v", err)
	}
}

// TestMetadataMgr_ModuleExists checks ModuleExists correctly identifies existing/non-existent modules
func TestMetadataMgr_ModuleExists(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/llpkgstore.json" {
			json.NewEncoder(w).Encode(testMetadata)
		} else {
			http.Error(w, "Not Found", http.StatusNotFound)
		}
	}))
	defer server.Close()

	originalURL := remoteMetadataURL
	defer func() { remoteMetadataURL = originalURL }()
	remoteMetadataURL = server.URL + "/llpkgstore.json"

	tmpDir := t.TempDir()
	mgr, _ := NewMetadataMgr(tmpDir)

	exists, err := mgr.ModuleExists("example-module")
	if err != nil {
		t.Fatalf("Failed to check module existence: %v", err)
	}
	if !exists {
		t.Fatal("Expected module to exist, but it doesn't")
	}

	exists, err = mgr.ModuleExists("nonexistent-module")
	if err != nil {
		t.Fatalf("Failed to check module existence: %v", err)
	}
	if exists {
		t.Fatal("Expected module to not exist, but it does")
	}
}

// TestMetadataMgr_UpdateError verifies Update() returns error for failed remote requests
func TestMetadataMgr_UpdateError(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/llpkgstore.json" {
			w.WriteHeader(http.StatusInternalServerError)
		} else {
			http.Error(w, "Not Found", http.StatusNotFound)
		}
	}))
	defer server.Close()

	originalURL := remoteMetadataURL
	defer func() { remoteMetadataURL = originalURL }()
	remoteMetadataURL = server.URL + "/llpkgstore.json"

	testMetadataJSON, err := json.Marshal(testMetadata)
	if err != nil {
		t.Fatalf("Failed to marshal test metadata: %v", err)
	}

	tmpDir := t.TempDir()
	// ensure metadataMgr can be created
	os.WriteFile(filepath.Join(tmpDir, "llpkgstore.json"), testMetadataJSON, 0644)
	mgr, err := NewMetadataMgr(tmpDir)
	if err != nil {
		t.Fatalf("Failed to create metadata manager: %v", err)
	}

	err = mgr.update()
	if err == nil {
		t.Fatal("Expected error, but got nil")
	}
}

// Test invalid remote data scenario
// TestNewMetadataMgr_InvalidRemoteData verifies creation fails with invalid remote JSON
func TestNewMetadataMgr_InvalidRemoteData(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/llpkgstore.json" {
			w.WriteHeader(http.StatusOK)
			w.Write([]byte(`invalid json`))
		} else {
			http.Error(w, "Not Found", http.StatusNotFound)
		}
	}))
	defer server.Close()

	originalURL := remoteMetadataURL
	defer func() { remoteMetadataURL = originalURL }()
	remoteMetadataURL = server.URL + "/llpkgstore.json"

	tmpDir := t.TempDir()
	_, err := NewMetadataMgr(tmpDir)
	if err == nil {
		t.Fatal("Expected error, but got nil")
	}
}

// Test recovery from corrupted cache file
// TestNewMetadataMgr_BadCacheFile checks recovery from corrupted cache by fetching remote data
func TestNewMetadataMgr_BadCacheFile(t *testing.T) {
	tmpDir := t.TempDir()
	cachePath := filepath.Join(tmpDir, cachedMetadataFileName)
	err := os.WriteFile(cachePath, []byte(`{ invalid json `), 0644)
	if err != nil {
		t.Fatalf("Failed to write cache file: %v", err)
	}

	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/llpkgstore.json" {
			json.NewEncoder(w).Encode(testMetadata)
		} else {
			http.Error(w, "Not Found", http.StatusNotFound)
		}
	}))
	defer server.Close()

	originalURL := remoteMetadataURL
	defer func() { remoteMetadataURL = originalURL }()
	remoteMetadataURL = server.URL + "/llpkgstore.json"

	mgr, err := NewMetadataMgr(tmpDir)
	if err != nil {
		t.Fatalf("Failed to create metadata manager: %v", err)
	}

	data, err := mgr.AllMetadata()
	if err != nil {
		t.Fatalf("Failed to retrieve metadata: %v", err)
	}
	if !reflect.DeepEqual(data, testMetadata) {
		t.Errorf("Metadata mismatch. Expected: %v, Got: %v", testMetadata, data)
	}
}
