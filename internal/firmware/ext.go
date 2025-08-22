package firmware

import "strings"

// BinaryExt returns the binary file extension based on the binary format
// Returns ".bin" for ESP-based formats, "" for others
func BinaryExt(binaryFormat string) string {
	if strings.HasPrefix(binaryFormat, "esp") {
		return ".bin"
	}
	return ""
}
