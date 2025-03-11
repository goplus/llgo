package mod

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
	PrimaryURLPath  = "https://llpkg.goplus.org/llpkgstore.json"
	FallbackURLPath = "https://raw.githubusercontent.com/NEKO-CwC/llpkgstore/main/llpkgstore.json"
	DefaultTimeout  = 10 * time.Second
)

// StoreService 负责从不同来源获取llpkgstore.json
type StoreService struct {
	httpClient  *http.Client
	primaryURL  string
	fallbackURL string
}

// NewStoreService 创建新的Fetcher实例
func NewStoreService(httpClient *http.Client) *StoreService {
	// 确保HTTP客户端有合理的超时设置
	if httpClient == nil {
		httpClient = &http.Client{
			Timeout: DefaultTimeout,
		}
	}

	return &StoreService{
		httpClient:  httpClient,
		primaryURL:  PrimaryURLPath,
		fallbackURL: FallbackURLPath,
	}
}

// FetchStore 尝试获取最新的llpkgstore.json
func (f *StoreService) FetchStore(currentModified string) (data []byte, newModified string, notModified bool, err error) {
	// 首先尝试主URL
	fmt.Println(currentModified)
	data, newModified, notModified, err = f.fetchFromURLWithModified(f.primaryURL, currentModified)
	if err == nil {
		return data, newModified, notModified, nil
	}

	// 如果主URL失败，尝试备用URL
	data, newModified, notModified, fallbackErr := f.fetchFromURLWithModified(f.fallbackURL, currentModified)
	if fallbackErr == nil {
		return data, newModified, notModified, nil
	}

	// 两个URL都失败了，返回更详细的错误信息
	return nil, "", false, fmt.Errorf("failed to fetch store: primary: %v, fallback: %v", err, fallbackErr)
}

// fetchFromURLWithModified 从指定URL通过 Last Modified 获取数据
func (f *StoreService) fetchFromURLWithModified(url, lastModified string) (data []byte, newModified string, notModified bool, err error) {
	// 创建带有If-None-Match头的请求
	req, err := http.NewRequest(http.MethodGet, url, nil)
	if err != nil {
		return nil, "", false, fmt.Errorf("failed to create request: %w", err)
	}

	if lastModified != "" {
		req.Header.Set("If-Modified-Since", lastModified)
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
	fmt.Println(resp.StatusCode)
	if resp.StatusCode == http.StatusNotModified {
		fmt.Fprintln(os.Stderr, "Resource not modified, using cached version")
		return nil, lastModified, true, nil
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
	return data, resp.Header.Get("Last-Modified"), false, nil
}
