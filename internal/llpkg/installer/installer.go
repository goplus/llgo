package installer

// Installer represents a package installer that can download, install, and locate binaries from a remote repository.
// It provides methods to install packages to specific directories and search for installed package information.
type Installer interface {
	Install(pkg Package, outputDir string) error
}

// Package defines the metadata required to identify and install a software library.
// The Name and Version fields provide precise identification of the library.
type Package struct {
	Name    string
	Version string
}
