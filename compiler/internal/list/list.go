// application.go
package list

import (
	"fmt"
	"github.com/goplus/llgo/compiler/internal/mod"
	"io"
	"strings"
)

// ListApplication 应用协调者
type ListApplication struct {
	versionService   *VersionService
	metaService      *mod.MetaInfoService
	formatterService *FormatterService
	repo             *RunningRepository
	logger           mod.Logger
}

// NewListApplication 创建一个新的ListApplication实例
func NewListApplication(
	versionService *VersionService,
	metaService *mod.MetaInfoService,
	formatterService *FormatterService,
	repo *RunningRepository,
	logger mod.Logger,
) *ListApplication {
	if logger == nil {
		logger = mod.DefaultLogger
	}

	return &ListApplication{
		versionService:   versionService,
		metaService:      metaService,
		formatterService: formatterService,
		repo:             repo,
		logger:           logger,
	}
}

// ListModules 列出符合条件的模块
func (a *ListApplication) ListModules(args []string, writer io.Writer) error {
	if len(args) == 0 {
		return a.ListAllModules(writer)
	}

	for _, arg := range args {
		if err := a.ListModule(arg, writer); err != nil {
			return err
		}
	}

	return nil
}

// ListModule 列出单个模块的信息
func (a *ListApplication) ListModule(input string, writer io.Writer) error {
	// 解析输入
	parts := strings.SplitN(input, "@", 2)
	name := parts[0]
	versionSpec := ""
	if len(parts) > 1 {
		versionSpec = parts[1]
	}

	// 创建并填充ModuleRef
	ref := mod.NewModuleRef(name, versionSpec)
	if err := a.versionService.EnrichModuleRef(ref); err != nil {
		return err
	}

	// 获取元信息
	metaData, err := a.metaService.FetchMetaInfo(ref)
	if err != nil {
		return err
	}

	// 解析元信息
	llpkgInfo, err := a.metaService.ParseLLPkgInfo(metaData)
	if err != nil {
		return err
	}

	// 格式化输出
	return a.formatterService.FormatModuleRef(writer, ref, llpkgInfo)
}

// ListAllModules 列出所有模块的信息
func (a *ListApplication) ListAllModules(writer io.Writer) error {
	packages := a.repo.Store.GetAllPackages()
	var modules []*mod.ModuleInfo

	for name, pkg := range *packages {
		if len(pkg.Versions) > 0 {
			latestMapping := pkg.Versions[len(pkg.Versions)-1]
			latestGoVersion := a.versionService.getLatestGoVersion(latestMapping.GoVersions)

			// 创建参考以获取元信息
			ref := mod.NewModuleRef(name, "latest")
			ref.GoVersion = latestGoVersion

			// 获取元信息
			metaData, err := a.metaService.FetchMetaInfo(ref)
			if err != nil {
				a.logger.Warning("获取 %s 的元信息失败: %v", name, err)
				continue
			}

			// 解析元信息
			llpkgInfo, err := a.metaService.ParseLLPkgInfo(metaData)
			if err != nil {
				a.logger.Warning("解析 %s 的元信息失败: %v", name, err)
				continue
			}

			// 构造模块信息
			modules = append(modules, &mod.ModuleInfo{
				Path:    fmt.Sprintf("github.com/NEKO-CwC/llpkgstore/%s", name),
				Version: latestGoVersion,
				LLPkg:   llpkgInfo,
			})
		}
	}

	return a.formatterService.FormatModuleInfoList(writer, modules)
}
