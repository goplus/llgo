// compiler/cmd/internal/list/list.go
package list

import (
	"fmt"
	"os"
	"strings"

	"github.com/goplus/llgo/compiler/cmd/internal/base"
	"github.com/goplus/llgo/compiler/internal/list"
	"github.com/goplus/llgo/compiler/internal/mockable"
)

// Cmd 定义list命令
var Cmd = &base.Command{
	UsageLine: "llgo list [-m] [-versions] [-json] [packages]",
	Short:     "列出包、模块及其依赖的信息",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(_ *base.Command, args []string) {
	// 定义标志变量
	var (
		modulesFlag   bool   // -m 标志
		jsonFlag      bool   // -json 标志
		versionsFlag  bool   // -versions 标志
		updatesFlag   bool   // -u 标志
		retractedFlag bool   // -retracted 标志
		reuseFlag     string // -reuse 标志的值
		formatFlag    string // -f 标志的值

		// 其他支持的标志
		findFlag     bool // -find 标志
		depsFlag     bool // -deps 标志
		testFlag     bool // -test 标志
		compiledFlag bool // -compiled 标志
		exportFlag   bool // -export 标志
	)

	// 解析参数中的标志
	var patterns []string
	for i := 0; i < len(args); i++ {
		arg := args[i]

		// 如果不是标志，则是包模式
		if !strings.HasPrefix(arg, "-") {
			patterns = append(patterns, args[i:]...)
			break
		}

		// 处理 name=value 格式的标志
		if strings.Contains(arg, "=") {
			parts := strings.SplitN(arg, "=", 2)
			flag, value := parts[0], parts[1]

			switch flag {
			case "-f":
				formatFlag = value
			case "-reuse":
				reuseFlag = value
			default:
				fmt.Fprintf(os.Stderr, "llgo list: 未知标志 %s\n", flag)
				fmt.Fprintf(os.Stderr, "运行 'llgo help list' 查看使用说明。\n")
				mockable.Exit(2)
				return
			}
			continue
		}

		// 处理需要单独参数的标志
		if arg == "-f" || arg == "-reuse" {
			if i+1 >= len(args) {
				fmt.Fprintf(os.Stderr, "llgo list: %s 标志缺少参数\n", arg)
				mockable.Exit(2)
				return
			}
			i++
			value := args[i]

			if arg == "-f" {
				formatFlag = value
			} else if arg == "-reuse" {
				reuseFlag = value
			}
			continue
		}

		// 处理布尔类型标志
		switch arg {
		case "-m":
			modulesFlag = true
		case "-json":
			jsonFlag = true
		case "-versions":
			versionsFlag = true
		case "-u":
			updatesFlag = true
		case "-retracted":
			retractedFlag = true
		case "-find":
			findFlag = true
		case "-deps":
			depsFlag = true
		case "-test":
			testFlag = true
		case "-compiled":
			compiledFlag = true
		case "-export":
			exportFlag = true
		default:
			fmt.Fprintf(os.Stderr, "llgo list: 未知标志 %s\n", arg)
			fmt.Fprintf(os.Stderr, "运行 'llgo help list' 查看使用说明。\n")
			mockable.Exit(2)
			return
		}
	}

	// 检查标志兼容性
	incompatibleFlags := []string{}

	// 互斥标志检查
	if jsonFlag && formatFlag != "" {
		incompatibleFlags = append(incompatibleFlags, "-json 不能与 -f 一起使用")
	}

	if modulesFlag {
		if depsFlag {
			incompatibleFlags = append(incompatibleFlags, "-m 不能与 -deps 一起使用")
		}
		if findFlag {
			incompatibleFlags = append(incompatibleFlags, "-m 不能与 -find 一起使用")
		}
		if exportFlag {
			incompatibleFlags = append(incompatibleFlags, "-m 不能与 -export 一起使用")
		}
		if compiledFlag {
			incompatibleFlags = append(incompatibleFlags, "-m 不能与 -compiled 一起使用")
		}
	}

	if findFlag {
		if depsFlag {
			incompatibleFlags = append(incompatibleFlags, "-find 不能与 -deps 一起使用")
		}
		if testFlag {
			incompatibleFlags = append(incompatibleFlags, "-find 不能与 -test 一起使用")
		}
		if exportFlag {
			incompatibleFlags = append(incompatibleFlags, "-find 不能与 -export 一起使用")
		}
	}

	// 报告不兼容的标志
	if len(incompatibleFlags) > 0 {
		for _, msg := range incompatibleFlags {
			fmt.Fprintf(os.Stderr, "llgo list: %s\n", msg)
		}
		fmt.Fprintf(os.Stderr, "运行 'llgo help list' 查看使用说明。\n")
		mockable.Exit(2)
		return
	}

	// 创建选项对象
	opts := list.ListOptions{
		ModulesFlag:   modulesFlag,
		JSONFlag:      jsonFlag,
		VersionsFlag:  versionsFlag,
		UpdatesFlag:   updatesFlag,
		RetractedFlag: retractedFlag,
		ReuseFlag:     reuseFlag,
		FormatFlag:    formatFlag,
	}

	// 调用内部实现
	err := list.ListModules(opts, patterns)
	if err != nil {
		fmt.Fprintf(os.Stderr, "llgo list: %v\n", err)
		mockable.Exit(1)
	}
}
