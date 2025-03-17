package mod

import "time"

type ModuleStore interface {
	GetLatestStore() (*Store, error)
	GetPackage(name string) (*Package, bool)
	GetAllPackages() *Store
}

type Store map[string]*Package

type Package struct {
	Versions []VersionMapping `json:"versions"`
}

type VersionMapping struct {
	CVersion   string   `json:"c"`
	GoVersions []string `json:"go"`
}

type LLPkgInfo struct {
	Upstream struct {
		Installer struct {
			Name   string            `json:"name"`
			Config map[string]string `json:"config"`
		} `json:"installer"`
		Package struct {
			Name    string `json:"name"`
			Version string `json:"version"`
		} `json:"package"`
	} `json:"upstream"`
}

type ModuleInfo struct {
	Path      string     `json:"path"`
	Version   string     `json:"version"`
	Time      time.Time  `json:"time,omitempty"`
	Indirect  bool       `json:"indirect,omitempty"`
	GoVersion string     `json:"go_version,omitempty"`
	LLPkg     *LLPkgInfo `json:"llpkg,omitempty"`
}
