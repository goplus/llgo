package config

import (
	"encoding/json"
	"fmt"
	"os"

	"github.com/goplus/llgo/compiler/internal/installer"
)

// ParseLLPkgConfig reads and parses the llpkg.cfg configuration file
// Performs the following operations:
//
// 1. Opens and reads the configuration file.
// 2. Deserializes JSON content into LLPkgConfig struct.
// 3. Applies default values for missing parameters.
// 4. Returns parsed config or I/O/decoding errors.
func ParseLLPkgConfig(configPath string) (installer.LLPkgConfig, error) {
	var config installer.LLPkgConfig
	file, err := os.Open(configPath)
	if err != nil {
		return config, fmt.Errorf("failed to open config file: %w", err)
	}
	defer file.Close()

	decoder := json.NewDecoder(file)
	err = decoder.Decode(&config)
	if err != nil {
		return config, fmt.Errorf("failed to decode config file: %w", err)
	}

	return config, nil
}
