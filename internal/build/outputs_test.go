//go:build !llgo
// +build !llgo

package build

import (
	"strings"
	"testing"
)

func TestGenOutputs(t *testing.T) {
	tests := []struct {
		name          string
		conf          *Config
		pkgName       string
		multiPkg      bool
		emulator      string
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
			pkgName:       "hello",
			wantOutPath:   "hello",
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "build with -o",
			conf: &Config{
				Mode:    ModeBuild,
				OutFile: "myapp",
				AppExt:  "",
			},
			pkgName:       "hello",
			wantOutPath:   "myapp",
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "esp32",
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
			pkgName:       "hello",
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
			pkgName:       "hello",
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
			pkgName:       "hello",
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
			pkgName:       "hello",
			wantOutPath:   "", // temp file
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "run with target",
			conf: &Config{
				Mode:   ModeRun,
				AppExt: "",
				Target: "esp32",
			},
			pkgName:       "hello",
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
			pkgName:       "hello",
			emulator:      "qemu-system-xtensa -machine esp32 -drive file={hex},if=mtd,format=raw",
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
			pkgName:       "hello",
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
			pkgName:       "hello",
			wantOutPath:   "", // temp file
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "test with target",
			conf: &Config{
				Mode:   ModeTest,
				AppExt: "",
				Target: "esp32",
			},
			pkgName:       "hello",
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
			pkgName:       "hello",
			wantOutPath:   "", // temp file
			wantOutExt:    "",
			wantFileFmt:   "",
			wantBinFmt:    "esp32",
			wantDirectGen: true,
		},
		{
			name: "install without target",
			conf: &Config{
				Mode:    ModeInstall,
				BinPath: "/go/bin",
				AppExt:  "",
			},
			pkgName:       "hello",
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
			pkgName:       "hello",
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
			pkgName:       "hello",
			wantOutPath:   "", // temp file for flashing
			wantOutExt:    ".hex",
			wantFileFmt:   "hex",
			wantBinFmt:    "esp32",
			wantDirectGen: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Determine input binFmt - remove -img suffix if present as it will be added by the code
			inputBinFmt := tt.wantBinFmt
			if strings.HasSuffix(inputBinFmt, "-img") && tt.wantFileFmt == "img" {
				inputBinFmt = strings.TrimSuffix(inputBinFmt, "-img")
			}
			result, err := GenOutputs(tt.conf, tt.pkgName, tt.multiPkg, tt.emulator, inputBinFmt)
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
		name     string
		conf     *Config
		emulator string
		wantFmt  string
		wantExt  string
	}{
		{
			name:    "user specified format",
			conf:    &Config{FileFormat: "hex"},
			wantFmt: "hex",
			wantExt: ".hex",
		},
		{
			name:     "emulator format extraction",
			conf:     &Config{Mode: ModeRun, Emulator: true},
			emulator: "qemu-system-xtensa -machine esp32 -drive file={bin},if=mtd,format=raw",
			wantFmt:  "bin",
			wantExt:  ".bin",
		},
		{
			name:    "no format",
			conf:    &Config{},
			wantFmt: "",
			wantExt: "",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			gotFmt, gotExt := determineFormat(tt.conf, tt.emulator)
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
