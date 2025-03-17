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
	cKey := flatKey(name, cVer)

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
	cKey := flatKey(name, cVer)

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
	goKey := flatKey(name, goVer)

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
	// Get the version mappings for the module
	versionMappings, err := m.AllVersionMappingsFromName(name)
	if err != nil {
		return nil, err
	}

	// Extract Go versions
	goVersions := make([]string, 0, len(versionMappings))
	for _, mapping := range versionMappings {
		goVersions = append(goVersions, mapping.GoVersions...)
	}

	return goVersions, nil
}

// Gets all C versions for the given module name
func (m *metadataMgr) AllCVersFromName(name string) ([]string, error) {
	// Get the version mappings for the module
	versionMappings, err := m.AllVersionMappingsFromName(name)
	if err != nil {
		return nil, err
	}

	// Extract C versions
	cVersions := make([]string, 0, len(versionMappings))
	for _, mapping := range versionMappings {
		cVersions = append(cVersions, mapping.CVersion)
	}

	return cVersions, nil
}

// Returns the original version mappings for the module name
func (m *metadataMgr) AllVersionMappingsFromName(name string) ([]VersionMapping, error) {
	// First try to find the metadata in the cache
	metadata, ok := m.allCachedMetadata()[name]
	if !ok {
		// If the metadata are not in the cache, update the cache
		err := m.update()
		if err != nil {
			return nil, err
		}

		// Find the version mappings again
		metadata, ok = m.allCachedMetadata()[name]
		if !ok {
			return nil, ErrMetadataNotInCache
		}
	}

	// Return a copy to avoid modifying the internal data
	versionMappings := make([]VersionMapping, len(metadata.VersionMappings))
	for i, mapping := range metadata.VersionMappings {
		versionMappings[i] = *mapping
	}

	return versionMappings, nil
}

// Build the flat key for query
func flatKey(name, version string) string {
	return fmt.Sprintf("%s/%s", name, version)
}
