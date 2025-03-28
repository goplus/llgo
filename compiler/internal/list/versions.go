// TODO: 这个文件是用来替代list.go的，但是目前还没有实现
// 当前文档设计和实现有冲突，而且没有很合理的实现方式
// 所以暂时弃用，保留这个文件
// 主要问题：没办法批量拿到每个版本的 llpkg.cfg

package list

import (
	"fmt"
	"strings"

	"github.com/goplus/llgo/compiler/internal/env"
	"github.com/goplus/llpkgstore/metadata"
	"golang.org/x/mod/semver"
)

// listModuleVersions 处理-m -versions标志的情况
func listModuleVersions(opts ListOptions, args []string) error {
	// 初始化元数据管理器
	metadataMgr, err := metadata.NewMetadataMgr(env.LLGOCACHE())
	if err != nil {
		return fmt.Errorf("初始化元数据管理器失败: %v", err)
	}

	// 如果没有指定参数，列出所有可用的模块
	if len(args) == 0 {
		// 获取所有元数据
		allMetadata, err := metadataMgr.AllMetadata()
		if err != nil {
			return err
		}

		// 以JSON格式输出
		if opts.JSONFlag {
			// JSON输出格式实现
			// ...
			return nil
		}

		// 标准输出格式
		for name, meta := range allMetadata {
			goVersions := []string{}

			// 收集所有版本
			for _, versions := range meta.Versions {
				goVersions = append(goVersions, versions...)
			}

			// 对版本进行排序
			semver.Sort(goVersions)

			// 构建完整的模块路径
			modulePath := fmt.Sprintf("github.com/goplus/llpkg/%s", name)

			// 输出格式：modulePath v1.0.0[conan:cjson/1.7.18] v0.1.1[conan:cjson/1.7.18]...
			output := modulePath
			for _, goVer := range goVersions {
				cVer, err := metadataMgr.CVerFromGoVer(name, goVer)
				if err != nil {
					continue
				}
				output += fmt.Sprintf(" %s[conan:%s/%s]", goVer, name, cVer)
			}

			fmt.Println(output)
		}
	}

	// 处理每个参数
	for _, arg := range args {
		input := arg

		// 判断输入是简略形式还是完整路径
		var name string
		if strings.Contains(input, "/") {
			// 完整路径形式，提取出clib名称
			parts := strings.Split(input, "/")
			name = parts[len(parts)-1]
		} else {
			// 简略形式
			name = input
		}

		// 检查模块是否存在
		exists, err := metadataMgr.ModuleExists(name)
		if err != nil {
			return err
		}

		if !exists {
			return fmt.Errorf("未找到模块: %s", name)
		}

		// 获取所有Go版本
		goVersions, err := metadataMgr.AllGoVersFromName(name)
		if err != nil {
			return err
		}

		// 对版本进行排序
		semver.Sort(goVersions)

		// 构建完整的模块路径
		modulePath := fmt.Sprintf("github.com/goplus/llpkg/%s", name)

		// 输出格式：modulePath v1.0.0[conan:cjson/1.7.18] v0.1.1[conan:cjson/1.7.18]...
		output := modulePath
		for _, goVer := range goVersions {
			cVer, err := metadataMgr.CVerFromGoVer(name, goVer)
			if err != nil {
				continue
			}
			output += fmt.Sprintf(" %s[conan:%s/%s]", goVer, name, cVer)
		}

		fmt.Println(output)
	}

	return nil
}
