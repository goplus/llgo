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
	"time"
)

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
