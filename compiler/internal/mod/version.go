package mod

import (
	"fmt"

	"golang.org/x/mod/semver"
)

// Gets the latest Go version based on the module name and C version
func (m *metadataMgr) LatestGoVerFromCVer(name, cVer string) (string, error) {
	// Search for the latest Go version
	goVers, err := m.GoVersFromCVer(name, cVer)
	if err != nil {
		return "", err
	}

	if len(goVers) > 0 {
		semver.Sort(goVers)
		latestGoVer := goVers[len(goVers)-1]

		return latestGoVer, nil
	}

	return "", fmt.Errorf("no version mappings for %s %s", name, cVer)
}

// Gets Go versions based on the module name and C version
func (m *metadataMgr) GoVersFromCVer(name, cVer string) ([]string, error) {
	metadata, err := m.MetadataByName(name)
	if err != nil {
		return nil, err
	}

	// Search for the Go versions
	goVers, ok := metadata.Versions[cVer]
	if !ok {
		// Try to update if not found
		err := m.update()
		if err != nil {
			return nil, err
		}

		// Try again
		goVers, ok = metadata.Versions[cVer]
		if !ok {
			return nil, fmt.Errorf("no version mappings for %s %s", name, cVer)
		}
	}

	// Return a copy
	result := make([]string, len(goVers))
	copy(result, goVers)

	return result, nil
}
