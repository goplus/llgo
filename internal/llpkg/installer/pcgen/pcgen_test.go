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

func TestGeneratePC_ReadFileError(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "pcgen_readfile_test")
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

	// Create a template file with no read permissions
	tmplPath := filepath.Join(pkgConfigPath, "test.pc.tmpl")
	err = os.WriteFile(tmplPath, []byte("test content"), 0000) // No permissions
	if err != nil {
		t.Fatal(err)
	}

	err = GeneratePC(pkgConfigPath, absOutputDir)
	if err == nil {
		t.Error("expected error when template file cannot be read")
	}
}

func TestGeneratePC_WriteFileError(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "pcgen_writefile_test")
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

	// Create a valid template
	tmplContent := `prefix={{.Prefix}}`
	tmplPath := filepath.Join(pkgConfigPath, "test.pc.tmpl")
	err = os.WriteFile(tmplPath, []byte(tmplContent), 0644)
	if err != nil {
		t.Fatal(err)
	}

	// Create a directory with the same name as the output file to cause write error
	pcPath := filepath.Join(pkgConfigPath, "test.pc")
	err = os.MkdirAll(pcPath, 0755)
	if err != nil {
		t.Fatal(err)
	}

	err = GeneratePC(pkgConfigPath, absOutputDir)
	if err == nil {
		t.Error("expected error when output file cannot be written")
	}
}

func TestGeneratePC_MultipleTemplates(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "pcgen_multiple_test")
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

	// Create multiple template files
	templates := map[string]string{
		"lib1.pc.tmpl": `prefix={{.Prefix}}
Name: lib1
Version: 1.0.0`,
		"lib2.pc.tmpl": `prefix={{.Prefix}}
Name: lib2
Version: 2.0.0`,
	}

	for filename, content := range templates {
		tmplPath := filepath.Join(pkgConfigPath, filename)
		err = os.WriteFile(tmplPath, []byte(content), 0644)
		if err != nil {
			t.Fatal(err)
		}
	}

	err = GeneratePC(pkgConfigPath, absOutputDir)
	if err != nil {
		t.Fatal(err)
	}

	// Check that both PC files were created and template files were removed
	for filename := range templates {
		pcFilename := strings.TrimSuffix(filename, ".tmpl")
		pcPath := filepath.Join(pkgConfigPath, pcFilename)

		// Check PC file exists
		if _, err := os.Stat(pcPath); os.IsNotExist(err) {
			t.Errorf("PC file %s should exist", pcFilename)
		}

		// Check template file was removed
		tmplPath := filepath.Join(pkgConfigPath, filename)
		if _, err := os.Stat(tmplPath); !os.IsNotExist(err) {
			t.Errorf("template file %s should have been removed", filename)
		}
	}
}

func TestGeneratePC_RemoveTemplateError(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "pcgen_remove_error_test")
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

	// Create a valid template
	tmplContent := `prefix={{.Prefix}}`
	tmplPath := filepath.Join(pkgConfigPath, "test.pc.tmpl")
	err = os.WriteFile(tmplPath, []byte(tmplContent), 0644)
	if err != nil {
		t.Fatal(err)
	}

	// Create the PC file first, then make it read-only to prevent removal
	pcPath := filepath.Join(pkgConfigPath, "test.pc")
	err = os.WriteFile(pcPath, []byte("dummy"), 0644)
	if err != nil {
		t.Fatal(err)
	}

	// Make the template file read-only to prevent removal
	err = os.Chmod(tmplPath, 0444)
	if err != nil {
		t.Fatal(err)
	}
	defer os.Chmod(tmplPath, 0644) // Restore permissions for cleanup

	// Make the directory read-only to prevent file removal
	err = os.Chmod(pkgConfigPath, 0555)
	if err != nil {
		t.Fatal(err)
	}
	defer os.Chmod(pkgConfigPath, 0755) // Restore permissions for cleanup

	err = GeneratePC(pkgConfigPath, absOutputDir)
	if err == nil {
		t.Error("expected error when template file cannot be removed")
	}
	if !strings.Contains(err.Error(), "failed to remove template file") {
		t.Errorf("expected 'failed to remove template file' error, got %s", err.Error())
	}
}

func TestGeneratePC_TemplateExecuteError(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "pcgen_execute_error_test")
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

	// Create a template that will cause execution error by calling a function that doesn't exist
	tmplContent := `prefix={{.Prefix}}
{{.Prefix | nonExistentFunction}}`
	tmplPath := filepath.Join(pkgConfigPath, "test.pc.tmpl")
	err = os.WriteFile(tmplPath, []byte(tmplContent), 0644)
	if err != nil {
		t.Fatal(err)
	}

	err = GeneratePC(pkgConfigPath, absOutputDir)
	if err == nil {
		t.Error("expected error when template execution fails")
	}
}

func TestGeneratePC_GlobError(t *testing.T) {
	// Test with an invalid glob pattern that would cause filepath.Glob to return an error
	// This is difficult to trigger in practice, but we can try with a malformed pattern
	invalidPath := "[\x00"
	absOutputDir := "/usr/local"

	err := GeneratePC(invalidPath, absOutputDir)
	if err == nil {
		t.Error("expected error for invalid glob pattern")
	}
}
