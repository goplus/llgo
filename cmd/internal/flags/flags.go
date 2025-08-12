package flags

import (
	"flag"
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

func AddBuildFlags(fs *flag.FlagSet) {
	fs.BoolVar(&Verbose, "v", false, "Verbose mode")
	fs.StringVar(&Tags, "tags", "", "Build tags")
	fs.StringVar(&BuildEnv, "buildenv", "", "Build environment")
	fs.StringVar(&Target, "target", "", "Target platform (e.g., rp2040, wasi)")
	fs.IntVar(&AbiMode, "abi", 2, "ABI mode (default 2). 0 = none, 1 = cfunc, 2 = allfunc.")
}

var Gen bool

func AddCmpTestFlags(fs *flag.FlagSet) {
	fs.BoolVar(&Gen, "gen", false, "Generate llgo.expect file")
}
