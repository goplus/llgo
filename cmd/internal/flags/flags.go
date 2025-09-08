package flags

import (
	"flag"

	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/buildenv"
)

var OutputFile string

func AddOutputFlags(fs *flag.FlagSet) {
	fs.StringVar(&OutputFile, "o", "", "Output file")
}

var Verbose bool
var BuildEnv string
var Tags string
var Target string
var AbiMode int
var CheckLinkArgs bool
var CheckLLFiles bool
var GenLLFiles bool
var ForceEspClang bool

func AddBuildFlags(fs *flag.FlagSet) {
	fs.BoolVar(&Verbose, "v", false, "Verbose mode")
	fs.StringVar(&Tags, "tags", "", "Build tags")
	fs.StringVar(&BuildEnv, "buildenv", "", "Build environment")
	fs.StringVar(&Target, "target", "", "Target platform (e.g., rp2040, wasi)")
	if buildenv.Dev {
		fs.IntVar(&AbiMode, "abi", 2, "ABI mode (default 2). 0 = none, 1 = cfunc, 2 = allfunc.")
		fs.BoolVar(&CheckLinkArgs, "check-linkargs", false, "check link args valid")
		fs.BoolVar(&CheckLLFiles, "check-llfiles", false, "check .ll files valid")
		fs.BoolVar(&GenLLFiles, "gen-llfiles", false, "generate .ll files for pkg export")
		fs.BoolVar(&ForceEspClang, "force-espclang", false, "force to use esp-clang")
	}
}

var Gen bool

func AddCmpTestFlags(fs *flag.FlagSet) {
	fs.BoolVar(&Gen, "gen", false, "Generate llgo.expect file")
}

func UpdateConfig(conf *build.Config) {
	conf.Tags = Tags
	conf.Verbose = Verbose
	conf.Target = Target
	switch conf.Mode {
	case build.ModeBuild:
		conf.OutFile = OutputFile
	case build.ModeCmpTest:
		conf.GenExpect = Gen
	}
	if buildenv.Dev {
		conf.AbiMode = build.AbiMode(AbiMode)
		conf.CheckLinkArgs = CheckLinkArgs
		conf.CheckLLFiles = CheckLLFiles
		conf.GenLL = GenLLFiles
		conf.ForceEspClang = ForceEspClang
	}
}
