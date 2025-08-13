package pcgen

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestGeneratePC(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "pcgen_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	pkgConfigPath := filepath.Join(tempDir, "pkgconfig")
	err = os.MkdirAll(pkgConfigPath, 0755)
	if err != nil {
		t.Fatal(err)
	}

	absOutputDir := "/usr/local"

	tmplContent := `prefix={{.Prefix}}
libdir=${prefix}/lib
includedir=${prefix}/include
bindir=${prefix}/bin

Name: libexslt
Description: Conan component: libexslt
Version: 1.1.42
Libs: -L"${libdir}" -lexslt
Cflags: -I"${includedir}"
Requires: libxslt`

	tmplPath := filepath.Join(pkgConfigPath, "libexslt.pc.tmpl")
	err = os.WriteFile(tmplPath, []byte(tmplContent), 0644)
	if err != nil {
		t.Fatal(err)
	}

	err = GeneratePC(pkgConfigPath, absOutputDir)
	if err != nil {
		t.Fatal(err)
	}

	pcPath := filepath.Join(pkgConfigPath, "libexslt.pc")
	content, err := os.ReadFile(pcPath)
	if err != nil {
		t.Fatal(err)
	}

	expectedContent := `prefix=/usr/local
libdir=${prefix}/lib
includedir=${prefix}/include
bindir=${prefix}/bin

Name: libexslt
Description: Conan component: libexslt
Version: 1.1.42
Libs: -L"${libdir}" -lexslt
Cflags: -I"${includedir}"
Requires: libxslt`

	if string(content) != expectedContent {
		t.Errorf("expected:\n%s\ngot:\n%s", expectedContent, string(content))
	}

	if _, err := os.Stat(tmplPath); !os.IsNotExist(err) {
		t.Error("template file should have been removed")
	}
}

func TestGeneratePC_NoTemplates(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "pcgen_no_templates_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	pkgConfigPath := filepath.Join(tempDir, "pkgconfig")
	err = os.MkdirAll(pkgConfigPath, 0755)
	if err != nil {
		t.Fatal(err)
	}

	absOutputDir := "/usr/local"

	err = GeneratePC(pkgConfigPath, absOutputDir)
	if err == nil {
		t.Error("expected error when no template files found")
	}
	if !strings.Contains(err.Error(), "pc files not found") {
		t.Errorf("expected 'pc files not found' error, got %s", err.Error())
	}
}

func TestGeneratePC_InvalidTemplate(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "pcgen_invalid_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	pkgConfigPath := filepath.Join(tempDir, "pkgconfig")
	err = os.MkdirAll(pkgConfigPath, 0755)
	if err != nil {
		t.Fatal(err)
	}

	absOutputDir := "/usr/local"

	invalidTmplContent := `prefix={{.Prefix
Name: invalid`

	tmplPath := filepath.Join(pkgConfigPath, "invalid.pc.tmpl")
	err = os.WriteFile(tmplPath, []byte(invalidTmplContent), 0644)
	if err != nil {
		t.Fatal(err)
	}

	err = GeneratePC(pkgConfigPath, absOutputDir)
	if err == nil {
		t.Error("expected error for invalid template")
	}
}

func TestGeneratePC_NonexistentPath(t *testing.T) {
	nonexistentPath := "/nonexistent/path/pkgconfig"
	absOutputDir := "/usr/local"

	err := GeneratePC(nonexistentPath, absOutputDir)
	if err == nil {
		t.Error("expected error for nonexistent path")
	}
}
