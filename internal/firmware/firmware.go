package firmware

import (
	"fmt"
	"strings"
)

func MakeFirmwareImage(infile, outfile, format string) error {
	fmt.Printf("Creating firmware image from %s to %s with format %s\n", infile, outfile, format)
	if strings.HasPrefix(format, "esp") {
		return makeESPFirmareImage(infile, outfile, format)
	}
	return fmt.Errorf("unsupported firmware format: %s", format)
}
