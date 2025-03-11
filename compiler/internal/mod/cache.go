package mod

import (
	"encoding/json"
	"fmt"
	"os"
	"path"
	"path/filepath"
	"strings"
	"time"
)

// CacheManager 处理缓存文件的存储、验证和更新
type CacheManager struct {
	cacheDir  string
	CacheInfo CacheInfo
}

type CacheInfo struct {
	LastModified string
}

// NewCacheManager 创建新的CacheManager实例
func NewCacheManager(cacheDir string) *CacheManager {

	cacheInfo := CacheInfo{}

	data, err := os.Stat(path.Join(cacheDir, StoreFileName))
	if err != nil {
		cacheInfo.LastModified = ""
	} else {
		// 格式化为 GMT
		UTCParts := strings.Split(data.ModTime().UTC().Format(time.RFC1123), " ")
		cacheInfo.LastModified = strings.Join(UTCParts[0:len(UTCParts)-1], " ") + " GMT"
	}

	return &CacheManager{
		cacheDir:  cacheDir,
		CacheInfo: cacheInfo,
	}
}

// GetCachedStore 获取缓存的llpkgstore.json内容
func (c *CacheManager) GetCachedStore() (*Store, error) {
	storeFile := filepath.Join(c.cacheDir, StoreFileName)

	// 一次性读取整个文件到内存
	data, err := os.ReadFile(storeFile)
	if err != nil {
		return nil, err
	}

	// 解析JSON数据
	var store Store
	if err := json.Unmarshal(data, &store); err != nil {
		return nil, err
	}

	return &store, nil
}

// UpdateCache 基于HTTP响应更新缓存
func (c *CacheManager) UpdateCache(data []byte) error {
	// 确保缓存目录存在
	if err := os.MkdirAll(c.cacheDir, 0755); err != nil {
		return fmt.Errorf("failed to create cache directory %s: %w", c.cacheDir, err)
	}

	// 尝试验证目录可写
	testFile := filepath.Join(c.cacheDir, ".write_test")
	f, err := os.Create(testFile)
	if err != nil {
		return fmt.Errorf("cache directory %s is not writable: %w", c.cacheDir, err)
	}
	f.Close()
	os.Remove(testFile)

	// 写入主数据文件
	storeFile := filepath.Join(c.cacheDir, StoreFileName)
	if err := os.WriteFile(storeFile, data, 0644); err != nil {
		return fmt.Errorf("failed to write cache file %s: %w", storeFile, err)
	}

	// 更新缓存元信息
	info := CacheInfo{
		LastModified: time.Now().Format(time.RFC1123),
	}

	infoData, err := json.Marshal(info)
	if err != nil {
		return fmt.Errorf("failed to serialize cache info: %w", err)
	}

	infoFile := filepath.Join(c.cacheDir, CacheInfoFileName)
	if err := os.WriteFile(infoFile, infoData, 0644); err != nil {
		return fmt.Errorf("failed to write cache info file %s: %w", infoFile, err)
	}

	return nil
}

// GetCacheInfo 获取缓存的元信息
func (c *CacheManager) GetCacheInfo() (etag string, exists bool, err error) {
	infoFile := filepath.Join(c.cacheDir, CacheInfoFileName)

	data, err := os.ReadFile(infoFile)
	if err != nil {
		if os.IsNotExist(err) {
			return "", false, nil
		}
		return "", false, err
	}

	var info CacheInfo
	if err := json.Unmarshal(data, &info); err != nil {
		return "", true, err
	}

	return info.LastModified, true, nil
}

func (c *CacheManager) GetCacheLastModified() string {
	return c.CacheInfo.LastModified
}

// IsCacheExist 检查缓存是否存在且有效
func (c *CacheManager) IsCacheExist() (bool, error) {
	storeFile := filepath.Join(c.cacheDir, StoreFileName)

	// 检查文件是否存在
	if _, err := os.Stat(storeFile); err != nil {
		if os.IsNotExist(err) {
			return false, nil
		}
		return false, err
	}

	// 检查缓存元信息是否存在
	info, err := os.Stat(filepath.Join(c.cacheDir, CacheInfoFileName))
	if err != nil {
		if os.IsNotExist(err) {
			return false, nil
		}
		return false, err
	}
	c.CacheInfo.LastModified = info.ModTime().Format(time.RFC1123)
	fmt.Println("Cache Last Modified: ", c.CacheInfo.LastModified)

	return true, nil
}

const StoreFileName = "llpkgstore.json"

const CacheInfoFileName = "llpkgstore.json.info"
