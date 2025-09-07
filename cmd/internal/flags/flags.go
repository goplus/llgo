package flags

import (
	"flag"

	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/buildenv"
)

var OutputFile string
var OutBin bool
var OutHex bool
var OutImg bool
var OutUf2 bool
var OutZip bool

func AddOutputFlags(fs *flag.FlagSet) {
	fs.StringVar(&OutputFile, "o", "", "Output file")
	fs.BoolVar(&OutBin, "obin", false, "Generate binary output (.bin)")
	fs.BoolVar(&OutHex, "ohex", false, "Generate Intel hex output (.hex)")
	fs.BoolVar(&OutImg, "oimg", false, "Generate image output (.img)")
	fs.BoolVar(&OutUf2, "ouf2", false, "Generate UF2 output (.uf2)")
	fs.BoolVar(&OutZip, "ozip", false, "Generate ZIP/DFU output (.zip)")
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

func AddCommonFlags(fs *flag.FlagSet) {
	fs.BoolVar(&Verbose, "v", false, "Verbose output")
}

func AddBuildFlags(fs *flag.FlagSet) {
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
		conf.OutFmts = build.OutFmts{
			Bin: OutBin,
			Hex: OutHex,
			Img: OutImg,
			Uf2: OutUf2,
			Zip: OutZip,
		}
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
