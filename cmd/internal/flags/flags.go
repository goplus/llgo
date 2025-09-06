package flags

import (
	"flag"

	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/buildenv"
)

var OutputFile string
var FileFormat string

func AddOutputFlags(fs *flag.FlagSet) {
	fs.StringVar(&OutputFile, "o", "", "Output file")
	fs.StringVar(&FileFormat, "file-format", "", "File format for target output (e.g., bin, hex, elf, uf2, zip)")
}

var Verbose bool
var BuildEnv string
var Tags string
var Target string
var Emulator bool
var Port string
var BaudRate int
var AbiMode int
var CheckLinkArgs bool
var CheckLLFiles bool
var GenLLFiles bool

func AddBuildFlags(fs *flag.FlagSet) {
	fs.BoolVar(&Verbose, "v", false, "Verbose mode")
	fs.StringVar(&Tags, "tags", "", "Build tags")
	fs.StringVar(&BuildEnv, "buildenv", "", "Build environment")
	if buildenv.Dev {
		fs.IntVar(&AbiMode, "abi", 2, "ABI mode (default 2). 0 = none, 1 = cfunc, 2 = allfunc.")
		fs.BoolVar(&CheckLinkArgs, "check-linkargs", false, "check link args valid")
		fs.BoolVar(&CheckLLFiles, "check-llfiles", false, "check .ll files valid")
		fs.BoolVar(&GenLLFiles, "gen-llfiles", false, "generate .ll files for pkg export")
	}
}

var Gen bool

func AddEmulatorFlags(fs *flag.FlagSet) {
	fs.BoolVar(&Emulator, "emulator", false, "Run in emulator mode")
}

func AddEmbeddedFlags(fs *flag.FlagSet) {
	fs.StringVar(&Target, "target", "", "Target platform (e.g., rp2040, wasi)")
	fs.StringVar(&Port, "port", "", "Target port for flashing")
	fs.IntVar(&BaudRate, "baudrate", 115200, "Baudrate for serial communication")
}

func AddCmpTestFlags(fs *flag.FlagSet) {
	fs.BoolVar(&Gen, "gen", false, "Generate llgo.expect file")
}

func UpdateConfig(conf *build.Config) {
	conf.Tags = Tags
	conf.Verbose = Verbose
	conf.Target = Target
	conf.Port = Port
	conf.BaudRate = BaudRate
	switch conf.Mode {
	case build.ModeBuild:
		conf.OutFile = OutputFile
		conf.FileFormat = FileFormat
	case build.ModeRun, build.ModeTest:
		conf.Emulator = Emulator
	case build.ModeInstall:

	case build.ModeCmpTest:
		conf.Emulator = Emulator
		conf.GenExpect = Gen
	}
	if buildenv.Dev {
		conf.AbiMode = build.AbiMode(AbiMode)
		conf.CheckLinkArgs = CheckLinkArgs
		conf.CheckLLFiles = CheckLLFiles
		conf.GenLL = GenLLFiles
	}
}
