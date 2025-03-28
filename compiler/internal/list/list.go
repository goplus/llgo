package list

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"

	"github.com/goplus/llgo/compiler/internal/env"
	"github.com/goplus/llgo/compiler/internal/mod"
	"github.com/goplus/llpkgstore/config"
	"github.com/goplus/llpkgstore/metadata"
	"golang.org/x/mod/module"
)

// ListOptions 定义list命令的选项
type ListOptions struct {
	ModulesFlag   bool   // -m 标志
	JSONFlag      bool   // -json 标志
	VersionsFlag  bool   // -versions 标志
	UpdatesFlag   bool   // -u 标志
	RetractedFlag bool   // -retracted 标志
	ReuseFlag     string // -reuse 标志的值
	FormatFlag    string // -f 标志的值
}

// ListModules 处理list命令的主入口函数
func ListModules(opts ListOptions, args []string) error {
	// 如果没有特殊标志，直接fallback到go list
	if !opts.ModulesFlag && !opts.JSONFlag {
		return fallbackToGoList(args)
	}

	// 处理模块模式
	if opts.ModulesFlag {
		// 当同时指定-m和-versions时
		if opts.VersionsFlag {
			return listModuleVersions(opts, args)
		}

		// 仅指定-m时
		return listModules(opts, args)
	}

	// 处理JSON模式
	if opts.JSONFlag {
		return listJSON(opts, args)
	}

	return nil
}

// resolveModulePath 将简略输入转换为完整module路径
func resolveModulePath(input string) (string, error) {
	// 如果输入已经是一个完整的模块路径，直接返回
	if mod.IsModulePath(input) {
		return input, nil
	}

	// 初始化元数据管理器
	metadataMgr, err := metadata.NewMetadataMgr(env.LLGOCACHE())
	if err != nil {
		return "", fmt.Errorf("初始化元数据管理器失败: %v", err)
	}

	// 检查是否为clib
	exists, err := metadataMgr.ModuleExists(input)
	if err != nil {
		return "", err
	}

	if !exists {
		return "", fmt.Errorf("未找到模块: %s", input)
	}

	// 获取最新版本
	latestVer, err := metadataMgr.LatestGoVer(input)
	if err != nil {
		return "", fmt.Errorf("获取最新版本失败: %v", err)
	}

	// 构建完整路径
	completePath, err := mod.NewModuleVersionPair(input, latestVer)
	if err != nil {
		return "", fmt.Errorf("构建模块路径失败: %v", err)
	}

	return completePath.Path, nil
}

// listModules 处理模块列表显示
func listModules(opts ListOptions, args []string) error {
	for _, arg := range args {
		modulePath, err := resolveModulePath(arg)
		if err != nil {
			return err
		}

		// 检查是否为LLPkg
		isLLPkg, llpkgInfo, err := checkIsLLPkg(modulePath)
		if err != nil {
			return err
		}

		if isLLPkg {
			// 输出LLPkg信息
			fmt.Printf("%s [%s:%s/%s]\n",
				modulePath,
				llpkgInfo.Upstream.Installer.Name,
				llpkgInfo.Upstream.Package.Name,
				llpkgInfo.Upstream.Package.Version)
		} else {
			// 如果不是LLPkg，回退到标准go list输出
			cmd := exec.Command("go", append([]string{"list", "-m"}, modulePath)...)
			cmd.Stdout = os.Stdout
			cmd.Stderr = os.Stderr
			if err := cmd.Run(); err != nil {
				return err
			}
		}
	}

	return nil
}

// checkIsLLPkg 检查给定模块是否为LLPkg
func checkIsLLPkg(modulePath string) (bool, *config.LLPkgConfig, error) {
	// 获取模块路径
	mod := module.Version{Path: modulePath}

	// 查找llpkg.cfg文件
	cfgPath, err := findLLPkgCfgFile(mod)
	if err != nil || cfgPath == "" {
		return false, nil, nil
	}

	// 解析llpkg.cfg文件
	cfg, err := config.ParseLLPkgConfig(cfgPath)
	if err != nil {
		return false, nil, err
	}

	return true, &cfg, nil
}

// findLLPkgCfgFile 查找模块的llpkg.cfg文件
func findLLPkgCfgFile(mod module.Version) (string, error) {
	// 尝试在模块缓存中查找
	modPath, err := filepath.Abs(filepath.Join(env.LLGOCACHE(), "pkg/mod", mod.Path))
	if err != nil {
		return "", err
	}

	cfgPath := filepath.Join(modPath, "llpkg.cfg")
	if _, err := os.Stat(cfgPath); err == nil {
		return cfgPath, nil
	}

	// 如果在缓存中找不到，尝试其他位置
	// ...

	return "", nil
}

// fallbackToGoList 回退到原生go list命令
func fallbackToGoList(args []string) error {
	cmd := exec.Command("go", append([]string{"list"}, args...)...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	return cmd.Run()
}
