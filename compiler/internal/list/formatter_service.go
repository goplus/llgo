// formatter_service.go
package list

import (
	"encoding/json"
	"fmt"
	"github.com/goplus/llgo/compiler/internal/mod"
	"io"
	"strings"
)

// FormatterService 负责格式化输出
type FormatterService struct {
	includeVersions bool
	jsonOutput      bool
	logger          mod.Logger
}

// NewFormatterService 创建一个新的FormatterService
func NewFormatterService(includeVersions, jsonOutput bool, logger mod.Logger) *FormatterService {
	if logger == nil {
		logger = mod.DefaultLogger
	}

	return &FormatterService{
		includeVersions: includeVersions,
		jsonOutput:      jsonOutput,
		logger:          logger,
	}
}

// FormatModuleRef 格式化单个ModuleRef的输出
func (f *FormatterService) FormatModuleRef(w io.Writer, ref *mod.ModuleRef, llpkgInfo *mod.LLPkgInfo) error {
	if f.jsonOutput {
		return f.formatJSONOutput(w, ref, llpkgInfo)
	}

	return f.formatTextOutput(w, ref, llpkgInfo)
}

// FormatModuleInfoList 格式化ModuleInfo列表的输出
func (f *FormatterService) FormatModuleInfoList(w io.Writer, modules []*mod.ModuleInfo) error {
	if f.jsonOutput {
		return f.formatJSONList(w, modules)
	}

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

// formatTextOutput 生成文本格式输出
func (f *FormatterService) formatTextOutput(w io.Writer, ref *mod.ModuleRef, llpkgInfo *mod.LLPkgInfo) error {
	var upstreamInfo string
	if llpkgInfo != nil && llpkgInfo.Upstream.Package.Name != "" {
		upstreamInfo = fmt.Sprintf("[%s:%s/%s]",
			llpkgInfo.Upstream.Installer.Name,
			llpkgInfo.Upstream.Package.Name,
			llpkgInfo.Upstream.Package.Version)
	}

	if f.includeVersions && len(ref.GoVersions) > 0 {
		// 包含多个版本
		var builder strings.Builder
		builder.WriteString(ref.ModulePath)
		builder.WriteString(" ")

		for i, version := range ref.GoVersions {
			if i > 0 {
				builder.WriteString(" ")
			}
			builder.WriteString(version)
			builder.WriteString(upstreamInfo)
		}

		_, err := fmt.Fprintln(w, builder.String())
		return err
	} else {
		// 单个版本
		fmt.Fprintf(w, "%s %s%s\n", ref.ModulePath, ref.GoVersion, upstreamInfo)
	}

	return nil
}

// formatJSONOutput 生成JSON格式输出
func (f *FormatterService) formatJSONOutput(w io.Writer, ref *mod.ModuleRef, llpkgInfo *mod.LLPkgInfo) error {
	moduleInfo := &mod.ModuleInfo{
		Path:    ref.ModulePath,
		Version: ref.GoVersion,
		LLPkg:   llpkgInfo,
	}

	encoder := json.NewEncoder(w)
	encoder.SetIndent("", "  ")
	return encoder.Encode(moduleInfo)
}

// formatJSONList 生成JSON格式列表输出
func (f *FormatterService) formatJSONList(w io.Writer, modules []*mod.ModuleInfo) error {
	encoder := json.NewEncoder(w)
	encoder.SetIndent("", "  ")

	// 单个模块直接输出，多个模块作为数组输出
	if len(modules) == 1 {
		return encoder.Encode(modules[0])
	}

	return encoder.Encode(modules)
}
