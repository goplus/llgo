package mod

import (
	"errors"
	"path/filepath"
)

var (
	remoteMetadataURL      = "https://llpkg.goplus.org/llpkgstore.json" // change only for testing
	cachedMetadataFileName = "llpkgstore.json"
	ErrMetadataNotInCache  = errors.New("metadata not in cache")
)

type CVersion = string
type GoVersion = string

// MetadataMap represents llpkgstore.json
type MetadataMap map[string]*Metadata

type Metadata struct {
	Versions map[CVersion][]GoVersion `json:"versions"`
}

type metadataMgr struct {
	cache *cache[MetadataMap]
}

// NewMetadataMgr returns a new metadata manager
func NewMetadataMgr(cacheDir string) (*metadataMgr, error) {
	cachePath := filepath.Join(cacheDir, cachedMetadataFileName)
	cache, err := NewCache[MetadataMap](cachePath, remoteMetadataURL)
	if err != nil {
		return nil, err
	}

	mgr := &metadataMgr{
		cache: cache,
	}

	return mgr, nil
}

// Returns all up-to-date metadata
func (m *metadataMgr) AllMetadata() (MetadataMap, error) {
	err := m.update()
	if err != nil {
		return nil, err
	}
	return m.allCachedMetadata(), nil
}

// Returns the up-to-date module metadata by name
func (m *metadataMgr) MetadataByName(name string) (Metadata, error) {
	// First try to find the module metadata in the cache
	metadata, err := m.cachedMetadataByName(name)
	if errors.Is(err, ErrMetadataNotInCache) {
		// If the module metadata is not in the cache, update the cache
		err := m.update()
		if err != nil {
			return Metadata{}, err
		}

		// Find the module metadata again
		metadata, err = m.cachedMetadataByName(name)
		if err != nil {
			return Metadata{}, err
		}
	}

	return metadata, nil
}

// Returns true if the name is an exist module name
func (m *metadataMgr) ModuleExists(name string) (bool, error) {
	_, err := m.MetadataByName(name)
	if errors.Is(err, ErrMetadataNotInCache) {
		return false, nil
	} else if err != nil {
		return false, err
	}
	return true, nil
}

// Returns the module metadata in the cache
func (m *metadataMgr) allCachedMetadata() MetadataMap {
	cache := m.cache.Data()
	return cache
}

// Returns the module metadata in the cache by name
func (m *metadataMgr) cachedMetadataByName(name string) (Metadata, error) {
	allMetadata := m.allCachedMetadata()

	metadata, ok := allMetadata[name]
	if !ok {
		return Metadata{}, ErrMetadataNotInCache
	}

	return *metadata, nil
}

func (m *metadataMgr) update() error {
	return m.cache.Update()
}
