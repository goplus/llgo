package list

import (
	"encoding/json"
	"os"
	"os/exec"
	"strings"

	"github.com/goplus/llpkgstore/config"
)

// ModuleInfo 表示模块信息的JSON结构
type ModuleInfo struct {
	Path      string     `json:"Path"`
	Version   string     `json:"Version,omitempty"`
	Time      string     `json:"Time,omitempty"`
	Indirect  bool       `json:"Indirect,omitempty"`
	GoVersion string     `json:"GoVersion,omitempty"`
	LLPkg     *LLPkgInfo `json:"LLPkg,omitempty"`
}

// LLPkgInfo 表示LLPkg信息的JSON结构
type LLPkgInfo struct {
	Upstream UpstreamInfo `json:"Upstream"`
}

type UpstreamInfo struct {
	Installer InstallerInfo `json:"Installer"`
	Package   PackageInfo   `json:"Package"`
}

type InstallerInfo struct {
	Name   string            `json:"Name"`
	Config map[string]string `json:"Config,omitempty"`
}

type PackageInfo struct {
	Name    string `json:"Name"`
	Version string `json:"Version"`
}

// listJSON 处理JSON格式输出
func listJSON(opts ListOptions, args []string) error {
	// 执行go list命令获取原始JSON输出
	cmdArgs := []string{"list", "-json"}
	if opts.ModulesFlag {
		cmdArgs = append(cmdArgs, "-m")
	}
	if opts.VersionsFlag {
		cmdArgs = append(cmdArgs, "-versions")
	}
	cmdArgs = append(cmdArgs, args...)

	cmd := exec.Command("go", cmdArgs...)
	output, err := cmd.Output()
	if err != nil {
		return err
	}

	// 解析JSON输出
	var modules []ModuleInfo
	decoder := json.NewDecoder(strings.NewReader(string(output)))

	// 检查输出是数组还是单个对象
	var firstChar byte
	if len(output) > 0 {
		firstChar = output[0]
	}

	if firstChar == '[' {
		// 数组格式
		err = decoder.Decode(&modules)
		if err != nil {
			return err
		}
	} else {
		// 单个对象格式
		var module ModuleInfo
		err = decoder.Decode(&module)
		if err != nil {
			return err
		}
		modules = []ModuleInfo{module}
	}

	// 为每个模块添加LLPkg信息
	for i := range modules {
		if modules[i].Path != "" {
			isLLPkg, llpkgConfig, err := checkIsLLPkg(modules[i].Path)
			if err == nil && isLLPkg && llpkgConfig != nil {
				modules[i].LLPkg = convertToLLPkgInfo(*llpkgConfig)
			}
		}
	}

	// 输出修改后的JSON
	encoder := json.NewEncoder(os.Stdout)
	encoder.SetIndent("", "  ")
	return encoder.Encode(modules)
}

// convertToLLPkgInfo 将LLPkgConfig转换为LLPkgInfo
func convertToLLPkgInfo(cfg config.LLPkgConfig) *LLPkgInfo {
	return &LLPkgInfo{
		Upstream: UpstreamInfo{
			Installer: InstallerInfo{
				Name:   cfg.Upstream.Installer.Name,
				Config: cfg.Upstream.Installer.Config,
			},
			Package: PackageInfo{
				Name:    cfg.Upstream.Package.Name,
				Version: cfg.Upstream.Package.Version,
			},
		},
	}
}
