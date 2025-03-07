package list

import (
	"encoding/json"
	"errors"
	"fmt"
	"net/http"
	"os"
	"path/filepath"
	"strings"
)

// Client 管理与llpkgstore的交互
type Client struct {
	cacheDir     string
	primaryURL   string
	fallbackURL  string
	httpClient   *http.Client
	cacheManager *CacheManager
	fetcher      *Fetcher
}

// Option 定义Client构造函数的选项
type Option func(*Client)

// WithCacheDir 设置缓存目录
func WithCacheDir(dir string) Option {
	return func(c *Client) {
		c.cacheDir = dir
	}
}

// WithHTTPClient 设置HTTP客户端
func WithHTTPClient(client *http.Client) Option {
	return func(c *Client) {
		c.httpClient = client
	}
}

// WithPrimaryURL 设置主URL
func WithPrimaryURL(url string) Option {
	return func(c *Client) {
		c.primaryURL = url
	}
}

// WithFallbackURL 设置备用URL
func WithFallbackURL(url string) Option {
	return func(c *Client) {
		c.fallbackURL = url
	}
}

// NewClient 创建新的Client实例
func NewClient(options ...Option) *Client {
	// 从环境变量获取默认缓存目录
	defaultCacheDir := os.Getenv("LLGOCACHE") // 默认临时目录
	if defaultCacheDir == "" {
		fmt.Fprintf(os.Stderr, "Warning: LLGOCACHE environment variable not set")
		os.Exit(1)
	}

	client := &Client{
		cacheDir:    defaultCacheDir,
		primaryURL:  primaryURLPath,
		fallbackURL: fallbackURLPath,
		httpClient:  &http.Client{Timeout: defaultTimeout},
	}

	// 应用选项
	for _, option := range options {
		option(client)
	}

	// 确保缓存目录存在并可写
	if err := ensureCacheDirWritable(client.cacheDir); err != nil {
		// 记录警告并降级到临时目录
		fmt.Fprintf(os.Stderr, "Warning: Cache directory not writable: %v, using temp dir instead\n", err)
		client.cacheDir = os.TempDir()
	}

	// 初始化依赖组件
	client.cacheManager = NewCacheManager(client.cacheDir)
	client.fetcher = NewFetcher(client.httpClient)

	return client
}

// ensureCacheDirWritable 确保缓存目录存在且可写
func ensureCacheDirWritable(dir string) error {
	// 创建目录（如果不存在）
	if err := os.MkdirAll(dir, 0755); err != nil {
		return err
	}

	// 通过创建临时文件测试可写性
	testFile := filepath.Join(dir, ".write_test")
	f, err := os.Create(testFile)
	if err != nil {
		return err
	}
	f.Close()
	return os.Remove(testFile)
}

// GetStore 获取完整的llpkgstore数据
func (c *Client) GetStore() (*Store, error) {
	fmt.Fprintln(os.Stderr, "Checking llpkgstore cache...")

	// 检查缓存中是否有有效的存储
	valid, err := c.cacheManager.IsCacheValid()
	if err != nil {
		return nil, fmt.Errorf("failed to check cache validity: %w", err)
	}

	if valid {
		fmt.Fprintln(os.Stderr, "Found valid cache, attempting to use it...")
		// 尝试从缓存读取
		store, err := c.cacheManager.GetCachedStore()
		if err == nil {
			fmt.Fprintln(os.Stderr, "Successfully loaded from cache")
			return store, nil
		}
		fmt.Fprintf(os.Stderr, "Cache read failed: %v, fetching latest data\n", err)
		// 读取缓存失败，继续尝试获取新数据
	} else {
		fmt.Fprintln(os.Stderr, "No valid cache found, fetching latest data...")
	}

	// 获取缓存的ETag
	etag, _, err := c.cacheManager.GetCacheInfo()
	if err != nil {
		// 忽略ETag获取错误，继续不使用ETag
		etag = ""
		fmt.Fprintf(os.Stderr, "Could not retrieve ETag: %v\n", err)
	}

	// 获取最新数据
	data, newETag, notModified, err := c.fetcher.FetchStore(etag)
	if err != nil {
		return nil, fmt.Errorf("failed to fetch store: %w", err)
	}

	if notModified {
		fmt.Fprintln(os.Stderr, "Store unchanged, using cached version")
		// 数据未修改，使用缓存
		return c.cacheManager.GetCachedStore()
	}

	fmt.Fprintln(os.Stderr, "Parsing received data...")
	// 解析新数据
	var store Store
	if err := json.Unmarshal(data, &store); err != nil {
		return nil, fmt.Errorf("failed to parse store data: %w", err)
	}

	// 更新缓存
	fmt.Fprintln(os.Stderr, "Updating cache...")
	if err := c.cacheManager.UpdateCache(data, newETag); err != nil {
		// 更新缓存失败，但仍然可以使用新获取的数据
		fmt.Fprintf(os.Stderr, "Warning: Failed to update cache: %v\n", err)
	} else {
		fmt.Fprintln(os.Stderr, "Cache updated successfully")
	}

	return &store, nil
}

// ListModules 列出符合条件的模块
func (c *Client) ListModules(args []string, includeVersions, jsonOutput bool) error {
	// 获取存储数据
	store, err := c.GetStore()
	if err != nil {
		if strings.Contains(err.Error(), "connection refused") ||
			strings.Contains(err.Error(), "no such host") {
			return errors.New("could not connect to llpkgstore servers - please check your internet connection and try again")
		}
		if strings.Contains(err.Error(), "context deadline exceeded") {
			return errors.New("connection to llpkgstore timed out - the servers might be busy, please try again later")
		}
		if strings.Contains(err.Error(), "parse store") {
			return errors.New("received invalid data from llpkgstore - the server might be experiencing issues, please try again later")
		}
		// 对于其他错误，保留原始消息但添加前缀
		return fmt.Errorf("llpkgstore access error: %w", err)
	}

	if len(*store) == 0 {
		fmt.Fprintln(os.Stderr, "Warning: The package store contains no packages")
		if !jsonOutput {
			fmt.Fprintln(os.Stdout, "No packages available")
			return nil
		}
	}

	mapper := NewVersionMapper(store)
	formatter := NewFormatter(includeVersions, jsonOutput)

	if len(args) == 0 {
		// 列出所有模块
		var modules []*ModuleInfo
		for name, pkg := range *store {
			if len(pkg.Versions) > 0 {
				latestMapping := pkg.Versions[len(pkg.Versions)-1]
				latestGoVersion := mapper.GetLatestVersion(latestMapping.GoVersions)

				llpkgInfoData, err := c.fetcher.FetchMetaInfo(name, store)
				if err != nil {
					return err
				}
				llpkgInfo, err := FormatByteToLLPkgInfo(llpkgInfoData)
				if err != nil {
					return err
				}
				// 构造模块信息
				modules = append(modules, &ModuleInfo{
					Path:    fmt.Sprintf("github.com/NEKO-CwC/llpkgstore/%s", name),
					Version: latestGoVersion,
					LLPkg:   llpkgInfo,
				})
			}
		}

		return formatter.FormatOutput(os.Stdout, modules)
	}

	fmt.Println("args:", args)
	// 处理指定的参数
	for _, arg := range args {
		modulePath, _, goVersion, _ := c.fetcher.normalizeInput(arg, store)
		name := ""
		inputVersion := ""
		infoList := strings.Split(arg, "@")
		if len(infoList) == 2 {
			name = infoList[0]
			inputVersion = infoList[1]
		} else {
			name = arg
		}

		if inputVersion == "" {

			return errors.New("local version reference not implemented yet")
		} else {

			if mapper.IsCLibrary(name) {
				metaInfoData, err := c.fetcher.FetchMetaInfo(arg, store)
				if err != nil {
					return err
				}
				llpkgInfo, err := FormatByteToLLPkgInfo(metaInfoData)
				if err != nil {
					return err
				}

				formatter.FormatModuleWithOneVersion(os.Stdout, modulePath, goVersion, llpkgInfo)

			} else {
				// 处理Go模块引用
				// 目前不支持直接的模块引用
				return errors.New("direct module path reference not implemented yet")
			}
		}
	}

	return nil
}

// ResolveCLibrary 将C库名称和版本解析为Go模块路径和版本
func (c *Client) ResolveCLibrary(clib, cversion string) (modulePath, version string, err error) {
	store, err := c.GetStore()
	if err != nil {
		return "", "", err
	}

	mapper := NewVersionMapper(store)
	modulePath, versions, err := mapper.ResolveCVersion(clib, cversion)
	if err != nil {
		return "", "", err
	}

	if len(versions) == 0 {
		return "", "", errors.New("no Go versions found for C library: " + clib + "@" + cversion)
	}

	// 使用最新的Go版本
	version = mapper.GetLatestVersion(versions)
	return modulePath, version, nil
}
