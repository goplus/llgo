package mod

import (
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"reflect"
	"testing"
)

// Define more enriched test data
var enhancedTestVersionData = MetadataMap{
	"test-module": &Metadata{
		Versions: map[CVersion][]GoVersion{
			"1.7.18": {"v1.2.0", "v1.2.1"},
			"1.7.19": {"v1.3.0"},
			"1.8.0":  {"v1.4.0", "v1.4.1"},
		},
	},
	"empty-module": &Metadata{Versions: map[CVersion][]GoVersion{}},
}

// Set up test environment
func setupTestEnv(t *testing.T, testData MetadataMap) (*metadataMgr, func()) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		json.NewEncoder(w).Encode(testData)
	}))

	originalURL := remoteMetadataURL
	remoteMetadataURL = server.URL

	tmpDir := t.TempDir()
	mgr, err := NewMetadataMgr(tmpDir)
	if err != nil {
		t.Fatal(err)
	}

	cleanup := func() {
		server.Close()
		remoteMetadataURL = originalURL
	}

	return mgr, cleanup
}

// TestLatestGoVerFromCVer tests the implementation of the LatestGoVerFromCVer function
func TestLatestGoVerFromCVer(t *testing.T) {
	mgr, cleanup := setupTestEnv(t, enhancedTestVersionData)
	defer cleanup()

	// Test normal case
	latestGoVer, err := mgr.LatestGoVerFromCVer("test-module", "1.7.18")
	if err != nil {
		t.Fatal(err)
	}
	if latestGoVer != "v1.2.1" {
		t.Errorf("Expected latestGoVer 'v1.2.1', got '%s'", latestGoVer)
	}

	// Test non-existent C version
	_, err = mgr.LatestGoVerFromCVer("test-module", "non-existent-version")
	if err == nil {
		t.Fatal("Expected error for non-existent C version")
	}

	// Test non-existent module
	_, err = mgr.LatestGoVerFromCVer("non-existent-module", "1.7.18")
	if err == nil {
		t.Fatal("Expected error for non-existent module")
	}
}

// TestGoVersFromCVer tests the implementation of the GoVersFromCVer function
func TestGoVersFromCVer(t *testing.T) {
	mgr, cleanup := setupTestEnv(t, enhancedTestVersionData)
	defer cleanup()

	// Test normal case
	goVers, err := mgr.GoVersFromCVer("test-module", "1.7.18")
	if err != nil {
		t.Fatal(err)
	}
	expected := []string{"v1.2.0", "v1.2.1"}
	if !reflect.DeepEqual(goVers, expected) {
		t.Errorf("Expected %v, got %v", expected, goVers)
	}

	// Test non-existent C version
	_, err = mgr.GoVersFromCVer("test-module", "non-existent-version")
	if err == nil {
		t.Fatal("Expected error for non-existent C version")
	}

	// Test non-existent module
	_, err = mgr.GoVersFromCVer("non-existent-module", "1.7.18")
	if err == nil {
		t.Fatal("Expected error for non-existent module")
	}
}
