package targets

// Config represents a complete target configuration after inheritance resolution
type Config struct {
	// Target identification
	Name string `json:"-"`

	// LLVM configuration
	LLVMTarget string `json:"llvm-target"`
	CPU        string `json:"cpu"`
	Features   string `json:"features"`

	// Build configuration
	BuildTags []string `json:"build-tags"`
	GOOS      string   `json:"goos"`
	GOARCH    string   `json:"goarch"`

	// Compiler and linker configuration
	Linker       string   `json:"linker"`
	LinkerScript string   `json:"linkerscript"`
	CFlags       []string `json:"cflags"`
	LDFlags      []string `json:"ldflags"`
	ExtraFiles   []string `json:"extra-files"`

	// Code generation configuration
	CodeModel       string `json:"code-model"`
	TargetABI       string `json:"target-abi"`
	RelocationModel string `json:"relocation-model"`
}

// RawConfig represents the raw JSON configuration before inheritance resolution
type RawConfig struct {
	Inherits []string `json:"inherits"`
	Config
}

// IsEmpty returns true if the config appears to be uninitialized
func (c *Config) IsEmpty() bool {
	return c.Name == "" && c.LLVMTarget == "" && c.GOOS == "" && c.GOARCH == ""
}

// HasInheritance returns true if this config inherits from other configs
func (rc *RawConfig) HasInheritance() bool {
	return len(rc.Inherits) > 0
}

// GetInherits returns the list of configs this config inherits from
func (rc *RawConfig) GetInherits() []string {
	return rc.Inherits
}
