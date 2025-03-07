package list

// {
//     "cgood": {
//         "versions" : [{
//             "c": "1.3",
//             "go": ["v0.1.0", "v0.1.1"]
//         },
//         {
//             "c": "1.3.1",
//             "go": ["v1.1.0"]
//         }]
//     }
// }

import (
	"fmt"
	"slices"
	"time"
)

type Store map[string]*Package

type Package struct {
	Versions []VersionMapping `json:"versions"`
}

func (p *Package) GetLatestVersion() string {
	if len(p.Versions) == 0 {
		return ""
	}
	return p.Versions[len(p.Versions)-1].GoVersions[0]
}

func (p *Package) GetCVersionFromGoVersion(goVersion string) string {
	for _, mapping := range p.Versions {
		if slices.Index(mapping.GoVersions, goVersion) != -1 {
			return mapping.CVersion
		}
	}
	return ""
}

// 调试版本
func (p *Package) GetLatestGoVersionFromCVersion(cVersion string) string {
	fmt.Printf("寻找C版本: %s\n", cVersion)
	for i, mapping := range p.Versions {
		fmt.Printf("  检查映射[%d]: C版本=%s, Go版本=%v\n",
			i, mapping.CVersion, mapping.GoVersions)
		if mapping.CVersion == cVersion {
			result := ""
			if len(mapping.GoVersions) > 0 {
				result = mapping.GoVersions[len(mapping.GoVersions)-1]
			}
			fmt.Printf("  找到匹配! 返回: %s\n", result)
			return result
		}
	}
	fmt.Println("  未找到匹配")
	return ""
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

type CacheInfo struct {
	ETag       string    `json:"etag"`
	LastUpdate time.Time `json:"last_update"`
}

type ModuleInfo struct {
	Path      string     `json:"path"`
	Version   string     `json:"version"`
	Time      time.Time  `json:"time,omitempty"`
	Indirect  bool       `json:"indirect,omitempty"`
	GoVersion string     `json:"go_version,omitempty"`
	LLPkg     *LLPkgInfo `json:"llpkg,omitempty"`
}
