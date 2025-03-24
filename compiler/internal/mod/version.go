package mod

import (
	"fmt"

	"golang.org/x/mod/semver"
)

// Gets the latest C version associated with the latest Go version
func (m *metadataMgr) LatestCVer(name string) (string, error) {
	latestGoVersion, err := m.LatestGoVer(name)
	if err != nil {
		return "", err
	}

	latestCVersion, err := m.CVerFromGoVer(name, latestGoVersion)
	if err != nil {
		return "", err
	}

	return latestCVersion, nil
}

// Gets the latest Go version for the given module name
func (m *metadataMgr) LatestGoVer(name string) (string, error) {
	allGoVersions, err := m.AllGoVersFromName(name)
	if err != nil {
		return "", err
	}

	if len(allGoVersions) == 0 {
		return "", fmt.Errorf("no Go versions found for %s", name)
	}

	semver.Sort(allGoVersions)
	latestGoVersion := allGoVersions[len(allGoVersions)-1]

	return latestGoVersion, nil
}

// Gets the latest Go version based on the module name and C version
func (m *metadataMgr) LatestGoVerFromCVer(name, cVer string) (string, error) {
	// Build the flat key
	cKey := flatKey{name, cVer}

	// Search for the latest Go version
	goVersions, ok := m.flatCToGo[cKey]
	if !ok {
		// Try to update if not found
		err := m.update()
		if err != nil {
			return "", err
		}

		// Try again
		goVersions, ok = m.flatCToGo[cKey]
		if !ok {
			return "", fmt.Errorf("no version mappings for %s %s", name, cVer)
		}
	}

	if len(goVersions) > 0 {
		semver.Sort(goVersions)
		latestGoVersion := goVersions[len(goVersions)-1]

		return latestGoVersion, nil
	}

	return "", fmt.Errorf("no version mappings for %s %s", name, cVer)
}

// Gets Go versions based on the module name and C version
func (m *metadataMgr) GoVersFromCVer(name, cVer string) ([]string, error) {
	// Build the flat key
	cKey := flatKey{name, cVer}

	// Search for the Go versions
	versions, ok := m.flatCToGo[cKey]
	if !ok {
		// Try to update if not found
		err := m.update()
		if err != nil {
			return nil, err
		}

		// Try again
		versions, ok = m.flatCToGo[cKey]
		if !ok {
			return nil, fmt.Errorf("no version mappings for %s %s", name, cVer)
		}
	}

	// Return a copy
	result := make([]string, len(versions))
	copy(result, versions)

	return result, nil
}

// Gets the C version based on the module name and Go version
func (m *metadataMgr) CVerFromGoVer(name, goVer string) (string, error) {
	// Build the flat key
	goKey := flatKey{name, goVer}

	// Search for the C version in the cached flat hash
	cVersion, ok := m.flatGoToC[goKey]
	if !ok {
		// Update if not found
		err := m.update()
		if err != nil {
			return "", err
		}

		// Try again
		cVersion, ok = m.flatGoToC[goKey]
		if !ok {
			return "", fmt.Errorf("no C version found for %s %s", name, goVer)
		}
	}

	return cVersion, nil
}

// Gets all Go versions for the given module name
func (m *metadataMgr) AllGoVersFromName(name string) ([]string, error) {
	// Extract Go versions
	goVersions := make([]string, 0, len(m.flatGoToC))
	for goVersionKey, _ := range m.flatGoToC {
		goVersions = append(goVersions, goVersionKey.version)
	}

	return goVersions, nil
}

// Gets all C versions for the given module name
func (m *metadataMgr) AllCVersFromName(name string) ([]string, error) {
	// Extract C versions
	cVersions := make([]string, 0, len(m.flatCToGo))
	for cVersionKey, _ := range m.flatCToGo {
		cVersions = append(cVersions, cVersionKey.version)
	}

	return cVersions, nil
}

type flatKey struct {
	name, version string
}

func (m *flatKey) String(name, version string) string {
	return fmt.Sprintf("%s/%s", m.name, m.version)
}
