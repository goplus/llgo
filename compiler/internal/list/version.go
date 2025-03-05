package list

// VersionMapper 处理版本映射查询
type VersionMapper struct {
	store *Store
}

// ResolveCVersion 将C库版本解析为Go模块版本
func (v *VersionMapper) ResolveCVersion(clib, cversion string) (modulePath string, versions []string, err error)

// GetLatestVersion 获取最新的Go版本
func (v *VersionMapper) GetLatestVersion(versions []string) string
