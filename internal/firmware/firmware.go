package firmware

import (
	"fmt"
	"strings"
)

// MakeFirmwareImage creates a firmware image from the given input file.
func MakeFirmwareImage(infile, outfile, format, fmtDetail string) error {
	if strings.HasPrefix(format, "esp") {
		return makeESPFirmareImage(infile, outfile, format)
	} else if format == "uf2" {
		uf2Family := fmtDetail
		return convertELFFileToUF2File(infile, outfile, uf2Family)
	} else if format == "nrf-dfu" {
		return makeDFUFirmwareImage(infile, outfile)
	}
	return fmt.Errorf("unsupported firmware format: %s", format)
}
