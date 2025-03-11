// version_service.go
package list

import (
	"fmt"
	"github.com/goplus/llgo/compiler/internal/mod"
	"regexp"
	"sort"
	"strings"

	"github.com/Masterminds/semver/v3"
)

// VersionService 负责处理版本相关的逻辑
type VersionService struct {
	store  mod.ModuleStore
	logger mod.Logger
}

// NewVersionService 创建一个新的VersionService
func NewVersionService(store mod.ModuleStore, logger mod.Logger) *VersionService {
	if logger == nil {
		logger = mod.DefaultLogger
	}

	return &VersionService{
		store:  store,
		logger: logger,
	}
}

// EnrichModuleRef 填充ModuleRef的信息
func (v *VersionService) EnrichModuleRef(ref *mod.ModuleRef) error {
	// 设置模块路径
	if ref.IsCLib {
		ref.ModulePath = fmt.Sprintf("github.com/NEKO-CwC/llpkgstore/%s", ref.Name)
	} else {
		ref.ModulePath = ref.Name
	}

	// 如果没有指定版本，就返回
	if ref.VersionSpec == "" {
		return nil
	}

	// 获取包信息
	var pkg *mod.Package
	var exists bool

	if ref.IsCLib {
		pkg, exists = v.store.GetPackage(ref.Name)
	} else {
		// 从模块路径中提取包名
		parts := strings.Split(ref.Name, "/")
		if len(parts) > 0 {
			pkgName := parts[len(parts)-1]
			pkg, exists = v.store.GetPackage(pkgName)
		}
	}

	if !exists {
		return fmt.Errorf("找不到包 %s", ref.Name)
	}

	// 处理"latest"版本
	if ref.IsLatest {
		latestVersion := v.getLatestVersion(pkg)
		if latestVersion == "" {
			return fmt.Errorf("找不到包 %s 的版本", ref.Name)
		}

		ref.GoVersion = latestVersion
		for _, mapping := range pkg.Versions {
			for _, ver := range mapping.GoVersions {
				if ver == latestVersion {
					ref.CVersion = mapping.CVersion
					break
				}
			}
			if ref.CVersion != "" {
				break
			}
		}

		return nil
	}

	// 处理Go版本格式
	if ref.IsGoVersion {
		ref.GoVersion = ref.VersionSpec
		// 寻找对应的C版本
		for _, mapping := range pkg.Versions {
			for _, ver := range mapping.GoVersions {
				if ver == ref.VersionSpec {
					ref.CVersion = mapping.CVersion
					break
				}
			}
			if ref.CVersion != "" {
				break
			}
		}

		if ref.CVersion == "" {
			return fmt.Errorf("找不到包 %s 的Go版本 %s", ref.Name, ref.VersionSpec)
		}

		return nil
	}

	// 处理C版本格式
	ref.CVersion = ref.VersionSpec
	// 寻找对应的Go版本
	for _, mapping := range pkg.Versions {
		if mapping.CVersion == ref.VersionSpec {
			if len(mapping.GoVersions) > 0 {
				// 使用最新的Go版本
				ref.GoVersion = v.getLatestGoVersion(mapping.GoVersions)
				ref.GoVersions = mapping.GoVersions
				return nil
			}
		}
	}

	return fmt.Errorf("找不到包 %s 的C版本 %s", ref.Name, ref.VersionSpec)
}

// IsCLibrary 判断给定的字符串是否是C库引用
func (v *VersionService) IsCLibrary(ref string) bool {
	var regex = regexp.MustCompile(`^[a-zA-Z0-9_-]+$`)
	return regex.MatchString(ref)
}

// getLatestVersion 获取包的最新版本
func (v *VersionService) getLatestVersion(pkg *mod.Package) string {
	if len(pkg.Versions) == 0 {
		return ""
	}

	// 收集所有的Go版本
	var allVersions []string
	for _, mapping := range pkg.Versions {
		allVersions = append(allVersions, mapping.GoVersions...)
	}

	return v.getLatestGoVersion(allVersions)
}

// getLatestGoVersion 获取最新的Go版本
func (v *VersionService) getLatestGoVersion(versions []string) string {
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
		} else {
			v.logger.Warning("解析版本 %s 失败: %v", version, err)
		}
	}

	if len(semvers) == 0 {
		return versions[0] // 无法解析任何版本，使用第一个
	}

	// 排序找出最新版本
	sort.Sort(semver.Collection(semvers))
	return "v" + semvers[len(semvers)-1].String()
}
