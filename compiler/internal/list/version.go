package list

import (
	"errors"
	"fmt"
	"sort"
	"strings"

	"github.com/Masterminds/semver/v3"
)

// VersionMapper 处理版本映射查询
type VersionMapper struct {
	store Store
}

// NewVersionMapper 创建新的VersionMapper实例
func NewVersionMapper(store *Store) *VersionMapper {
	return &VersionMapper{
		store: *store,
	}
}

// ResolveCVersion 将C库版本解析为Go模块版本
func (v *VersionMapper) ResolveCVersion(clib, cversion string) (modulePath string, versions []string, err error) {
	// 构造标准模块路径
	modulePath = fmt.Sprintf("github.com/goplus/llpkg/%s", clib)

	// 查找包信息
	pkg, ok := v.store[clib]
	if !ok {
		return modulePath, nil, fmt.Errorf("'%s' not found in the package store - please check spelling or contact package maintainers", clib)
	}

	// 处理"latest"版本请求
	if cversion == "latest" {
		var allVersions []string
		for _, mapping := range pkg.Versions {
			allVersions = append(allVersions, mapping.GoVersions...)
		}

		latestVersion := v.GetLatestVersion(allVersions)
		if latestVersion == "" {
			return modulePath, nil, fmt.Errorf("no published versions found for C library '%s'", clib)
		}

		return modulePath, []string{latestVersion}, nil
	}

	// 查找特定版本
	for _, mapping := range pkg.Versions {
		if mapping.CVersion == cversion {
			if len(mapping.GoVersions) == 0 {
				return modulePath, nil, fmt.Errorf("'%s' version '%s' has no mapped Go versions", clib, cversion)
			}
			return modulePath, mapping.GoVersions, nil
		}
	}

	// 提供版本建议
	availableVersions := make([]string, 0, len(pkg.Versions))
	for _, mapping := range pkg.Versions {
		availableVersions = append(availableVersions, mapping.CVersion)
	}

	suggestion := "available versions: " + strings.Join(availableVersions, ", ")
	return modulePath, nil, fmt.Errorf("version '%s' not found for C library '%s'\n%s", cversion, clib, suggestion)
}

// GetAllVersionMappings 获取指定C库的所有版本映射
func (v *VersionMapper) GetAllVersionMappings(clib string) ([]VersionMapping, error) {
	pkg, ok := v.store[clib]
	if !ok {
		return nil, errors.New("C library not found: " + clib)
	}

	return pkg.Versions, nil
}

// GetLatestVersion 获取最新的Go版本
func (v *VersionMapper) GetLatestVersion(versions []string) string {
	if len(versions) == 0 {
		return ""
	}

	// 将版本字符串转换为semver对象进行比较
	var semvers []*semver.Version
	for _, version := range versions {
		// 去除可能的v前缀以兼容semver库
		versionStr := strings.TrimPrefix(version, "v")
		sv, err := semver.NewVersion(versionStr)
		if err == nil {
			semvers = append(semvers, sv)
		}
	}

	if len(semvers) == 0 {
		return versions[0] // 无法解析任何版本，使用第一个
	}

	// 排序找出最新版本
	sort.Sort(semver.Collection(semvers))
	return "v" + semvers[len(semvers)-1].String()
}

// IsCLibrary 判断给定的字符串是否是C库引用
func (v *VersionMapper) IsCLibrary(ref string) bool {
	// 不包含斜杠和域名的应该是C库
	return !strings.Contains(ref, "/") && !strings.Contains(ref, ".")
}

// ParseModuleReference 解析模块引用（形如"name@version"）
func (v *VersionMapper) ParseModuleReference(ref string) (name, version string) {
	parts := strings.SplitN(ref, "@", 2)
	name = parts[0]

	if len(parts) > 1 {
		version = parts[1]
	}

	return name, version
}
