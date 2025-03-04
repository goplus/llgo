// Package list implements the "list" command for the llgo compiler.
package list

import (
	"github.com/goplus/llgo/compiler/cmd/internal/base"
)

// Command represents the list command
var Cmd = &base.Command{
	UsageLine: "llgo list [packages]",
	Short:     "List information about packages and their dependencies.",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	panic("todo")
}
