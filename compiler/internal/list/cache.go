package list

// CacheManager 处理缓存文件的存储、验证和更新
type CacheManager struct {
	cacheDir string
}

// GetCachedStore 获取缓存的 llpkgstore.json 内容
func (c *CacheManager) GetCachedStore() (*Store, error)

// UpdateCache 基于HTTP响应更新缓存
func (c *CacheManager) UpdateCache(data []byte, etag string) error

// GetCacheInfo 获取缓存的元信息
func (c *CacheManager) GetCacheInfo() (etag string, exists bool, err error)
