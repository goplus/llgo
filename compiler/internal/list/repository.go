package list

import (
	"encoding/json"
	"fmt"
	"github.com/goplus/llgo/compiler/internal/mod"
	"net/http"
	"os"
	"path/filepath"
)

type RunningRepository struct {
	Store *StoreRepository
}

func NewRunningRepository(cacheDir string, httpClient *http.Client, logger mod.Logger) *RunningRepository {
	store := NewStoreRepository(cacheDir, httpClient, logger)

	return &RunningRepository{
		Store: store,
	}
}

// StoreRepository 实现 ModuleStore 接口，负责存储层逻辑
type StoreRepository struct {
	cacheDir     string
	httpClient   *http.Client
	cacheManager *mod.CacheManager
	storeService *mod.StoreService
	logger       mod.Logger
	store        *mod.Store
}

// NewStoreRepository 创建新的 StoreRepository 实例
func NewStoreRepository(cacheDir string, httpClient *http.Client, logger mod.Logger) *StoreRepository {
	// 默认值处理
	if httpClient == nil {
		httpClient = &http.Client{Timeout: mod.DefaultTimeout}
	}

	if logger == nil {
		logger = mod.DefaultLogger
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

	cacheManager := mod.NewCacheManager(cacheDir)
	fetcher := mod.NewStoreService(httpClient)

	return &StoreRepository{
		cacheDir:     cacheDir,
		httpClient:   httpClient,
		cacheManager: cacheManager,
		storeService: fetcher,
		logger:       logger,
	}
}

// GetStore 获取完整的 llpkgstore 数据，实现 ModuleStore 接口
func (r *StoreRepository) GetLatestStore() (*mod.Store, error) {
	// 如果已经加载过，直接返回
	if r.store != nil {
		return r.store, nil
	}

	r.logger.Info("检查llpkgstore缓存...")

	// 获取最新数据
	data, _, notModified, err := r.storeService.FetchStore(r.cacheManager.CacheInfo.LastModified)
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
	var store mod.Store
	if err := json.Unmarshal(data, &store); err != nil {
		return nil, fmt.Errorf("解析数据失败: %w", err)
	}

	// 更新缓存
	r.logger.Info("更新缓存...")
	if err := r.cacheManager.UpdateCache(data); err != nil {
		r.logger.Warning("更新缓存失败: %v", err)
	} else {
		r.logger.Info("缓存更新成功")
	}

	r.store = &store
	return &store, nil
}

// GetPackage 获取特定的包
func (r *StoreRepository) GetPackage(name string) (*mod.Package, bool) {
	store, err := r.GetLatestStore()
	if err != nil {
		r.logger.Error("获取存储失败: %v", err)
		return nil, false
	}

	pkg, exists := (*store)[name]
	return pkg, exists
}

// GetAllPackages 获取所有包
func (r *StoreRepository) GetAllPackages() *mod.Store {
	store, err := r.GetLatestStore()
	if err != nil {
		r.logger.Error("获取存储失败: %v", err)
		return nil
	}

	return store
}
