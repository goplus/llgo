// domain.go
package mod

import (
	"fmt"
	"slices"
	"strings"
	"time"
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

// ModuleStore 定义模块存储的接口
type ModuleStore interface {
	GetStore() (*Store, error)
	GetPackage(name string) (*Package, bool)
	GetAllPackages() *Store
}

// Store 代表llpkgstore.json中的全部数据
type Store map[string]*Package

// 保留与现有代码兼容的数据结构
type Package struct {
	Versions []VersionMapping `json:"versions"`
}

type VersionMapping struct {
	CVersion   string   `json:"c"`
	GoVersions []string `json:"go"`
}

type LLPkgInfo struct {
	Upstream struct {
		Installer struct {
			Name   string            `json:"name"`
			Config map[string]string `json:"config"`
		} `json:"installer"`
		Package struct {
			Name    string `json:"name"`
			Version string `json:"version"`
		} `json:"package"`
	} `json:"upstream"`
}

type ModuleInfo struct {
	Path      string     `json:"path"`
	Version   string     `json:"version"`
	Time      time.Time  `json:"time,omitempty"`
	Indirect  bool       `json:"indirect,omitempty"`
	GoVersion string     `json:"go_version,omitempty"`
	LLPkg     *LLPkgInfo `json:"llpkg,omitempty"`
}

func (p *Package) GetLatestVersion() string {
	if len(p.Versions) == 0 {
		return ""
	}
	return p.Versions[len(p.Versions)-1].GoVersions[0]
}

func (p *Package) GetCVersionFromGoVersion(goVersion string) string {
	for _, mapping := range p.Versions {
		if slices.Index(mapping.GoVersions, goVersion) != -1 {
			return mapping.CVersion
		}
	}
	return ""
}

// 调试版本
func (p *Package) GetLatestGoVersionFromCVersion(cVersion string) string {
	fmt.Printf("寻找C版本: %s\n", cVersion)
	for i, mapping := range p.Versions {
		fmt.Printf("  检查映射[%d]: C版本=%s, Go版本=%v\n",
			i, mapping.CVersion, mapping.GoVersions)
		if mapping.CVersion == cVersion {
			result := ""
			if len(mapping.GoVersions) > 0 {
				result = mapping.GoVersions[len(mapping.GoVersions)-1]
			}
			fmt.Printf("  找到匹配! 返回: %s\n", result)
			return result
		}
	}
	fmt.Println("  未找到匹配")
	return ""
}
