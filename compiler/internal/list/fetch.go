package list

import (
	"errors"
	"fmt"
	"io"
	"net"
	"net/http"
	"os"
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
