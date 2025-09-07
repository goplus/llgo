//go:build !llgo
// +build !llgo

package build

import (
	"testing"

	"github.com/goplus/llgo/internal/crosscompile"
	"github.com/goplus/llgo/internal/flash"
)

func TestGenOutputs(t *testing.T) {
	tests := []struct {
		name          string
		conf          *Config
		pkgName       string
		multiPkg      bool
		crossCompile  *crosscompile.Export
		wantOutPath   string // use empty string to indicate temp file
		wantIntPath   string // use empty string to indicate same as outPath
		wantOutExt    string
		wantFileFmt   string
		wantBinFmt    string
		wantDirectGen bool
	}{
		{
			name: "build without target",
			conf: &Config{
				Mode:    ModeBuild,
				BinPath: "/go/bin",
				AppExt:  "",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "",
			},
			wantOutPath:   "hello",
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "",
			wantDirectGen: true,
		},
		{
			name: "build with -o",
			conf: &Config{
				Mode:    ModeBuild,
				OutFile: "myapp",
				AppExt:  "",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "",
			},
			wantOutPath:   "myapp",
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "",
			wantDirectGen: true,
		},
		{
			name: "build with target and file-format",
			conf: &Config{
				Mode:       ModeBuild,
				BinPath:    "/go/bin",
				AppExt:     "",
				FileFormat: "bin",
				Target:     "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
			},
			wantOutPath:   "hello.bin",
			wantOutExt:    ".bin",
			wantFileFmt:   "bin",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "build with target, -o and file-format",
			conf: &Config{
				Mode:       ModeBuild,
				OutFile:    "myapp",
				AppExt:     "",
				FileFormat: "hex",
				Target:     "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
			},
			wantOutPath:   "myapp.hex",
			wantOutExt:    ".hex",
			wantFileFmt:   "hex",
			wantBinFmt:    "esp32",
			wantDirectGen: false,
		},
		{
			name: "build with target, -o has correct extension and file-format",
			conf: &Config{
				Mode:       ModeBuild,
				OutFile:    "myapp.hex",
				AppExt:     "",
				FileFormat: "hex",
				Target:     "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
			},
			wantOutPath:   "myapp.hex",
			wantOutExt:    ".hex",
			wantFileFmt:   "hex",
			wantBinFmt:    "esp32",
			wantDirectGen: false,
		},
		{
			name: "run without target",
			conf: &Config{
				Mode:   ModeRun,
				AppExt: "",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "",
			},
			wantOutPath:   "", // temp file
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "",
			wantDirectGen: true,
		},
		{
			name: "run with target",
			conf: &Config{
				Mode:   ModeRun,
				AppExt: "",
				Target: "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
			},
			wantOutPath:   "", // temp file
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "run with target and emulator",
			conf: &Config{
				Mode:     ModeRun,
				AppExt:   "",
				Target:   "esp32",
				Emulator: true,
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
				Emulator:     "qemu-system-xtensa -machine esp32 -drive file={hex},if=mtd,format=raw",
			},
			wantOutPath:   "", // temp file
			wantOutExt:    ".hex",
			wantFileFmt:   "hex",
			wantBinFmt:    "esp32",
			wantDirectGen: false,
		},
		{
			name: "build with img file-format",
			conf: &Config{
				Mode:       ModeBuild,
				BinPath:    "/go/bin",
				AppExt:     "",
				FileFormat: "img",
				Target:     "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
			},
			wantOutPath:   "hello.img",
			wantOutExt:    ".img",
			wantFileFmt:   "img",
			wantBinFmt:    "esp32-img",
			wantDirectGen: true,
		},
		{
			name: "test without target",
			conf: &Config{
				Mode:   ModeTest,
				AppExt: "",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "",
			},
			wantOutPath:   "", // temp file
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "",
			wantDirectGen: true,
		},
		{
			name: "test with target",
			conf: &Config{
				Mode:   ModeTest,
				AppExt: "",
				Target: "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
			},
			wantOutPath:   "", // temp file
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "cmptest without target",
			conf: &Config{
				Mode:   ModeCmpTest,
				AppExt: "",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "",
			},
			wantOutPath:   "", // temp file
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "",
			wantDirectGen: true,
		},
		{
			name: "install without target",
			conf: &Config{
				Mode:    ModeInstall,
				BinPath: "/go/bin",
				AppExt:  "",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "",
			},
			wantOutPath:   "/go/bin/hello",
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "",
			wantDirectGen: true,
		},
		{
			name: "install with esp32 target (flash to device)",
			conf: &Config{
				Mode:    ModeInstall,
				BinPath: "/go/bin",
				AppExt:  "",
				Target:  "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
			},
			wantOutPath:   "", // temp file for flashing
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "install with file format (flash to device)",
			conf: &Config{
				Mode:       ModeInstall,
				BinPath:    "/go/bin",
				AppExt:     "",
				FileFormat: "hex",
				Target:     "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
			},
			wantOutPath:   "", // temp file for flashing
			wantOutExt:    ".hex",
			wantFileFmt:   "hex",
			wantBinFmt:    "esp32",
			wantDirectGen: false,
		},
		{
			name: "run with target non-emulator (should use .bin from binary format)",
			conf: &Config{
				Mode:   ModeRun,
				AppExt: "",
				Target: "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
			},
			wantOutPath:   "", // temp file
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "run with flash method command - extract hex from command",
			conf: &Config{
				Mode:   ModeRun,
				AppExt: "",
				Target: "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
				Device: flash.Device{
					Flash: flash.Flash{
						Method:  "command",
						Command: "esptool.py --chip esp32 write_flash 0x10000 {hex}",
					},
				},
			},
			wantOutPath:   "", // temp file
			wantOutExt:    ".hex",
			wantFileFmt:   "hex",
			wantBinFmt:    "esp32",
			wantDirectGen: false,
		},
		{
			name: "run with flash method command - extract bin from command",
			conf: &Config{
				Mode:   ModeRun,
				AppExt: "",
				Target: "esp32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "esp32",
				Device: flash.Device{
					Flash: flash.Flash{
						Method:  "command",
						Command: "esptool.py --chip esp32 write_flash 0x10000 {bin}",
					},
				},
			},
			wantOutPath:   "", // temp file
			wantOutExt:    ".bin",
			wantFileFmt:   "bin",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "run with flash method openocd - should use .hex",
			conf: &Config{
				Mode:   ModeRun,
				AppExt: "",
				Target: "stm32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "arm",
				Device: flash.Device{
					Flash: flash.Flash{
						Method: "openocd",
					},
				},
			},
			wantOutPath:   "", // temp file
			wantOutExt:    ".hex",
			wantFileFmt:   "hex",
			wantBinFmt:    "arm",
			wantDirectGen: false,
		},
		{
			name: "run with flash method msd - extract extension from firmware name",
			conf: &Config{
				Mode:   ModeRun,
				AppExt: "",
				Target: "rp2040",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "uf2",
				Device: flash.Device{
					Flash: flash.Flash{
						Method: "msd",
					},
					MSD: flash.MSD{
						FirmwareName: "firmware.uf2",
					},
				},
			},
			wantOutPath:   "", // temp file
			wantOutExt:    ".uf2",
			wantFileFmt:   "uf2",
			wantBinFmt:    "uf2",
			wantDirectGen: true,
		},
		{
			name: "run with flash method bmp - should use .elf",
			conf: &Config{
				Mode:   ModeRun,
				AppExt: "",
				Target: "stm32",
			},
			pkgName: "hello",
			crossCompile: &crosscompile.Export{
				BinaryFormat: "arm",
				Device: flash.Device{
					Flash: flash.Flash{
						Method: "bmp",
					},
				},
			},
			wantOutPath:   "", // temp file
			wantOutExt:    ".elf",
			wantFileFmt:   "elf",
			wantBinFmt:    "arm",
			wantDirectGen: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result, err := genOutputs(tt.conf, tt.pkgName, tt.multiPkg, tt.crossCompile)
			if err != nil {
				t.Fatalf("GenOutputs() error = %v", err)
			}

			if tt.wantOutExt != result.OutExt {
				t.Errorf("GenOutputs() OutExt = %v, want %v", result.OutExt, tt.wantOutExt)
			}

			if tt.wantFileFmt != result.FileFmt {
				t.Errorf("GenOutputs() FileFmt = %v, want %v", result.FileFmt, tt.wantFileFmt)
			}

			if tt.wantBinFmt != result.BinFmt {
				t.Errorf("GenOutputs() BinFmt = %v, want %v", result.BinFmt, tt.wantBinFmt)
			}

			if tt.wantDirectGen != result.DirectGen {
				t.Errorf("GenOutputs() DirectGen = %v, want %v", result.DirectGen, tt.wantDirectGen)
			}

			if tt.wantOutPath != "" {
				// Check exact match for non-temp files
				if result.OutPath != tt.wantOutPath {
					t.Errorf("GenOutputs() OutPath = %v, want %v", result.OutPath, tt.wantOutPath)
				}
			} else {
				// Check temp file pattern for temp files
				if result.OutPath == "" {
					t.Errorf("GenOutputs() OutPath should not be empty for temp file")
				}
			}

			// Check IntPath logic
			if tt.wantIntPath != "" {
				// Check exact IntPath match when specified
				if result.IntPath != tt.wantIntPath {
					t.Errorf("GenOutputs() IntPath = %v, want %v", result.IntPath, tt.wantIntPath)
				}
			} else if tt.wantOutExt != "" && !tt.wantDirectGen {
				// Should have different IntPath for format conversion
				if result.IntPath == result.OutPath {
					t.Errorf("GenOutputs() IntPath should be different from OutPath when format conversion is needed")
				}
			} else if tt.conf.Mode == ModeRun && tt.wantOutExt == "" {
				// Run mode without conversion should have same IntPath and OutPath
				if result.IntPath != result.OutPath {
					t.Errorf("GenOutputs() IntPath should equal OutPath for run mode without conversion")
				}
			} else if tt.conf.Mode == ModeInstall {
				// Install mode: check based on whether it's device flashing or traditional install
				isDeviceFlash := tt.conf.Target != "" || tt.wantOutExt != ""
				if isDeviceFlash {
					// Device flashing - should use temp files (like run mode)
					if result.OutPath == "" {
						// This is expected for temp files, no additional check needed
					}
				} else {
					// Traditional install to BinPath - should have fixed paths
					if result.IntPath != result.OutPath {
						t.Errorf("GenOutputs() IntPath should equal OutPath for traditional install mode")
					}
				}
			}
		})
	}
}

func TestDetermineFormat(t *testing.T) {
	tests := []struct {
		name         string
		conf         *Config
		crossCompile *crosscompile.Export
		wantFmt      string
		wantExt      string
	}{
		{
			name:         "user specified format",
			conf:         &Config{FileFormat: "hex"},
			crossCompile: &crosscompile.Export{},
			wantFmt:      "hex",
			wantExt:      ".hex",
		},
		{
			name: "emulator format extraction",
			conf: &Config{Mode: ModeRun, Emulator: true},
			crossCompile: &crosscompile.Export{
				Emulator: "qemu-system-xtensa -machine esp32 -drive file={bin},if=mtd,format=raw",
			},
			wantFmt: "bin",
			wantExt: ".bin",
		},
		{
			name: "flash method command - extract hex",
			conf: &Config{Mode: ModeRun, Target: "esp32"},
			crossCompile: &crosscompile.Export{
				Device: flash.Device{
					Flash: flash.Flash{
						Method:  "command",
						Command: "esptool.py --chip esp32 write_flash 0x10000 {hex}",
					},
				},
			},
			wantFmt: "hex",
			wantExt: ".hex",
		},
		{
			name: "flash method command - extract bin",
			conf: &Config{Mode: ModeRun, Target: "esp32"},
			crossCompile: &crosscompile.Export{
				Device: flash.Device{
					Flash: flash.Flash{
						Method:  "command",
						Command: "esptool.py --chip esp32 write_flash 0x10000 {bin}",
					},
				},
			},
			wantFmt: "bin",
			wantExt: ".bin",
		},
		{
			name: "flash method openocd",
			conf: &Config{Mode: ModeRun, Target: "stm32"},
			crossCompile: &crosscompile.Export{
				Device: flash.Device{
					Flash: flash.Flash{
						Method: "openocd",
					},
				},
			},
			wantFmt: "hex",
			wantExt: ".hex",
		},
		{
			name: "flash method msd - extract from firmware name",
			conf: &Config{Mode: ModeRun, Target: "rp2040"},
			crossCompile: &crosscompile.Export{
				Device: flash.Device{
					Flash: flash.Flash{
						Method: "msd",
					},
					MSD: flash.MSD{
						FirmwareName: "firmware.uf2",
					},
				},
			},
			wantFmt: "uf2",
			wantExt: ".uf2",
		},
		{
			name: "flash method bmp",
			conf: &Config{Mode: ModeRun, Target: "stm32"},
			crossCompile: &crosscompile.Export{
				Device: flash.Device{
					Flash: flash.Flash{
						Method: "bmp",
					},
				},
			},
			wantFmt: "elf",
			wantExt: ".elf",
		},
		{
			name:         "no format",
			conf:         &Config{},
			crossCompile: &crosscompile.Export{},
			wantFmt:      "",
			wantExt:      "",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			gotFmt, gotExt := determineFormat(tt.conf, tt.crossCompile)
			if gotFmt != tt.wantFmt {
				t.Errorf("determineFormat() format = %v, want %v", gotFmt, tt.wantFmt)
			}
			if gotExt != tt.wantExt {
				t.Errorf("determineFormat() ext = %v, want %v", gotExt, tt.wantExt)
			}
		})
	}
}

func TestShouldDirectGen(t *testing.T) {
	tests := []struct {
		name   string
		outExt string
		binExt string
		want   bool
	}{
		{"no extension", "", ".bin", true},
		{"same extension", ".bin", ".bin", true},
		{"img format", ".img", ".bin", true},
		{"different extension", ".hex", ".bin", false},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := shouldDirectGen(tt.outExt, tt.binExt); got != tt.want {
				t.Errorf("shouldDirectGen() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestNeedsFwGen(t *testing.T) {
	tests := []struct {
		name   string
		conf   *Config
		outExt string
		binExt string
		want   bool
	}{
		{
			name:   "build mode with file format",
			conf:   &Config{Mode: ModeBuild, FileFormat: "hex"},
			outExt: ".hex",
			want:   true,
		},
		{
			name:   "build mode without file format",
			conf:   &Config{Mode: ModeBuild},
			outExt: "",
			want:   false,
		},
		{
			name:   "run mode with emulator",
			conf:   &Config{Mode: ModeRun, Emulator: true},
			outExt: ".hex",
			want:   true,
		},
		{
			name:   "run mode with binExt",
			conf:   &Config{Mode: ModeRun},
			outExt: "",
			binExt: ".bin",
			want:   true,
		},
		{
			name:   "test mode with emulator",
			conf:   &Config{Mode: ModeTest, Emulator: true},
			outExt: ".hex",
			want:   true,
		},
		{
			name:   "test mode with binExt",
			conf:   &Config{Mode: ModeTest},
			outExt: "",
			binExt: ".bin",
			want:   true,
		},
		{
			name:   "cmptest mode with binExt",
			conf:   &Config{Mode: ModeCmpTest},
			outExt: "",
			binExt: ".bin",
			want:   true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := needsFwGen(tt.conf, tt.outExt, tt.binExt); got != tt.want {
				t.Errorf("needsFwGen() = %v, want %v", got, tt.want)
			}
		})
	}
}
