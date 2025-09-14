package test

import (
	"fmt"
	"os"

	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/cmd/internal/flags"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/mockable"
)

// llgo test
var Cmd = &base.Command{
	UsageLine: "llgo test [-target platform] [build flags] package [arguments...]",
	Short:     "Compile and run Go test",
}

func init() {
	Cmd.Run = runCmd
	flags.AddCommonFlags(&Cmd.Flag)
	flags.AddBuildFlags(&Cmd.Flag)
	flags.AddEmulatorFlags(&Cmd.Flag)
	flags.AddEmbeddedFlags(&Cmd.Flag)
}

func runCmd(cmd *base.Command, args []string) {

	if err := cmd.Flag.Parse(args); err != nil {
		return
	}

	conf := build.NewDefaultConf(build.ModeTest)
	if err := flags.UpdateConfig(conf); err != nil {
		fmt.Fprintln(os.Stderr, err)
		mockable.Exit(1)
	}

	args = cmd.Flag.Args()
	_, err := build.Do(args, conf)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		mockable.Exit(1)
	}
}
