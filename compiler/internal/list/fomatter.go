package list

import (
	"encoding/json"
	"fmt"
	"io"
	"strings"

	"github.com/goplus/llpkgstore/config"
)

type Format int

const (
	FormatText Format = iota
	FormatJSON
)

// FormatModuleOutput format the module output
func FormatModuleOutput(w io.Writer, modulePath string, version string, cfg *config.LLPkgConfig, format Format) error {
	switch format {
	case FormatText:
		var builder strings.Builder
		builder.WriteString(modulePath)

		if version != "" {
			builder.WriteString(" ")
			builder.WriteString(version)
		}

		if cfg != nil {
			builder.WriteString(" [")
			builder.WriteString(cfg.Upstream.Installer.Name)
			builder.WriteString(":")
			builder.WriteString(cfg.Upstream.Package.Name)
			builder.WriteString("/")
			builder.WriteString(cfg.Upstream.Package.Version)
			builder.WriteString("]")
		}

		builder.WriteString("\n")
		_, err := w.Write([]byte(builder.String()))
		return err

	case FormatJSON:
		info := ModuleInfo{
			Path:    modulePath,
			Version: version,
		}

		if cfg != nil {
			info.LLPkg = convertToLLPkgInfo(*cfg)
		}

		bytes, err := json.MarshalIndent(info, "", "  ")
		if err != nil {
			return err
		}

		_, err = w.Write(bytes)
		return err

	default:
		return fmt.Errorf("unknown output format")
	}
}

// FormatModuleVersionsOutput format the module versions output
func FormatModuleVersionsOutput(w io.Writer, modulePath string, versions []VersionInfo, format Format) error {
	switch format {
	case FormatText:
		var builder strings.Builder
		builder.WriteString(modulePath)

		for _, ver := range versions {
			builder.WriteString(" ")
			builder.WriteString(ver.GoVersion)

			if ver.CVersion != "" {
				builder.WriteString("[")
				builder.WriteString(ver.InstallerName)
				builder.WriteString(":")
				builder.WriteString(ver.PackageName)
				builder.WriteString("/")
				builder.WriteString(ver.CVersion)
				builder.WriteString("]")
			}
		}

		builder.WriteString("\n")
		_, err := w.Write([]byte(builder.String()))
		return err

	case FormatJSON:
		// Build the JSON structure
		info := struct {
			Path     string        `json:"Path"`
			Versions []VersionInfo `json:"Versions"`
		}{
			Path:     modulePath,
			Versions: versions,
		}

		bytes, err := json.MarshalIndent(info, "", "  ")
		if err != nil {
			return err
		}

		_, err = w.Write(bytes)
		return err

	default:
		return fmt.Errorf("unknown output format")
	}
}

// VersionInfo represents the version information
type VersionInfo struct {
	GoVersion     string `json:"GoVersion"`
	CVersion      string `json:"CVersion,omitempty"`
	InstallerName string `json:"InstallerName,omitempty"`
	PackageName   string `json:"PackageName,omitempty"`
}
