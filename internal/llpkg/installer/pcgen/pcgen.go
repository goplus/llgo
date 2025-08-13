package pcgen

import (
	"bytes"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"text/template"
)

// GeneratePC generates pkg-config (.pc) files from template files (.pc.tmpl) in the specified directory.
// It processes all .pc.tmpl files found in pkgConfigPath, replaces template variables with actual values,
// and creates corresponding .pc files. The template files are removed after successful generation.
// The absOutputDir parameter is used as the "Prefix" value in template substitution.
func GeneratePC(pkgConfigPath, absOutputDir string) error {
	pcTmpls, err := filepath.Glob(filepath.Join(pkgConfigPath, "*.pc.tmpl"))
	if err != nil {
		return err
	}
	if len(pcTmpls) == 0 {
		return fmt.Errorf("failed to generate pc files for llpkg: pc files not found")
	}

	for _, pcTmpl := range pcTmpls {
		tmplContent, err := os.ReadFile(pcTmpl)
		if err != nil {
			return err
		}
		tmplName := filepath.Base(pcTmpl)
		tmpl, err := template.New(tmplName).Parse(string(tmplContent))
		if err != nil {
			return err
		}

		pcFilePath := filepath.Join(pkgConfigPath, strings.TrimSuffix(tmplName, ".tmpl"))
		var buf bytes.Buffer
		// The Prefix field specifies the absolute path to the output directory,
		// which is used to replace placeholders in the .pc template files.
		if err := tmpl.Execute(&buf, map[string]any{
			"Prefix": absOutputDir,
		}); err != nil {
			return err
		}
		if err := os.WriteFile(pcFilePath, buf.Bytes(), 0644); err != nil {
			return err
		}
		// remove .pc.tmpl file
		err = os.Remove(filepath.Join(pkgConfigPath, tmplName))
		if err != nil {
			return fmt.Errorf("failed to remove template file: %w", err)
		}
	}
	return nil
}
