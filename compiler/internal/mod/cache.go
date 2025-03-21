package mod

import (
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"time"
)

var (
	ErrCacheFileNotFound = errors.New("cache file not found")
)

// Cache represents a local cache for storing and retrieving data.
// It binds a local file path and a remote data source URL
type Cache[T any] struct {
	data T // stores cached data

	cacheFilePath string // local file path for cache storage
	remoteUrl     string // URL of the remote data source

	modTime time.Time // last modified time of the cached data
}

// NewCache initializes and loads the cache from disk or remote source
func NewCache[T any](cacheFilePath, remoteUrl string) (*Cache[T], error) {
	cache := &Cache[T]{
		cacheFilePath: cacheFilePath,
		remoteUrl:     remoteUrl,
	}

	err := cache.loadFromDisk()
	if err != nil {
		// local cache missing or invalid, fetch from remote
		err = cache.Update()
		if err != nil {
			return nil, fmt.Errorf("error building cache: %v", err)
		}
	}

	return cache, nil
}

// Update refreshes the cache by fetching remote data and saving to disk
func (c *Cache[T]) Update() error {
	err := c.fetch()
	if err != nil {
		return err
	}

	err = c.saveToDisk()
	if err != nil {
		return err
	}

	return nil
}

// fetch retrieves the latest data from the remote source using conditional requests
func (c *Cache[T]) fetch() error {
	// Create HTTP request with If-Modified-Since header to reduce unnecessary downloads
	req, err := http.NewRequest("GET", c.remoteUrl, nil)
	if err != nil {
		return err
	}
	if !c.modTime.IsZero() {
		req.Header.Set("If-Modified-Since", c.modTime.Format(http.TimeFormat))
	}
	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	switch resp.StatusCode {
	case http.StatusNotModified:
		return nil
	case http.StatusOK:
		// Read and parse the response body
		body, err := io.ReadAll(resp.Body)
		if err != nil {
			return err
		}

		var bodyData T
		err = json.Unmarshal(body, &bodyData)
		if err != nil {
			return err
		}
		c.data = bodyData

		// Update last modified time from response headers
		lastModified := resp.Header.Get("Last-Modified")
		if lastModified != "" {
			c.modTime, err = time.Parse(http.TimeFormat, lastModified)
			if err != nil {
				return err
			}
		}
		return nil
	default:
		return fmt.Errorf("HTTP error %d: %s", resp.StatusCode, resp.Status)
	}
}

func (c *Cache[T]) Data() T {
	return c.data
}

// saveToDisk persists the current cache data to the local file system
func (c *Cache[T]) saveToDisk() error {
	// Create directory structure if needed
	err := os.MkdirAll(filepath.Dir(c.cacheFilePath), 0755)
	if err != nil {
		return err
	}

	// Serialize data to JSON
	file, err := json.Marshal(c.data)
	if err != nil {
		return err
	}

	// Write to file with proper permissions
	err = os.WriteFile(c.cacheFilePath, file, 0644)
	if err != nil {
		return err
	}

	return nil
}

func (c *Cache[T]) loadFromDisk() error {
	if c.exists() {
		// Read the cache file.
		file, err := os.ReadFile(c.cacheFilePath)
		if err != nil {
			return fmt.Errorf("error read file from cache: %v", err)
		}

		// Unmarshal the cache file.
		var fileData T
		err = json.Unmarshal(file, &fileData)
		if err != nil {
			return fmt.Errorf("error json unmarshal from cache: %v", err)
		}
		c.data = fileData

		// Get the last modified time of the cache.
		fileInfo, err := os.Stat(c.cacheFilePath)
		if err != nil {
			return err
		}
		c.modTime = fileInfo.ModTime()
	} else {
		return ErrCacheFileNotFound
	}

	return nil
}

// Returns true if the local cache exists.
func (c *Cache[T]) exists() bool {
	_, err := os.Stat(c.cacheFilePath)
	return !errors.Is(err, os.ErrNotExist)
}
