package list

import "net/http"

// Fetcher 负责从不同来源获取 llpkgstore.json
type Fetcher struct {
	httpClient  *http.Client
	primaryURL  string
	fallbackURL string
}

// FetchStore 尝试获取最新的 llpkgstore.json
func (f *Fetcher) FetchStore(currentETag string) (data []byte, newETag string, notModified bool, err error)

// fetchFromURL 从指定URL获取数据
func (f *Fetcher) fetchFromURL(url, etag string) (data []byte, newETag string, notModified bool, err error)
