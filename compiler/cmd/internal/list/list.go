// Package list implements the "llgo list" command.
package list

import (
	"fmt"
	"os"
	"strings"

	"github.com/goplus/llgo/compiler/cmd/internal/base"
	"github.com/goplus/llgo/compiler/internal/list"
	"github.com/goplus/llgo/compiler/internal/mockable"
)

// Command represents the list command
var Cmd = &base.Command{
	UsageLine: "llgo list [-m] [-versions] [-json] [packages]",
	Short:     "List information about packages and their dependencies.",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	// 手动解析参数
	var modulesFlag, versionsFlag, jsonFlag bool
	var patterns []string

	for i := 0; i < len(args); i++ {
		arg := args[i]
		if !strings.HasPrefix(arg, "-") {
			// 不是标志，是包模式
			patterns = append(patterns, args[i:]...)
			fmt.Println("patterns:", patterns)
			break
		}

		switch arg {
		case "-m":
			modulesFlag = true
		case "-versions":
			versionsFlag = true
		case "-json":
			jsonFlag = true
		default:
			fmt.Fprintf(os.Stderr, "llgo list: unknown flag %s\n", arg)
			fmt.Fprintf(os.Stderr, "Run 'llgo help list' for usage.\n")
			mockable.Exit(2)
			return
		}
	}

	// 目前只支持模块模式
	if !modulesFlag {
		fmt.Fprintf(os.Stderr, "llgo list: only -m mode is currently supported\n")
		fmt.Fprintf(os.Stderr, "Run 'llgo list -m' to list modules\n")
		mockable.Exit(1)
		return
	}

	// 检查缓存环境变量
	if os.Getenv("LLGOCACHE") == "" {
		homeDir, err := os.UserHomeDir()
		if err == nil {
			// 设置默认缓存目录
			defaultCache := fmt.Sprintf("%s/.llgo/cache", homeDir)
			fmt.Fprintf(os.Stderr, "Warning: LLGOCACHE environment variable not set\n")
			fmt.Fprintf(os.Stderr, "Using default cache directory: %s\n", defaultCache)
			os.Setenv("LLGOCACHE", defaultCache)
		} else {
			fmt.Fprintf(os.Stderr, "Error: LLGOCACHE environment variable is not set\n")
			fmt.Fprintf(os.Stderr, "Please set LLGOCACHE to a writable directory\n")
			mockable.Exit(1)
			return
		}
	}

	// 创建客户端并执行列表操作
	client := list.NewClient()

	// 列出模块
	err := client.ListModules(patterns, versionsFlag, jsonFlag)
	if err != nil {
		fmt.Fprintf(os.Stderr, "llgo list: %v\n", err)
		mockable.Exit(1)
	}
}
