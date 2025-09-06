package firmware

import (
	"fmt"
	"io"
	"os"
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

// ExtractFileFormatFromEmulator extracts file format from emulator command template
// Returns the format if found (e.g. "bin", "hex", "zip", "img"), empty string if not found
func ExtractFileFormatFromEmulator(emulatorCmd string) string {
	formats := []string{"bin", "hex", "zip", "img", "uf2"}
	for _, format := range formats {
		if strings.Contains(emulatorCmd, "{"+format+"}") {
			return format
		}
	}
	return ""
}

// GetFileExtFromFormat converts file format to file extension
func GetFileExtFromFormat(format string) string {
	switch format {
	case "bin":
		return ".bin"
	case "hex":
		return ".hex"
	case "elf":
		return ""
	case "uf2":
		return ".uf2"
	case "zip":
		return ".zip"
	case "img":
		return ".img"
	default:
		return ""
	}
}

// ConvertOutput converts a binary file to the specified format.
// If binaryFormat == fileFormat, no conversion is needed.
// Otherwise, only hex format conversion is supported.
func ConvertOutput(infile, outfile, binaryFormat, fileFormat string) error {
	// If formats match, no conversion needed
	if binaryFormat == fileFormat {
		return nil
	}

	// Only support conversion to hex and format
	if fileFormat == "hex" {
		return convertToHex(infile, outfile)
	}

	return fmt.Errorf("unsupported format conversion from %s to %s", binaryFormat, fileFormat)
}

// convertToHex converts binary file to hex format (each byte as two hex characters)
func convertToHex(infile, outfile string) error {
	srcFile, err := os.Open(infile)
	if err != nil {
		return err
	}
	defer srcFile.Close()

	dstFile, err := os.Create(outfile)
	if err != nil {
		return err
	}
	defer dstFile.Close()

	// Read input file and convert each byte to two hex characters
	buf := make([]byte, 4096) // Read in chunks
	for {
		n, err := srcFile.Read(buf)
		if n > 0 {
			for i := 0; i < n; i++ {
				if _, writeErr := fmt.Fprintf(dstFile, "%02x", buf[i]); writeErr != nil {
					return writeErr
				}
			}
		}
		if err == io.EOF {
			break
		}
		if err != nil {
			return err
		}
	}
	return nil
}
