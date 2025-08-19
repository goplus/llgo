package test

import (
	"fmt"
	"os"

	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/cmd/internal/flags"
	"github.com/goplus/llgo/internal/build"
)

// llgo test
var Cmd = &base.Command{
	UsageLine: "llgo test [-target platform] [build flags] package [arguments...]",
	Short:     "Compile and run Go test",
}

func init() {
	Cmd.Run = runCmd
	flags.AddBuildFlags(&Cmd.Flag)
}

func runCmd(cmd *base.Command, args []string) {

	if err := cmd.Flag.Parse(args); err != nil {
		return
	}

	conf := build.NewDefaultConf(build.ModeTest)
	conf.Tags = flags.Tags
	conf.Verbose = flags.Verbose
	conf.Target = flags.Target
	conf.AbiMode = build.AbiMode(flags.AbiMode)

	args = cmd.Flag.Args()
	_, err := build.Do(args, conf)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
