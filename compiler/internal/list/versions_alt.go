// TODO: 这个文件是用来替代list.go的，但是目前还没有实现
// 当前文档设计和实现有冲突，而且没有很合理的实现方式
// 所以暂时弃用，保留这个文件
// 主要问题：没办法批量拿到每个版本的 llpkg.cfg

package list

import (
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"strings"

	"github.com/goplus/llpkgstore/config"
)

// listModuleVersionsAlt 通过远程URL获取版本信息的替代方法
func listModuleVersionsAlt(opts ListOptions, args []string) error {
	// 处理每个参数
	for _, arg := range args {
		err := listSingleModuleVersionsAlt(arg, opts)
		if err != nil {
			return err
		}
	}

	return nil
}

// listSingleModuleVersionsAlt 通过远程URL获取单个模块的版本信息
func listSingleModuleVersionsAlt(input string, opts ListOptions) error {
	// 解析输入，获取模块路径和名称
	var modulePath, name string
	if strings.Contains(input, "/") {
		// 完整路径形式
		modulePath = input
		parts := strings.Split(input, "/")
		name = parts[len(parts)-1]
	} else {
		// 简略形式
		name = input
		modulePath = fmt.Sprintf("github.com/goplus/llpkg/%s", name)
	}

	// 获取模块标签信息
	tags, err := fetchModuleTags(modulePath)
	if err != nil {
		return err
	}

	// 输出格式：modulePath v1.0.0[conan:cjson/1.7.18] v0.1.1[conan:cjson/1.7.18]...
	output := modulePath

	for _, tag := range tags {
		// 获取对应标签的llpkg.cfg内容
		cfgContent, err := fetchConfigFromTag(modulePath, tag, name)
		if err != nil {
			continue
		}

		// 解析llpkg.cfg
		var cfg config.LLPkgConfig
		err = json.Unmarshal([]byte(cfgContent), &cfg)
		if err != nil {
			continue
		}

		// 构建输出
		output += fmt.Sprintf(" %s[%s:%s/%s]", tag,
			cfg.Upstream.Installer.Name,
			cfg.Upstream.Package.Name,
			cfg.Upstream.Package.Version)
	}

	fmt.Println(output)
	return nil
}

// fetchModuleTags 获取模块的所有标签
func fetchModuleTags(modulePath string) ([]string, error) {
	// 模拟获取远程仓库标签的逻辑
	// 实际实现应该通过适当的API获取

	// 请求GitHub API获取标签信息
	url := fmt.Sprintf("https://api.github.com/repos/%s/tags",
		strings.TrimPrefix(modulePath, "github.com/"))

	resp, err := http.Get(url)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("请求标签信息失败: %s", resp.Status)
	}

	var tags []struct {
		Name string `json:"name"`
	}

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return nil, err
	}

	err = json.Unmarshal(body, &tags)
	if err != nil {
		return nil, err
	}

	result := make([]string, 0, len(tags))
	for _, tag := range tags {
		result = append(result, tag.Name)
	}

	return result, nil
}

// fetchConfigFromTag 获取指定标签的llpkg.cfg内容
func fetchConfigFromTag(modulePath, tag, name string) (string, error) {
	// 构建URL
	url := fmt.Sprintf("https://%s/raw/%s/%s/llpkg.cfg",
		strings.TrimPrefix(modulePath, "github.com/"),
		tag,
		name)

	// 发送请求
	resp, err := http.Get(url)
	if err != nil {
		return "", err
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return "", fmt.Errorf("请求配置文件失败: %s", resp.Status)
	}

	// 读取内容
	content, err := io.ReadAll(resp.Body)
	if err != nil {
		return "", err
	}

	return string(content), nil
}
