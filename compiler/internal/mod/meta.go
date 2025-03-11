package mod

import (
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"strings"
)

// MetaInfoService 负责获取和解析元信息
type MetaInfoService struct {
	httpClient *http.Client
	logger     Logger
}

// NewMetaInfoService 创建一个新的MetaInfoService
func NewMetaInfoService(httpClient *http.Client, logger Logger) *MetaInfoService {
	if httpClient == nil {
		httpClient = &http.Client{Timeout: DefaultTimeout}
	}

	if logger == nil {
		logger = DefaultLogger
	}

	return &MetaInfoService{
		httpClient: httpClient,
		logger:     logger,
	}
}

// FetchMetaInfo 获取模块的元信息
func (m *MetaInfoService) FetchMetaInfo(ref *ModuleRef) ([]byte, error) {
	// 构建GitHub URL
	url := m.buildCfgURL(ref)
	m.logger.Info("从 %s 获取元信息", url)

	// 发送HTTP请求
	resp, err := m.httpClient.Get(url)
	if err != nil {
		return nil, fmt.Errorf("获取元信息失败: %w", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("服务器返回HTTP %d: %s", resp.StatusCode, resp.Status)
	}

	// 读取响应数据
	data, err := io.ReadAll(resp.Body)
	if err != nil {
		return nil, fmt.Errorf("读取响应内容失败: %w", err)
	}

	return data, nil
}

// ParseLLPkgInfo 解析llpkg元信息
func (m *MetaInfoService) ParseLLPkgInfo(data []byte) (*LLPkgInfo, error) {
	var info LLPkgInfo
	if err := json.Unmarshal(data, &info); err != nil {
		return nil, fmt.Errorf("解析元信息失败: %w", err)
	}

	return &info, nil
}

// buildCfgURL 构建GitHub URL
func (m *MetaInfoService) buildCfgURL(ref *ModuleRef) string {
	// 解析模块路径
	parts := strings.SplitN(ref.ModulePath, "/", 4)
	if len(parts) < 3 || parts[0] != "github.com" {
		m.logger.Warning("无效的GitHub模块路径: %s，使用后备方案", ref.ModulePath)
		return fmt.Sprintf("https://raw.githubusercontent.com/NEKO-CwC/llpkgstore/main/%s/llpkg.cfg", ref.Name)
	}

	user := parts[1]
	repo := parts[2]

	// 构建GitHub URL
	tag := ref.Tag()
	if tag == "" {
		m.logger.Warning("%s 没有可用的标签，使用main分支", ref.Name)
		tag = "main"
	}

	return fmt.Sprintf("https://raw.githubusercontent.com/%s/%s/%s/%s/llpkg.cfg", user, repo, tag, ref.Name)
}
