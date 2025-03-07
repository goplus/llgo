// repository.go
package list

import (
	"encoding/json"
	"fmt"
	"net/http"
	"os"
	"path/filepath"
	"time"
)

const (
	storeFileName     = "llpkgstore.json"
	cacheInfoFileName = "llpkgstore.json.info"
	primaryURLPath    = "https://llpkg.goplus.org/llpkgstore.json"
	fallbackURLPath   = "https://raw.githubusercontent.com/NEKO-CwC/llpkgstore/main/llpkgstore.json"
	defaultTimeout    = 10 * time.Second
)

// StoreRepository 实现ModuleStore接口，负责存储层逻辑
type StoreRepository struct {
	cacheDir     string
	httpClient   *http.Client
	cacheManager *CacheManager
	fetcher      *Fetcher
	logger       Logger
	store        *Store
}

// NewStoreRepository 创建新的StoreRepository实例
func NewStoreRepository(cacheDir string, httpClient *http.Client, logger Logger) *StoreRepository {
	// 默认值处理
	if httpClient == nil {
		httpClient = &http.Client{Timeout: defaultTimeout}
	}

	if logger == nil {
		logger = DefaultLogger
	}

	// 确保缓存目录存在
	if cacheDir == "" {
		homeDir, err := os.UserHomeDir()
		if err == nil {
			cacheDir = filepath.Join(homeDir, ".llgo", "cache")
		} else {
			cacheDir = filepath.Join(os.TempDir(), "llgo-cache")
		}
		logger.Warning("缓存目录未指定，使用默认目录: %s", cacheDir)
	}

	cacheManager := NewCacheManager(cacheDir)
	fetcher := NewFetcher(httpClient)

	return &StoreRepository{
		cacheDir:     cacheDir,
		httpClient:   httpClient,
		cacheManager: cacheManager,
		fetcher:      fetcher,
		logger:       logger,
	}
}

// GetStore 获取完整的llpkgstore数据，实现ModuleStore接口
func (r *StoreRepository) GetStore() (*Store, error) {
	// 如果已经加载过，直接返回
	if r.store != nil {
		return r.store, nil
	}

	r.logger.Info("检查llpkgstore缓存...")

	// 检查缓存有效性
	valid, err := r.cacheManager.IsCacheValid()
	if err != nil {
		r.logger.Warning("检查缓存有效性失败: %v", err)
	} else if valid {
		r.logger.Info("找到有效缓存，尝试使用...")
		store, err := r.cacheManager.GetCachedStore()
		if err == nil {
			r.logger.Info("成功从缓存加载数据")
			r.store = store
			return store, nil
		}
		r.logger.Warning("读取缓存失败: %v，获取最新数据", err)
	} else {
		r.logger.Info("未找到有效缓存，获取最新数据...")
	}

	// 获取缓存的ETag
	etag, _, err := r.cacheManager.GetCacheInfo()
	if err != nil {
		etag = ""
		r.logger.Warning("无法获取ETag: %v", err)
	}

	// 获取最新数据
	data, newETag, notModified, err := r.fetcher.FetchStore(etag)
	if err != nil {
		return nil, fmt.Errorf("获取数据失败: %w", err)
	}

	if notModified {
		r.logger.Info("数据未修改，使用缓存版本")
		store, err := r.cacheManager.GetCachedStore()
		if err != nil {
			return nil, err
		}
		r.store = store
		return store, nil
	}

	r.logger.Info("解析接收的数据...")
	var store Store
	if err := json.Unmarshal(data, &store); err != nil {
		return nil, fmt.Errorf("解析数据失败: %w", err)
	}

	// 更新缓存
	r.logger.Info("更新缓存...")
	if err := r.cacheManager.UpdateCache(data, newETag); err != nil {
		r.logger.Warning("更新缓存失败: %v", err)
	} else {
		r.logger.Info("缓存更新成功")
	}

	r.store = &store
	return &store, nil
}

// GetPackage 获取特定的包
func (r *StoreRepository) GetPackage(name string) (*Package, bool) {
	store, err := r.GetStore()
	if err != nil {
		r.logger.Error("获取存储失败: %v", err)
		return nil, false
	}

	pkg, exists := (*store)[name]
	return pkg, exists
}

// GetAllPackages 获取所有包
func (r *StoreRepository) GetAllPackages() *Store {
	store, err := r.GetStore()
	if err != nil {
		r.logger.Error("获取存储失败: %v", err)
		return nil
	}

	return store
}
