package test

import (
	"fmt"
	"os"

	"github.com/goplus/llgo/compiler/cmd/internal/base"
	"github.com/goplus/llgo/compiler/internal/build"
)

// llgo test
var Cmd = &base.Command{
	UsageLine: "llgo test [build flags] package [arguments...]",
	Short:     "Compile and run Go test",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	runCmdEx(cmd, args, build.ModeRun)
}

func runCmdEx(_ *base.Command, args []string, mode build.Mode) {
	conf := build.NewDefaultConf(mode)
	conf.Mode = build.ModeTest
	_, err := build.Do(args, conf)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
