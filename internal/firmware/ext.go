package firmware

import "strings"

// BinaryExt returns the binary file extension based on the binary format
// Returns ".bin" for ESP-based formats, "" for others
func BinaryExt(binaryFormat string) string {
	if strings.HasPrefix(binaryFormat, "esp") {
		return ".bin"
	} else if strings.HasPrefix(binaryFormat, "uf2") {
		return ".uf2"
	} else if strings.HasPrefix(binaryFormat, "nrf-dfu") {
		return ".zip"
	}
	return ""
}
