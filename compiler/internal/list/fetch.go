package list

import (
	"errors"
	"fmt"
	"io"
	"net"
	"net/http"
	"os"
	"path"
	"strings"
	"time"
)

const (
	primaryURLPath  = "https://llpkg.goplus.org/llpkgstore.json"
	fallbackURLPath = "https://raw.githubusercontent.com/NEKO-CwC/llpkgstore/main/llpkgstore.json"
	defaultTimeout  = 10 * time.Second
)

// Fetcher 负责从不同来源获取llpkgstore.json
type Fetcher struct {
	httpClient  *http.Client
	primaryURL  string
	fallbackURL string
}

// NewFetcher 创建新的Fetcher实例
func NewFetcher(httpClient *http.Client) *Fetcher {
	// 确保HTTP客户端有合理的超时设置
	if httpClient == nil {
		httpClient = &http.Client{
			Timeout: defaultTimeout,
		}
	}

	return &Fetcher{
		httpClient:  httpClient,
		primaryURL:  primaryURLPath,
		fallbackURL: fallbackURLPath,
	}
}

// FetchStore 尝试获取最新的llpkgstore.json
func (f *Fetcher) FetchStore(currentETag string) (data []byte, newETag string, notModified bool, err error) {
	// 首先尝试主URL
	data, newETag, notModified, err = f.fetchFromURL(f.primaryURL, currentETag)
	if err == nil {
		return data, newETag, notModified, nil
	}

	// 如果主URL失败，尝试备用URL
	data, newETag, notModified, fallbackErr := f.fetchFromURL(f.fallbackURL, currentETag)
	if fallbackErr == nil {
		return data, newETag, notModified, nil
	}

	// 两个URL都失败了，返回更详细的错误信息
	return nil, "", false, fmt.Errorf("failed to fetch store: primary: %v, fallback: %v", err, fallbackErr)
}

// fetchFromURL 从指定URL获取数据
func (f *Fetcher) fetchFromURL(url, etag string) (data []byte, newETag string, notModified bool, err error) {
	// 创建带有If-None-Match头的请求
	req, err := http.NewRequest(http.MethodGet, url, nil)
	if err != nil {
		return nil, "", false, fmt.Errorf("failed to create request: %w", err)
	}

	if etag != "" {
		req.Header.Set("If-None-Match", etag)
	}

	// 输出获取提示
	fmt.Fprintf(os.Stderr, "Downloading %s...\n", url)

	// 执行HTTP请求
	resp, err := f.httpClient.Do(req)
	if err != nil {
		// 细分网络错误类型
		var netErr net.Error
		if errors.As(err, &netErr) {
			if netErr.Timeout() {
				return nil, "", false, fmt.Errorf("request timed out: %w", err)
			}
			return nil, "", false, fmt.Errorf("network error: %w", err)
		}

		var dnsErr *net.DNSError
		if errors.As(err, &dnsErr) {
			return nil, "", false, fmt.Errorf("DNS lookup failed for %s: %w", url, err)
		}

		return nil, "", false, fmt.Errorf("HTTP request failed: %w", err)
	}
	defer resp.Body.Close()

	// 处理304 Not Modified
	if resp.StatusCode == http.StatusNotModified {
		fmt.Fprintln(os.Stderr, "Resource not modified, using cached version")
		return nil, etag, true, nil
	}

	// 处理其他非200状态码
	if resp.StatusCode != http.StatusOK {
		return nil, "", false, fmt.Errorf("server returned HTTP %d: %s", resp.StatusCode, resp.Status)
	}

	// 读取响应体
	data, err = io.ReadAll(resp.Body)
	if err != nil {
		return nil, "", false, fmt.Errorf("failed to read response body: %w", err)
	}

	fmt.Fprintf(os.Stderr, "Downloaded %d bytes from %s\n", len(data), url)
	return data, resp.Header.Get("ETag"), false, nil
}

// metainfo 处理
// 使用本地 llpkgstore.json 文件内容列出现有最新版本
// 使用 goproxy list api 校验是否 proxy 处已经拉到最新的版本
// 如果是最新的，直接使用 proxy 的 源文件托管服务下载 llpkg.cfg
// 如果不是最新的，使用 github 的源文件托管服务下载 llpkg.cfg

// FetchMetaInfo 从指定URL获取元信息，参数为 c 库名称或者 gomodule 的路径
// 将参数归一化为 gomodule 的路径
// 返回一个字节切片，为 llpkg.cfg 的内容

func (f *Fetcher) FetchMetaInfo(nameOrPath string, store *Store) ([]byte, error) {
	// 将输入归一化为 Go 模块路径和 C 库名称
	repoPath, clib, goVersion, tag := f.normalizeInput(nameOrPath, store)
	fmt.Println("repoPath:", repoPath)
	fmt.Println("clib:", clib)
	fmt.Println("goVersion:", goVersion)
	fmt.Println("tag:", tag)

	// 从 store 中查找包信息
	pkg, ok := (*store)[clib]
	if !ok {
		return nil, fmt.Errorf("package %s not found in store", clib)
	}

	if goVersion == "" {
		// 处理 "latest" 版本请求
		cVersion := pkg.GetCVersionFromGoVersion(goVersion)
		tag = fmt.Sprintf("%v/v%v", clib, cVersion)
	}

	fmt.Fprintf(os.Stderr, "version %s is downloading from GitHub\n", pkg.Versions)
	return f.fetchFromGitHub(repoPath, tag, clib)

	// // TODO: 搭建 proxy 服务，实现代理下载

	// // 获取最新版本映射
	// if len(pkg.Versions) == 0 {
	// 	return nil, fmt.Errorf("no versions available for package %s", clib)
	// }

	// // 获取最新版本信息
	// latestMapping := pkg.Versions[len(pkg.Versions)-1]
	// if len(latestMapping.GoVersions) == 0 {
	// 	return nil, fmt.Errorf("no Go versions mapped for C version %s", latestMapping.CVersion)
	// }

	// // 选择最新的 Go 版本
	// latestGoVersion := f.getLatestVersion(latestMapping.GoVersions)

	// // 使用环境变量或默认值确定 Go 代理
	// goProxy := f.getGoProxy()

	// // 检查 proxy 是否有最新版本
	// hasLatest, err := f.checkProxyVersions(goProxy, modulePath, latestGoVersion)
	// if err != nil {
	// 	fmt.Fprintf(os.Stderr, "Error checking proxy versions: %v, falling back to GitHub\n", err)
	// 	return f.fetchFromGitHub(modulePath, latestGoVersion)
	// }

	// // 根据检查结果选择下载源
	// if hasLatest {
	// 	fmt.Fprintf(os.Stderr, "Latest version %s found in proxy, downloading from proxy\n", latestGoVersion)
	// 	return f.fetchFromProxy(goProxy, modulePath, latestGoVersion)
	// } else {
	// 	fmt.Fprintf(os.Stderr, "Latest version %s not found in proxy, downloading from GitHub\n", latestGoVersion)
	// 	return f.fetchFromGitHub(modulePath, latestGoVersion)
	// }
}

// normalizeInput 将输入转换为标准化的模块路径、C库名称、Go版本和标签
// 输入可以是以下形式：
//   - 不带版本的C库名称: "cjson"
//   - 带版本的C库名称: "cjson@1.3.1"
//   - 不带版本的Go模块路径: "github.com/NEKO-CwC/llpkgstore/cjson"
//   - 带版本的Go模块路径: "github.com/NEKO-CwC/llpkgstore/cjson@v1.1.0"
func (f *Fetcher) normalizeInput(input string, store *Store) (modulePath string, clib string, goVersion string, tag string) {
	var specifiedVersion string
	isGoVersion := false

	// 首先检查是否包含版本信息
	if strings.Contains(input, "@") {
		parts := strings.SplitN(input, "@", 2)
		input = parts[0]            // 去掉版本部分的输入
		specifiedVersion = parts[1] // 提取版本

		// 检查是否是 Go 版本格式
		isGoVersion = strings.HasPrefix(specifiedVersion, "v")
	}

	// 判断输入是C库名称还是Go模块路径
	if !strings.Contains(input, "/") {
		// 输入是C库名称
		clib = input
		modulePath = fmt.Sprintf("github.com/NEKO-CwC/llpkgstore/%s", clib)
	} else {
		// 输入是Go模块路径
		modulePath = input

		// 从路径中提取C库名称（最后一部分）
		parts := strings.Split(input, "/")
		clib = parts[len(parts)-1]
	}

	// 从 store 中获取包信息
	pkg, ok := (*store)[clib]
	if !ok {
		// 包不存在，构造一个空版本标记
		return modulePath, clib, "", ""
	}

	// 处理版本信息
	if specifiedVersion != "" {
		if isGoVersion {
			// 已经是 Go 版本格式，直接使用
			goVersion = specifiedVersion
		} else {
			// C 库版本，转换为 Go 版本
			goVersion = pkg.GetLatestGoVersionFromCVersion(specifiedVersion)
			fmt.Println("goVersion:", goVersion)
			if goVersion == "" {
				// 找不到对应的 Go 版本时，尝试使用最新版本
				if len(pkg.Versions) > 0 && len(pkg.Versions[len(pkg.Versions)-1].GoVersions) > 0 {
					goVersion = pkg.Versions[len(pkg.Versions)-1].GoVersions[len(pkg.Versions[len(pkg.Versions)-1].GoVersions)-1]
				}
			}
		}
	} else {
		// 没有指定版本，获取最新版本
		if len(pkg.Versions) > 0 && len(pkg.Versions[len(pkg.Versions)-1].GoVersions) > 0 {
			// 获取最新的 Go 版本
			goVersion = pkg.Versions[len(pkg.Versions)-1].GoVersions[len(pkg.Versions[len(pkg.Versions)-1].GoVersions)-1]
		}
	}

	// 构造标签 (tag)
	if goVersion != "" {
		tag = fmt.Sprintf("%s/%s", clib, goVersion)
	}

	return modulePath, clib, goVersion, tag
}

// getGoProxy 获取 GOPROXY 环境变量或使用默认值
func (f *Fetcher) getGoProxy() string {
	proxy := os.Getenv("GOPROXY")
	if proxy == "" {
		proxy = "https://proxy.golang.org"
	}

	// 移除逗号后的内容（如果有）
	if idx := strings.Index(proxy, ","); idx > 0 {
		proxy = proxy[:idx]
	}

	// 确保 URL 以 / 结尾
	if !strings.HasSuffix(proxy, "/") {
		proxy += "/"
	}

	return proxy
}

// checkProxyVersions 检查代理中是否有指定的版本
func (f *Fetcher) checkProxyVersions(proxyURL, modulePath, version string) (bool, error) {
	listURL := path.Join(proxyURL, modulePath, "@v", "list")
	fmt.Fprintf(os.Stderr, "Checking versions from proxy: %s\n", listURL)

	resp, err := f.httpClient.Get(listURL)
	if err != nil {
		return false, err
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return false, fmt.Errorf("proxy returned status %d", resp.StatusCode)
	}

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return false, err
	}

	versions := strings.Split(strings.TrimSpace(string(body)), "\n")
	for _, v := range versions {
		if v == version {
			return true, nil
		}
	}

	return false, nil
}

// fetchFromProxy 从 Go 代理下载 llpkg.cfg 文件
func (f *Fetcher) fetchFromProxy(proxyURL, modulePath, version string) ([]byte, error) {
	configURL := fmt.Sprintf("%s%s/@v/%s/llpkg.cfg", proxyURL, modulePath, version)
	fmt.Fprintf(os.Stderr, "Downloading llpkg.cfg from proxy: %s\n", configURL)

	resp, err := f.httpClient.Get(configURL)
	if err != nil {
		return nil, fmt.Errorf("failed to download from proxy: %w", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("proxy returned status %d", resp.StatusCode)
	}

	return io.ReadAll(resp.Body)
}

// fetchFromGitHub 从 GitHub 下载 llpkg.cfg 文件
func (f *Fetcher) fetchFromGitHub(modulePath, tag string, clib string) ([]byte, error) {
	// 解析模块路径
	parts := strings.SplitN(modulePath, "/", 4)
	if len(parts) < 3 || parts[0] != "github.com" {
		return nil, fmt.Errorf("invalid GitHub module path: %s", modulePath)
	}

	user := parts[1]
	repo := parts[2]

	// 构建 GitHub raw content URL
	configPath := "llpkg.cfg"

	url := fmt.Sprintf("https://raw.githubusercontent.com/%s/%s/%s/%s/%s",
		user, repo, tag, clib, configPath)
	fmt.Fprintf(os.Stderr, "Downloading llpkg.cfg from GitHub: %s\n", url)

	resp, err := f.httpClient.Get(url)
	if err != nil {
		return nil, fmt.Errorf("failed to download from GitHub: %w", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("GitHub returned status %d", resp.StatusCode)
	}

	return io.ReadAll(resp.Body)
}
