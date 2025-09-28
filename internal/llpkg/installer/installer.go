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
	// mapped version, aka module version, in llpkg design, we call it mapped version
	// this field isn't a part of design, aims to help installer like ghrelease get the mapped version quickly
	// so we cannot export it
	mappedVersion string
}

// ModuleVersion returns the mapped version of the package.
// This is used internally to retrieve the module version that corresponds to the package version.
func (p *Package) ModuleVersion() string {
	return p.mappedVersion
}

// SetModuleVersion sets the mapped version for the package.
// This method is used internally to store the module version that maps to the package version.
func (p *Package) SetModuleVersion(ver string) {
	p.mappedVersion = ver
}
