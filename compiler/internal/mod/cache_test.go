package mod

import (
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"reflect"
	"testing"
	"time"
)

// Test data
var testCacheData = MetadataMap{
	"example-module": &Metadata{
		Versions: map[CVersion][]GoVersion{
			"1.7.18": {"v1.2.0"},
		},
	},
}

func TestCache_InitFromRemote(t *testing.T) {
	// Create mock HTTP server
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Last-Modified", "Sat, 01 Jan 2022 00:00:00 GMT")
		json.NewEncoder(w).Encode(testCacheData)
	}))
	defer server.Close()

	// Create temporary directory
	tmpDir := t.TempDir()
	cachePath := filepath.Join(tmpDir, "test_cache.json")

	// Initialize cache
	cache, err := NewCache[MetadataMap](cachePath, server.URL)
	if err != nil {
		t.Fatalf("Failed to create cache: %v", err)
	}

	// Validate data
	if !reflect.DeepEqual(cache.Data(), testCacheData) {
		t.Errorf("Cache data mismatch. Expected: %v, Got: %v", testCacheData, cache.Data())
	}
}

// Test loading cache from disk (skip remote request)
func TestCache_LoadFromDisk(t *testing.T) {
	tmpDir := t.TempDir()
	cachePath := filepath.Join(tmpDir, "existing_cache.json")

	// Manually write cache file
	err := os.WriteFile(cachePath, []byte(`{"example-module":{"versions":{"1.7.18":["v1.2.0"]}}}`), 0644)
	if err != nil {
		t.Fatalf("Failed to write cache file: %v", err)
	}

	// Initialize cache (should load from local file directly)
	cache, err := NewCache[MetadataMap](cachePath, "https://unused.com")
	if err != nil {
		t.Fatalf("Failed to create cache: %v", err)
	}

	// Validate data
	if !reflect.DeepEqual(cache.Data(), testCacheData) {
		t.Errorf("Cache data mismatch. Expected: %v, Got: %v", testCacheData, cache.Data())
	}
}

// Test HTTP 304 Not Modified response
func TestCache_Fetch304(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Header.Get("If-Modified-Since") == "old-time" {
			w.WriteHeader(http.StatusNotModified)
		} else {
			w.WriteHeader(http.StatusOK)
			json.NewEncoder(w).Encode(testCacheData)
		}
	}))
	defer server.Close()

	tmpDir := t.TempDir()
	cachePath := filepath.Join(tmpDir, "cache.json")

	// Initial load
	cache, _ := NewCache[MetadataMap](cachePath, server.URL)

	// Set modTime to an old time
	cache.modTime = time.Date(2022, 1, 1, 0, 0, 0, 0, time.UTC)

	// Second fetch should return 304
	err := cache.fetch()
	if err != nil {
		t.Fatalf("Failed to fetch cache: %v", err)
	}

	// Validate data remains unchanged
	if !reflect.DeepEqual(cache.Data(), testCacheData) {
		t.Errorf("Cache data mismatch. Expected: %v, Got: %v", testCacheData, cache.Data())
	}
}

// Test invalid JSON response
func TestCache_InvalidJSON(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte(`invalid json`))
	}))
	defer server.Close()

	tmpDir := t.TempDir()
	_, err := NewCache[MetadataMap](filepath.Join(tmpDir, "cache.json"), server.URL)

	if err == nil {
		t.Errorf("Expected error for invalid JSON response, but got nil")
	}
}
