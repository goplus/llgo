package installer

// LLPkgConfig represents the configuration structure parsed from llpkg.cfg files.
type LLPkgConfig struct {
	Upstream UpstreamConfig `json:"upstream"`
}

// UpstreamConfig defines the upstream configuration containing installer settings and package metadata.
type UpstreamConfig struct {
	Installer InstallerConfig `json:"installer"`
	Package   Package         `json:"package"`
}

// InstallerConfig specifies the installer type and its configuration options.
// "name" field must match supported installers (e.g., "conan").
// "config" holds installer-specific parameters (optional).
type InstallerConfig struct {
	Name   string            `json:"name"`
	Config map[string]string `json:"config,omitempty"`
}

// Package defines the metadata required to identify and install a software library.
// The Name and Version fields provide precise identification of the library.
type Package struct {
	Name    string
	Version string
}
