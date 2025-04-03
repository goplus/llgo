package clibs

// StatusFile constants for tracking library status
const (
	BuildDirName    = "_build"
	DownloadDirName = "_download"
	PrebuiltDirName = "_prebuilt"
	BuildHashFile   = "_llgo_clib_build_config_hash.json"

	LibConfigFile = "lib.yaml"

	ReleaseUrlPrefix = "https://github.com/cpunion/clibs/releases/download"
)

// Environment variable names used in build scripts
const (
	EnvPackageDir   = "CLIBS_PACKAGE_DIR"
	EnvDownloadDir  = "CLIBS_DOWNLOAD_DIR"
	EnvBuildGoos    = "CLIBS_BUILD_GOOS"
	EnvBuildGoarch  = "CLIBS_BUILD_GOARCH"
	EnvBuildTarget  = "CLIBS_BUILD_TARGET"
	EnvBuildCflags  = "CLIBS_BUILD_CFLAGS"
	EnvBuildLdflags = "CLIBS_BUILD_LDFLAGS"
	EnvBuildDir     = "CLIBS_BUILD_DIR"
)

type GitSpec struct {
	Repo string `json:"repo,omitempty" yaml:"repo,omitempty"`
	Ref  string `json:"ref,omitempty" yaml:"ref,omitempty"`
}

type FileSpec struct {
	URL        string `json:"url,omitempty" yaml:"url,omitempty"`
	NoExtract  bool   `json:"no-extract,omitempty" yaml:"no-extract,omitempty"`
	ExtractDir string `json:"extract-dir,omitempty" yaml:"extract-dir,omitempty"`
}

type BuildSpec struct {
	Command string `json:"command,omitempty" yaml:"command,omitempty"`
}

type LibSpec struct {
	Name    string     `json:"name,omitempty" yaml:"name,omitempty"`
	Version string     `json:"version,omitempty" yaml:"version,omitempty"`
	Git     *GitSpec   `json:"git,omitempty" yaml:"git,omitempty"`
	Files   []FileSpec `json:"files,omitempty" yaml:"files,omitempty"`
	Build   *BuildSpec `json:"build,omitempty" yaml:"build,omitempty"`
	Export  string     `json:"export,omitempty" yaml:"export,omitempty"`
}

func (c *LibSpec) DownloadHash() LibSpec {
	hashConfig := *c
	hashConfig.Build = nil
	hashConfig.Export = ""
	return hashConfig
}

func (c *LibSpec) BuildHash() LibSpec {
	return *c
}

// Lib represents a clib to be built

type Lib struct {
	ModName string
	Path    string
	Sum     string
	Config  LibSpec
	Env     []string
}

type Config struct {
	Goos     string
	Goarch   string
	Prebuilt bool
	Force    bool
	Verbose  bool
	Tags     []string
}
