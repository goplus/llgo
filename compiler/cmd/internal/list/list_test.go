package list_test

import (
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"testing"

	"github.com/goplus/llgo/compiler/internal/list"
)

// 基本的客户端创建测试
func TestNewClient(t *testing.T) {
	// 保存并模拟环境变量
	oldCache := os.Getenv("LLGOCACHE")
	defer os.Setenv("LLGOCACHE", oldCache)

	tempDir, err := os.MkdirTemp("", "llgo-test-cache")
	if err != nil {
		t.Fatalf("Failed to create temp directory: %v", err)
	}
	defer os.RemoveAll(tempDir)

	os.Setenv("LLGOCACHE", tempDir)

	client := list.NewClient()
	if client == nil {
		t.Fatal("NewClient() returned nil")
	}
}

// 测试版本映射功能
func TestVersionMapper(t *testing.T) {
	// 创建测试用的Store数据
	testStore := &list.Store{
		Packages: map[string]*list.Package{
			"testlib": {
				Versions: []list.VersionMapping{
					{
						CVersion:   "1.0.0",
						GoVersions: []string{"v0.1.0", "v0.1.1"},
					},
					{
						CVersion:   "2.0.0",
						GoVersions: []string{"v1.0.0"},
					},
				},
			},
		},
	}

	mapper := list.NewVersionMapper(testStore)

	// 测试获取最新版本
	t.Run("GetLatestVersion", func(t *testing.T) {
		versions := []string{"v0.1.0", "v0.1.1", "v1.0.0"}
		latest := mapper.GetLatestVersion(versions)
		if latest != "v1.0.0" {
			t.Errorf("GetLatestVersion() = %v, want v1.0.0", latest)
		}

		// 测试空版本列表
		empty := mapper.GetLatestVersion([]string{})
		if empty != "" {
			t.Errorf("GetLatestVersion() empty list = %v, want \"\"", empty)
		}
	})

	// 测试C库版本解析
	t.Run("ResolveCVersion", func(t *testing.T) {
		// 测试有效版本
		modulePath, versions, err := mapper.ResolveCVersion("testlib", "1.0.0")
		if err != nil {
			t.Errorf("ResolveCVersion() error = %v", err)
		} else {
			expectedPath := "github.com/NEKO-CwC/llpkgstore/testlib"
			if modulePath != expectedPath {
				t.Errorf("modulePath = %v, want %v", modulePath, expectedPath)
			}
			if len(versions) != 2 || versions[0] != "v0.1.0" || versions[1] != "v0.1.1" {
				t.Errorf("versions = %v, want [v0.1.0 v0.1.1]", versions)
			}
		}

		// 测试latest版本
		_, versions, err = mapper.ResolveCVersion("testlib", "latest")
		if err != nil {
			t.Errorf("ResolveCVersion(latest) error = %v", err)
		} else if len(versions) != 1 || versions[0] != "v1.0.0" {
			t.Errorf("latest version = %v, want [v1.0.0]", versions)
		}

		// 测试无效版本
		_, _, err = mapper.ResolveCVersion("testlib", "3.0.0")
		if err == nil {
			t.Error("ResolveCVersion() with invalid version should return error")
		}
	})

	// 测试模块引用解析
	t.Run("ParseModuleReference", func(t *testing.T) {
		name, version := mapper.ParseModuleReference("testlib@1.0.0")
		if name != "testlib" || version != "1.0.0" {
			t.Errorf("ParseModuleReference() = %v, %v, want testlib, 1.0.0", name, version)
		}

		// 无版本情况
		name, version = mapper.ParseModuleReference("testlib")
		if name != "testlib" || version != "" {
			t.Errorf("ParseModuleReference() = %v, %v, want testlib, \"\"", name, version)
		}
	})
}

// 测试缓存管理功能
func TestCacheManager(t *testing.T) {
	// 创建临时缓存目录
	tempDir, err := os.MkdirTemp("", "llgo-cache-test")
	if err != nil {
		t.Fatalf("Failed to create temp directory: %v", err)
	}
	defer os.RemoveAll(tempDir)

	cacheManager := list.NewCacheManager(tempDir)

	// 测试初始缓存状态
	t.Run("IsCacheValid_Initial", func(t *testing.T) {
		valid, err := cacheManager.IsCacheValid()
		if err != nil {
			t.Errorf("IsCacheValid() error = %v", err)
			return
		}
		if valid {
			t.Error("IsCacheValid() = true, want false for empty cache")
		}
	})

	// 测试更新缓存
	t.Run("UpdateCache", func(t *testing.T) {
		// 准备测试数据
		testStore := &list.Store{
			Packages: map[string]*list.Package{
				"testlib": {
					Versions: []list.VersionMapping{
						{
							CVersion:   "1.0.0",
							GoVersions: []string{"v0.1.0"},
						},
					},
				},
			},
		}

		data, err := json.Marshal(testStore)
		if err != nil {
			t.Fatalf("Failed to marshal test store: %v", err)
		}

		// 更新缓存
		err = cacheManager.UpdateCache(data, "test-etag")
		if err != nil {
			t.Errorf("UpdateCache() error = %v", err)
			return
		}

		// 验证缓存有效性
		valid, err := cacheManager.IsCacheValid()
		if err != nil {
			t.Errorf("IsCacheValid() after update error = %v", err)
			return
		}
		if !valid {
			t.Error("IsCacheValid() = false after update, want true")
		}

		// 验证缓存信息
		etag, exists, err := cacheManager.GetCacheInfo()
		if err != nil {
			t.Errorf("GetCacheInfo() error = %v", err)
			return
		}
		if !exists {
			t.Error("GetCacheInfo() exists = false, want true")
		}
		if etag != "test-etag" {
			t.Errorf("GetCacheInfo() etag = %v, want test-etag", etag)
		}

		// 测试读取缓存
		cachedStore, err := cacheManager.GetCachedStore()
		if err != nil {
			t.Errorf("GetCachedStore() error = %v", err)
			return
		}

		// 验证读取的数据
		if len(cachedStore.Packages) != 1 {
			t.Errorf("GetCachedStore() packages count = %v, want 1", len(cachedStore.Packages))
			return
		}

		pkg, ok := cachedStore.Packages["testlib"]
		if !ok {
			t.Error("Package testlib not found in cached store")
			return
		}

		if len(pkg.Versions) != 1 || pkg.Versions[0].CVersion != "1.0.0" {
			t.Errorf("Package versions = %v, want [{CVersion:1.0.0}]", pkg.Versions)
		}
	})

	// 测试缓存文件损坏情况
	t.Run("GetCachedStore_Corrupted", func(t *testing.T) {
		// 写入损坏的JSON数据
		err := os.WriteFile(filepath.Join(tempDir, "llpkgstore.json"), []byte("{invalid json"), 0644)
		if err != nil {
			t.Fatalf("Failed to write corrupted cache file: %v", err)
		}

		// 尝试读取损坏的缓存
		_, err = cacheManager.GetCachedStore()
		if err == nil {
			t.Error("GetCachedStore() should return error for corrupted cache")
		}
	})
}

// 测试输出格式化
func TestFormatter(t *testing.T) {
	t.Run("FormatTextOutput", func(t *testing.T) {
		// 创建测试模块信息
		modules := []*list.ModuleInfo{
			{
				Path:    "github.com/NEKO-CwC/llpkgstore/testlib",
				Version: "v1.0.0",
				LLPkg: &list.LLPkgInfo{
					Upstream: struct {
						Installer struct {
							Name   string            `json:"name"`
							Config map[string]string `json:"config"`
						} `json:"installer"`
						Package struct {
							Name    string `json:"name"`
							Version string `json:"version"`
						} `json:"package"`
					}{
						Installer: struct {
							Name   string            `json:"name"`
							Config map[string]string `json:"config"`
						}{
							Name: "conan",
						},
						Package: struct {
							Name    string `json:"name"`
							Version string `json:"version"`
						}{
							Name:    "testlib",
							Version: "1.0.0",
						},
					},
				},
			},
		}

		var buf bytes.Buffer
		formatter := list.NewFormatter(false, false)
		err := formatter.FormatTextOutput(&buf, modules)
		if err != nil {
			t.Errorf("FormatTextOutput() error = %v", err)
			return
		}

		expected := "github.com/NEKO-CwC/llpkgstore/testlib v1.0.0[conan:testlib/1.0.0]\n"
		if buf.String() != expected {
			t.Errorf("FormatTextOutput() = %q, want %q", buf.String(), expected)
		}
	})

	t.Run("FormatJSONOutput", func(t *testing.T) {
		modules := []*list.ModuleInfo{
			{
				Path:    "github.com/NEKO-CwC/llpkgstore/testlib",
				Version: "v1.0.0",
			},
		}

		var buf bytes.Buffer
		formatter := list.NewFormatter(false, true)
		err := formatter.FormatJSONOutput(&buf, modules)
		if err != nil {
			t.Errorf("FormatJSONOutput() error = %v", err)
			return
		}

		// 验证JSON输出
		var decodedModule list.ModuleInfo
		err = json.Unmarshal(buf.Bytes(), &decodedModule)
		if err != nil {
			t.Errorf("Failed to decode JSON output: %v", err)
			return
		}

		if decodedModule.Path != "github.com/NEKO-CwC/llpkgstore/testlib" || decodedModule.Version != "v1.0.0" {
			t.Errorf("JSON output path/version mismatch: got %s/%s", decodedModule.Path, decodedModule.Version)
		}
	})
}
