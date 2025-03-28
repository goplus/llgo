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

// FormatModuleOutput 格式化模块输出
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
		return fmt.Errorf("未知的输出格式")
	}
}

// FormatModuleVersionsOutput 格式化模块版本输出
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
		// 构建JSON结构
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
		return fmt.Errorf("未知的输出格式")
	}
}

// VersionInfo 表示版本信息
type VersionInfo struct {
	GoVersion     string `json:"GoVersion"`
	CVersion      string `json:"CVersion,omitempty"`
	InstallerName string `json:"InstallerName,omitempty"`
	PackageName   string `json:"PackageName,omitempty"`
}
