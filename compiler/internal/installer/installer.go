package installer

// Installer represents a package installer that can download, install, and locate binaries from a remote repository.
// It provides methods to install packages to specific directories and search for installed package information.
type Installer interface {
	Name() string
	Config() map[string]string
	// Install downloads and installs the specified package.
	// The outputDir is where build artifacts (e.g., .pc files, headers) are stored.
	// Returns an error if installation fails, all the pkgConfigFiles if success.
	Install(pkg Package, outputDir string) (pkgConfigFiles []string, err error)
	// Search checks remote repository for the specified package availability.
	// Returns the search results text and any encountered errors.
	Search(pkg Package) ([]string, error)
}
