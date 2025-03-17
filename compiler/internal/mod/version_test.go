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
		VersionMappings: []*VersionMapping{
			{CVersion: "1.7.18", GoVersions: []string{"v1.2.0", "v1.2.1"}},
			{CVersion: "1.7.19", GoVersions: []string{"v1.3.0"}},
			{CVersion: "1.8.0", GoVersions: []string{"v1.4.0", "v1.4.1"}},
		},
	},
	"empty-module": &Metadata{VersionMappings: []*VersionMapping{}},
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

// TestLatestCVer tests the implementation of the LatestCVer function
func TestLatestCVer(t *testing.T) {
	mgr, cleanup := setupTestEnv(t, enhancedTestVersionData)
	defer cleanup()

	// Test normal case
	latestCVer, err := mgr.LatestCVer("test-module")
	if err != nil {
		t.Fatal(err)
	}
	if latestCVer != "1.8.0" {
		t.Errorf("Expected latestCVer '1.8.0', got '%s'", latestCVer)
	}

	// Test empty module
	_, err = mgr.LatestCVer("empty-module")
	if err == nil {
		t.Fatal("Expected error for empty module")
	}

	// Test non-existent module
	_, err = mgr.LatestCVer("non-existent-module")
	if err == nil {
		t.Fatal("Expected error for non-existent module")
	}
}

// TestLatestGoVer tests the implementation of the LatestGoVer function
func TestLatestGoVer(t *testing.T) {
	mgr, cleanup := setupTestEnv(t, enhancedTestVersionData)
	defer cleanup()

	// Test normal case
	latestGoVer, err := mgr.LatestGoVer("test-module")
	if err != nil {
		t.Fatal(err)
	}
	if latestGoVer != "v1.4.1" {
		t.Errorf("Expected latestGoVer 'v1.4.1', got '%s'", latestGoVer)
	}

	// Test empty module
	_, err = mgr.LatestGoVer("empty-module")
	if err == nil {
		t.Fatal("Expected error for empty module")
	}

	// Test non-existent module
	_, err = mgr.LatestGoVer("non-existent-module")
	if err == nil {
		t.Fatal("Expected error for non-existent module")
	}
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

// TestCVerFromGoVer tests the implementation of the CVerFromGoVer function
func TestCVerFromGoVer(t *testing.T) {
	mgr, cleanup := setupTestEnv(t, enhancedTestVersionData)
	defer cleanup()

	// Test normal case
	cVer, err := mgr.CVerFromGoVer("test-module", "v1.3.0")
	if err != nil {
		t.Fatal(err)
	}
	if cVer != "1.7.19" {
		t.Errorf("Expected C version '1.7.19', got '%s'", cVer)
	}

	// Test non-existent Go version
	_, err = mgr.CVerFromGoVer("test-module", "non-existent-version")
	if err == nil {
		t.Fatal("Expected error for non-existent Go version")
	}

	// Test non-existent module
	_, err = mgr.CVerFromGoVer("non-existent-module", "v1.3.0")
	if err == nil {
		t.Fatal("Expected error for non-existent module")
	}
}

// TestAllGoVersFromName tests the implementation of the AllGoVersFromName function
func TestAllGoVersFromName(t *testing.T) {
	mgr, cleanup := setupTestEnv(t, enhancedTestVersionData)
	defer cleanup()

	// Test normal case
	goVers, err := mgr.AllGoVersFromName("test-module")
	if err != nil {
		t.Fatal(err)
	}
	expected := []string{"v1.2.0", "v1.2.1", "v1.3.0", "v1.4.0", "v1.4.1"}
	if !reflect.DeepEqual(goVers, expected) {
		t.Errorf("Expected %v, got %v", expected, goVers)
	}

	// Test empty module
	goVers, err = mgr.AllGoVersFromName("empty-module")
	if err != nil {
		t.Fatal(err)
	}
	if len(goVers) != 0 {
		t.Errorf("Expected empty slice, got %v", goVers)
	}

	// Test non-existent module
	_, err = mgr.AllGoVersFromName("non-existent-module")
	if err == nil {
		t.Fatal("Expected error for non-existent module")
	}
}

// TestAllCVersFromName tests the implementation of the AllCVersFromName function
func TestAllCVersFromName(t *testing.T) {
	mgr, cleanup := setupTestEnv(t, enhancedTestVersionData)
	defer cleanup()

	// Test normal case
	cVers, err := mgr.AllCVersFromName("test-module")
	if err != nil {
		t.Fatal(err)
	}
	expected := []string{"1.7.18", "1.7.19", "1.8.0"}
	if !reflect.DeepEqual(cVers, expected) {
		t.Errorf("Expected %v, got %v", expected, cVers)
	}

	// Test empty module
	cVers, err = mgr.AllCVersFromName("empty-module")
	if err != nil {
		t.Fatal(err)
	}
	if len(cVers) != 0 {
		t.Errorf("Expected empty slice, got %v", cVers)
	}

	// Test non-existent module
	_, err = mgr.AllCVersFromName("non-existent-module")
	if err == nil {
		t.Fatal("Expected error for non-existent module")
	}
}

// TestAllVersionMappingsFromName tests the implementation of the AllVersionMappingsFromName function
func TestAllVersionMappingsFromName(t *testing.T) {
	mgr, cleanup := setupTestEnv(t, enhancedTestVersionData)
	defer cleanup()

	// Test normal case
	mappings, err := mgr.AllVersionMappingsFromName("test-module")
	if err != nil {
		t.Fatal(err)
	}
	if len(mappings) != 3 {
		t.Errorf("Expected 3 mappings, got %d", len(mappings))
	}

	// Test empty module
	mappings, err = mgr.AllVersionMappingsFromName("empty-module")
	if err != nil {
		t.Fatal(err)
	}
	if len(mappings) != 0 {
		t.Errorf("Expected empty mappings, got %d", len(mappings))
	}

	// Test non-existent module
	_, err = mgr.AllVersionMappingsFromName("non-existent-module")
	if err == nil {
		t.Fatal("Expected error for non-existent module")
	}
}
