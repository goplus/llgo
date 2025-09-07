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

// ExtractFileFormatFromCommand extracts file format from command template
// Returns the format if found (e.g. "bin", "hex", "zip", "img"), empty string if not found
func ExtractFileFormatFromCommand(cmd string) string {
	formats := []string{"bin", "hex", "zip", "img", "uf2"}
	for _, format := range formats {
		if strings.Contains(cmd, "{"+format+"}") {
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

// ConvertFormats processes format conversions for embedded targets only
func ConvertFormats(binFmt, fmtDetail string, envMap map[string]string) error {
	fmt.Printf("Converting formats based on binary format: %s\n", binFmt)
	fmt.Printf("Format details: %s\n", fmtDetail)
	fmt.Printf("Environment map: %+v\n", envMap)
	// Convert to bin format first (needed for img)
	if envMap["bin"] != "" {
		err := MakeFirmwareImage(envMap["out"], envMap["bin"], binFmt, fmtDetail)
		if err != nil {
			return fmt.Errorf("failed to convert to bin format: %w", err)
		}
	}

	// Convert to hex format
	if envMap["hex"] != "" {
		err := MakeFirmwareImage(envMap["out"], envMap["hex"], binFmt, fmtDetail)
		if err != nil {
			return fmt.Errorf("failed to convert to hex format: %w", err)
		}
	}

	// Convert to img format (depends on bin)
	if envMap["img"] != "" {
		err := MakeFirmwareImage(envMap["out"], envMap["img"], binFmt+"-img", fmtDetail)
		if err != nil {
			return fmt.Errorf("failed to convert to img format: %w", err)
		}
	}

	// Convert to uf2 format
	if envMap["uf2"] != "" {
		err := MakeFirmwareImage(envMap["out"], envMap["uf2"], binFmt, fmtDetail)
		if err != nil {
			return fmt.Errorf("failed to convert to uf2 format: %w", err)
		}
	}

	// Convert to zip format
	if envMap["zip"] != "" {
		err := MakeFirmwareImage(envMap["out"], envMap["zip"], binFmt, fmtDetail)
		if err != nil {
			return fmt.Errorf("failed to convert to zip format: %w", err)
		}
	}

	return nil
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
