package build

import (
	"os"
	"path/filepath"
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

// genOutputs generates appropriate output paths based on the configuration
func genOutputs(conf *Config, pkgName string, multiPkg bool, crossCompile *crosscompile.Export) (OutputCfg, error) {
	var cfg OutputCfg

	// Calculate binary extension and set up format info
	binFmt := crossCompile.BinaryFormat
	binExt := firmware.BinaryExt(binFmt)
	cfg.BinFmt = binFmt

	// Determine output format and extension
	cfg.FileFmt, cfg.OutExt = determineFormat(conf, crossCompile)

	// Handle special .img case and set conversion flags
	cfg.DirectGen = shouldDirectGen(cfg.OutExt, binExt)
	if cfg.OutExt == ".img" {
		cfg.BinFmt = binFmt + "-img"
	}

	// Determine if firmware generation is needed
	cfg.NeedFwGen = needsFwGen(conf, cfg.OutExt, binExt)

	// Generate paths based on mode
	switch conf.Mode {
	case ModeBuild:
		return genBuildOutputs(conf, pkgName, multiPkg, cfg)
	case ModeRun, ModeTest, ModeCmpTest:
		return genRunOutputs(pkgName, cfg, conf.AppExt)
	case ModeInstall:
		return genInstallOutputs(conf, pkgName, cfg, binExt)
	default:
		return cfg, nil
	}
}

// determineFormat determines the file format and extension
func determineFormat(conf *Config, crossCompile *crosscompile.Export) (format, ext string) {
	if conf.FileFormat != "" {
		// User specified file format
		return conf.FileFormat, firmware.GetFileExtFromFormat(conf.FileFormat)
	}

	if conf.Mode == ModeRun && conf.Emulator && crossCompile.Emulator != "" {
		// Emulator mode - extract format from emulator command
		if emulatorFmt := firmware.ExtractFileFormatFromEmulator(crossCompile.Emulator); emulatorFmt != "" {
			return emulatorFmt, firmware.GetFileExtFromFormat(emulatorFmt)
		}
	}

	// Device flashing - determine format based on flash method and target
	if conf.Target != "" && (conf.Mode == ModeInstall || conf.Mode == ModeRun || conf.Mode == ModeTest || conf.Mode == ModeCmpTest) {
		if flashExt := determineFlashFormat(crossCompile); flashExt != "" {
			return flashExt[1:], flashExt // Remove the dot for format, keep for ext
		}
	}

	return "", ""
}

// determineFlashFormat determines the required file format for flashing based on flash method
func determineFlashFormat(crossCompile *crosscompile.Export) string {
	if crossCompile == nil {
		return ""
	}

	flashMethod := crossCompile.Flash.Method
	switch flashMethod {
	case "command", "":
		// Extract format from flash command tokens
		flashCommand := crossCompile.Flash.Command
		switch {
		case strings.Contains(flashCommand, "{hex}"):
			return ".hex"
		case strings.Contains(flashCommand, "{elf}"):
			return ".elf"
		case strings.Contains(flashCommand, "{bin}"):
			return ".bin"
		case strings.Contains(flashCommand, "{uf2}"):
			return ".uf2"
		case strings.Contains(flashCommand, "{zip}"):
			return ".zip"
		case strings.Contains(flashCommand, "{img}"):
			return ".img"
		default:
			return ""
		}
	case "msd":
		if crossCompile.MSD.FirmwareName == "" {
			return ""
		}
		return filepath.Ext(crossCompile.MSD.FirmwareName)
	case "openocd":
		return ".hex"
	case "bmp":
		return ".elf"
	default:
		return ""
	}
}

// shouldDirectGen determines if direct firmware generation is possible
func shouldDirectGen(outExt, binExt string) bool {
	return outExt == "" || outExt == binExt || outExt == ".img"
}

// needsFwGen determines if firmware generation is needed
func needsFwGen(conf *Config, outExt, binExt string) bool {
	switch conf.Mode {
	case ModeBuild:
		return conf.FileFormat != ""
	case ModeRun, ModeTest, ModeCmpTest:
		if conf.Emulator {
			return outExt != ""
		}
		return binExt != ""
	case ModeInstall:
		return binExt != ""
	default:
		return false
	}
}

// genBuildOutputs generates output paths for build mode
func genBuildOutputs(conf *Config, pkgName string, multiPkg bool, cfg OutputCfg) (OutputCfg, error) {
	if conf.OutFile == "" && multiPkg {
		// Multiple packages, use temp file
		return genTempOutputs(pkgName, cfg, conf.AppExt)
	}

	// Single package build
	baseName := pkgName
	if conf.OutFile != "" {
		baseName = conf.OutFile
	}

	if cfg.OutExt != "" {
		// Need format conversion: ELF -> format
		if err := setupTwoStageGen(&cfg, baseName, conf.AppExt); err != nil {
			return cfg, err
		}
	} else {
		// Direct output
		cfg.OutPath = baseName
		if filepath.Ext(cfg.OutPath) != conf.AppExt {
			cfg.OutPath += conf.AppExt
		}
		cfg.IntPath = cfg.OutPath
	}

	return cfg, nil
}

// genRunOutputs generates output paths for run mode
func genRunOutputs(pkgName string, cfg OutputCfg, appExt string) (OutputCfg, error) {
	// Always use temp files for run mode
	return genTempOutputs(pkgName, cfg, appExt)
}

// genInstallOutputs generates output paths for install mode (flashing to device)
func genInstallOutputs(conf *Config, pkgName string, cfg OutputCfg, binExt string) (OutputCfg, error) {
	// Install mode with target means flashing to device, use temp files like run mode
	if binExt != "" || cfg.OutExt != "" {
		// Flash to device - use temp files for firmware generation
		return genTempOutputs(pkgName, cfg, conf.AppExt)
	} else {
		// Install to BinPath (traditional install without target)
		cfg.OutPath = filepath.Join(conf.BinPath, pkgName+conf.AppExt)
		cfg.IntPath = cfg.OutPath
	}

	return cfg, nil
}

// setupTwoStageGen sets up paths for two-stage generation
func setupTwoStageGen(cfg *OutputCfg, baseName, appExt string) error {
	// Create temp file for intermediate ELF
	tmpFile, err := os.CreateTemp("", "llgo-*"+appExt)
	if err != nil {
		return err
	}
	tmpFile.Close()
	cfg.IntPath = tmpFile.Name()

	// Set final output path
	if baseName != "" {
		if filepath.Ext(baseName) == cfg.OutExt {
			cfg.OutPath = baseName
		} else {
			cfg.OutPath = baseName + cfg.OutExt
		}
	}

	return nil
}

// genTempOutputs creates temporary output file paths
func genTempOutputs(pkgName string, cfg OutputCfg, appExt string) (OutputCfg, error) {
	if cfg.OutExt != "" {
		// Need format conversion: create temp ELF, then convert to final format
		tmpFile, err := os.CreateTemp("", "llgo-*"+appExt)
		if err != nil {
			return cfg, err
		}
		tmpFile.Close()
		cfg.IntPath = tmpFile.Name()

		finalTmp, err := os.CreateTemp("", pkgName+"-*"+cfg.OutExt)
		if err != nil {
			return cfg, err
		}
		finalTmp.Close()
		cfg.OutPath = finalTmp.Name()
	} else {
		// Direct output
		tmpFile, err := os.CreateTemp("", pkgName+"-*"+appExt)
		if err != nil {
			return cfg, err
		}
		tmpFile.Close()
		cfg.OutPath = tmpFile.Name()
		cfg.IntPath = cfg.OutPath
	}

	return cfg, nil
}
