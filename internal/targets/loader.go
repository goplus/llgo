package targets

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"
)

// Loader handles loading and parsing target configurations
type Loader struct {
	targetsDir string
	cache      map[string]*RawConfig
}

// NewLoader creates a new target configuration loader
func NewLoader(targetsDir string) *Loader {
	return &Loader{
		targetsDir: targetsDir,
		cache:      make(map[string]*RawConfig),
	}
}

// LoadRaw loads a raw configuration without resolving inheritance
func (l *Loader) LoadRaw(name string) (*RawConfig, error) {
	// Check cache first
	if config, exists := l.cache[name]; exists {
		return config, nil
	}

	// Construct file path
	configPath := filepath.Join(l.targetsDir, name+".json")

	// Read file
	data, err := os.ReadFile(configPath)
	if err != nil {
		return nil, fmt.Errorf("failed to read target config %s: %w", name, err)
	}

	// Parse JSON
	var config RawConfig
	if err := json.Unmarshal(data, &config); err != nil {
		return nil, fmt.Errorf("failed to parse target config %s: %w", name, err)
	}

	// Set the name
	config.Name = name

	// Cache the result
	l.cache[name] = &config

	return &config, nil
}

// Load loads a target configuration with inheritance resolved
func (l *Loader) Load(name string) (*Config, error) {
	raw, err := l.LoadRaw(name)
	if err != nil {
		return nil, err
	}

	return l.resolveInheritance(raw)
}

// LoadAll loads all target configurations in the targets directory
func (l *Loader) LoadAll() (map[string]*Config, error) {
	entries, err := os.ReadDir(l.targetsDir)
	if err != nil {
		return nil, fmt.Errorf("failed to read targets directory: %w", err)
	}

	configs := make(map[string]*Config)

	for _, entry := range entries {
		if entry.IsDir() || !strings.HasSuffix(entry.Name(), ".json") {
			continue
		}

		name := strings.TrimSuffix(entry.Name(), ".json")
		config, err := l.Load(name)
		if err != nil {
			return nil, fmt.Errorf("failed to load target %s: %w", name, err)
		}

		configs[name] = config
	}

	return configs, nil
}

// resolveInheritance resolves inheritance chain for a configuration
func (l *Loader) resolveInheritance(raw *RawConfig) (*Config, error) {
	if !raw.HasInheritance() {
		// No inheritance, return as-is
		return &raw.Config, nil
	}

	// Start with base config
	result := &Config{Name: raw.Name}

	// Apply inheritance in order
	for _, parentName := range raw.GetInherits() {
		parent, err := l.Load(parentName)
		if err != nil {
			return nil, fmt.Errorf("failed to load parent config %s: %w", parentName, err)
		}

		// Merge parent into result
		l.mergeConfig(result, parent)
	}

	// Finally, apply current config on top
	l.mergeConfig(result, &raw.Config)

	return result, nil
}

// mergeConfig merges source config into destination config
// Non-empty values in source override those in destination
func (l *Loader) mergeConfig(dst, src *Config) {
	if src.LLVMTarget != "" {
		dst.LLVMTarget = src.LLVMTarget
	}
	if src.CPU != "" {
		dst.CPU = src.CPU
	}
	if src.Features != "" {
		dst.Features = src.Features
	}
	if src.GOOS != "" {
		dst.GOOS = src.GOOS
	}
	if src.GOARCH != "" {
		dst.GOARCH = src.GOARCH
	}
	if src.Linker != "" {
		dst.Linker = src.Linker
	}
	if src.LinkerScript != "" {
		dst.LinkerScript = src.LinkerScript
	}
	if src.CodeModel != "" {
		dst.CodeModel = src.CodeModel
	}
	if src.TargetABI != "" {
		dst.TargetABI = src.TargetABI
	}
	if src.RelocationModel != "" {
		dst.RelocationModel = src.RelocationModel
	}

	// Merge slices (append, don't replace)
	if len(src.BuildTags) > 0 {
		dst.BuildTags = append(dst.BuildTags, src.BuildTags...)
	}
	if len(src.CFlags) > 0 {
		dst.CFlags = append(dst.CFlags, src.CFlags...)
	}
	if len(src.LDFlags) > 0 {
		dst.LDFlags = append(dst.LDFlags, src.LDFlags...)
	}
}

// GetTargetsDir returns the targets directory path
func (l *Loader) GetTargetsDir() string {
	return l.targetsDir
}

// ListTargets returns a list of all available target names
func (l *Loader) ListTargets() ([]string, error) {
	entries, err := os.ReadDir(l.targetsDir)
	if err != nil {
		return nil, fmt.Errorf("failed to read targets directory: %w", err)
	}

	var targets []string
	for _, entry := range entries {
		if entry.IsDir() || !strings.HasSuffix(entry.Name(), ".json") {
			continue
		}

		name := strings.TrimSuffix(entry.Name(), ".json")
		targets = append(targets, name)
	}

	return targets, nil
}
