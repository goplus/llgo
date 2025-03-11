// domain.go
package mod

import (
	"fmt"
	"strings"
)

// ModuleRef 表示一个模块引用，是核心领域对象
type ModuleRef struct {
	// 基本信息
	Name        string // 原始名称
	VersionSpec string // 原始版本规范(如果有)

	// 解析结果
	ModulePath string   // 完整模块路径
	CVersion   string   // C库版本
	GoVersion  string   // Go模块版本
	GoVersions []string // 可用的Go版本列表

	// 标志字段
	IsCLib      bool // 是否是C库
	IsGoVersion bool // 是否是Go版本格式
	IsLatest    bool // 是否请求最新版本
}

// NewModuleRef 创建一个新的ModuleRef实例
func NewModuleRef(name, versionSpec string) *ModuleRef {
	return &ModuleRef{
		Name:        name,
		VersionSpec: versionSpec,
		IsCLib:      !strings.Contains(name, "/"),
		IsLatest:    versionSpec == "latest",
		IsGoVersion: strings.HasPrefix(versionSpec, "v"),
	}
}

// Tag 返回模块的标签，用于GitHub引用
func (m *ModuleRef) Tag() string {
	if m.GoVersion != "" {
		return fmt.Sprintf("%s/%s", m.Name, m.GoVersion)
	}
	return ""
}
