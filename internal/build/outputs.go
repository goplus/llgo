package build

import (
	"os"
	"path/filepath"
	"slices"
	"strings"

	"github.com/goplus/llgo/internal/crosscompile"
	"github.com/goplus/llgo/internal/firmware"
)

// OutputCfg contains the generated output paths and conversion configuration
type OutputCfg struct {
	OutPath   string // Final output file path
	IntPath   string // Intermediate file path (for two-stage conversion)
	OutExt    string // Output file extension
	FileFmt   string // File format (from conf.FileFormat or extracted from emulator)
	BinFmt    string // Binary format for firmware conversion (may have -img suffix)
	NeedFwGen bool   // Whether firmware image generation is needed
	DirectGen bool   // True if can generate firmware directly without intermediate file
}

func genTempOutputFile(prefix, ext string) (string, error) {
	tmpFile, err := os.CreateTemp("", prefix+"-*"+ext)
	if err != nil {
		return "", err
	}
	tmpFile.Close()
	return tmpFile.Name(), nil
}

// setOutFmt sets the appropriate OutFmt based on format name
func setOutFmt(conf *Config, formatName string) {
	switch formatName {
	case "bin":
		conf.OutFmts.Bin = true
	case "hex":
		conf.OutFmts.Hex = true
	case "img":
		conf.OutFmts.Img = true
	case "uf2":
		conf.OutFmts.Uf2 = true
	case "zip":
		conf.OutFmts.Zip = true
	}
}

// buildOutFmts creates OutFmtDetails based on package, configuration and multi-package status
func buildOutFmts(pkgName string, conf *Config, multiPkg bool, crossCompile *crosscompile.Export) (*OutFmtDetails, error) {
	details := &OutFmtDetails{}
	var err error
	if conf.Target == "" {
		// Native target
		if conf.Mode == ModeInstall {
			details.Out = filepath.Join(conf.BinPath, pkgName+conf.AppExt)
		} else if conf.Mode == ModeBuild && !multiPkg && conf.OutFile != "" {
			base := strings.TrimSuffix(conf.OutFile, conf.AppExt)
			details.Out = base + conf.AppExt
		} else if conf.Mode == ModeBuild && !multiPkg {
			details.Out = pkgName + conf.AppExt
		} else {
			details.Out, err = genTempOutputFile(pkgName, conf.AppExt)
			if err != nil {
				return nil, err
			}
		}
		return details, nil
	}

	if multiPkg {
		details.Out, err = genTempOutputFile(pkgName, conf.AppExt)
		if err != nil {
			return nil, err
		}
	} else if conf.OutFile != "" {
		base := strings.TrimSuffix(conf.OutFile, conf.AppExt)
		details.Out = base + conf.AppExt
	} else if conf.Mode == ModeBuild {
		details.Out = pkgName + conf.AppExt
	} else {
		details.Out, err = genTempOutputFile(pkgName, conf.AppExt)
		if err != nil {
			return nil, err
		}
	}

	// Check emulator format if emulator mode is enabled
	outFmt := ""
	if conf.Emulator {
		if crossCompile.Emulator != "" {
			outFmt = firmware.ExtractFileFormatFromCommand(crossCompile.Emulator)
		}
	} else {
		if crossCompile.Device.Flash.Method == "command" {
			outFmt = firmware.ExtractFileFormatFromCommand(crossCompile.Device.Flash.Command)
		}
	}
	if outFmt != "" {
		setOutFmt(conf, outFmt)
	}

	// Check binary format and set corresponding format
	if crossCompile.BinaryFormat != "" && slices.Contains([]Mode{ModeRun, ModeTest, ModeCmpTest, ModeInstall}, conf.Mode) {
		envName := firmware.BinaryFormatToEnvName(crossCompile.BinaryFormat)
		if envName != "" {
			setOutFmt(conf, envName)
		}
	}

	// Generate format-specific paths based on base output
	if details.Out != "" {
		base := strings.TrimSuffix(details.Out, filepath.Ext(details.Out))

		if conf.OutFmts.Bin || conf.OutFmts.Img {
			details.Bin = base + ".bin"
		}
		if conf.OutFmts.Hex {
			details.Bin = base + ".bin" // hex depends on bin
			details.Hex = base + ".hex"
		}
		if conf.OutFmts.Img {
			details.Bin = base + ".bin" // img depends on bin
			details.Img = base + ".img"
		}
		if conf.OutFmts.Uf2 {
			details.Uf2 = base + ".uf2"
		}
		if conf.OutFmts.Zip {
			details.Zip = base + ".zip"
		}
	}

	return details, nil
}

// ToEnvMap converts OutFmtDetails to a map for template substitution
func (details *OutFmtDetails) ToEnvMap() map[string]string {
	envMap := make(map[string]string)

	if details.Out != "" {
		envMap[""] = details.Out
		envMap["out"] = details.Out
		envMap["elf"] = details.Out // alias for compatibility
	}
	if details.Bin != "" {
		envMap["bin"] = details.Bin
	}
	if details.Hex != "" {
		envMap["hex"] = details.Hex
	}
	if details.Img != "" {
		envMap["img"] = details.Img
	}
	if details.Uf2 != "" {
		envMap["uf2"] = details.Uf2
	}
	if details.Zip != "" {
		envMap["zip"] = details.Zip
	}

	return envMap
}
