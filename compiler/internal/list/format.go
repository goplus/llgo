package list

import (
	"encoding/json"
	"fmt"
	"io"
	"strings"
)

// Formatter 处理输出格式化
type Formatter struct {
	includeVersions bool
	jsonOutput      bool
}

// NewFormatter 创建新的Formatter实例
func NewFormatter(includeVersions, jsonOutput bool) *Formatter {
	return &Formatter{
		includeVersions: includeVersions,
		jsonOutput:      jsonOutput,
	}
}

// FormatOutput 根据指定格式输出模块信息
func (f *Formatter) FormatOutput(w io.Writer, modules []*ModuleInfo) error {
	if f.jsonOutput {
		return f.FormatJSONOutput(w, modules)
	}

	return f.FormatTextOutput(w, modules)
}

// FormatJSONOutput 生成JSON格式输出
func (f *Formatter) FormatJSONOutput(w io.Writer, modules []*ModuleInfo) error {
	encoder := json.NewEncoder(w)
	encoder.SetIndent("", "  ")

	// 单个模块直接输出，多个模块作为数组输出
	if len(modules) == 1 {
		return encoder.Encode(modules[0])
	}

	return encoder.Encode(modules)
}

// FormatTextOutput 生成文本格式输出
func (f *Formatter) FormatTextOutput(w io.Writer, modules []*ModuleInfo) error {
	for _, module := range modules {
		// 构造上游信息字符串
		var upstreamInfo string
		if module.LLPkg != nil && module.LLPkg.Upstream.Package.Name != "" {
			upstreamInfo = fmt.Sprintf("[%s:%s/%s]",
				module.LLPkg.Upstream.Installer.Name,
				module.LLPkg.Upstream.Package.Name,
				module.LLPkg.Upstream.Package.Version)
		}

		// 输出模块信息
		fmt.Fprintf(w, "%s %s%s\n", module.Path, module.Version, upstreamInfo)
	}

	return nil
}

// FormatModuleWithVersions 格式化带有多个版本信息的模块
func (f *Formatter) FormatModuleWithVersions(w io.Writer, modulePath string, versions []string, llpkgInfo []*LLPkgInfo) error {
	// 使用StringBuilder提高性能
	var builder strings.Builder
	builder.WriteString(modulePath)
	builder.WriteString(" ")

	for i, version := range versions {
		if i > 0 {
			builder.WriteString(" ")
		}

		builder.WriteString(version)

		// 添加上游信息
		if i < len(llpkgInfo) && llpkgInfo[i] != nil {
			installer := llpkgInfo[i].Upstream.Installer.Name
			pkgName := llpkgInfo[i].Upstream.Package.Name
			pkgVersion := llpkgInfo[i].Upstream.Package.Version

			if installer != "" && pkgName != "" && pkgVersion != "" {
				builder.WriteString(fmt.Sprintf("[%s:%s/%s]", installer, pkgName, pkgVersion))
			}
		}
	}

	_, err := fmt.Fprintln(w, builder.String())
	return err
}
