// cmd/internal/list/list.go
package list

import (
	"fmt"
	"github.com/goplus/llgo/compiler/internal/mod"
	"net/http"
	"os"
	"strings"

	"github.com/goplus/llgo/compiler/cmd/internal/base"
	listpkg "github.com/goplus/llgo/compiler/internal/list"
	"github.com/goplus/llgo/compiler/internal/mockable"
)

// Cmd represents the list command
var Cmd = &base.Command{
	UsageLine: "llgo list [-m] [-versions] [-json] [packages]",
	Short:     "List information about packages and their dependencies.",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(_ *base.Command, args []string) {
	// 参数定义
	var (
		formatFlag    string // -f format: 指定输出的格式模板
		jsonFlag      bool   // -json: 以JSON格式输出
		modulesFlag   bool   // -m: 列出模块而非包
		versionsFlag  bool   // -versions: 列出所有可用的模块版本
		updatesFlag   bool   // -u: 添加可用更新的信息
		retractedFlag bool   // -retracted: 包含已撤回的模块版本
		reuseFlag     string // -reuse=old.json: 复用之前go list -m -json的输出

		// 官方支持但当前实现暂未使用的标志
		findFlag bool // -find: 仅识别包，不解析依赖
		depsFlag bool // -deps: 遍历依赖
		//eFlag        bool // -e: 更改对错误包的处理方式
		testFlag     bool // -test: 包含测试二进制文件
		compiledFlag bool // -compiled: 设置CompiledGoFiles
		exportFlag   bool // -export: 设置Export字段
	)
	var patterns []string

	// 解析命令行参数
	for i := 0; i < len(args); i++ {
		arg := args[i]

		// 如果不是标志，则是包模式
		if !strings.HasPrefix(arg, "-") {
			patterns = append(patterns, args[i:]...)
			break
		}

		// 处理name=value格式的标志
		if strings.Contains(arg, "=") {
			parts := strings.SplitN(arg, "=", 2)
			flag, value := parts[0], parts[1]

			switch flag {
			case "-f":
				formatFlag = value
			case "-reuse":
				reuseFlag = value
			default:
				fmt.Fprintf(os.Stderr, "llgo list: unknown flag %s\n", flag)
				fmt.Fprintf(os.Stderr, "Run 'llgo help list' for usage.\n")
				mockable.Exit(2)
				return
			}
			continue
		}

		// 处理需要单独参数的标志
		if arg == "-f" || arg == "-reuse" {
			if i+1 >= len(args) {
				fmt.Fprintf(os.Stderr, "llgo list: missing argument for %s\n", arg)
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
		//case "-e":
		//	eFlag = true
		case "-test":
			testFlag = true
		case "-compiled":
			compiledFlag = true
		case "-export":
			exportFlag = true
		default:
			fmt.Fprintf(os.Stderr, "llgo list: unknown flag %s\n", arg)
			fmt.Fprintf(os.Stderr, "Run 'llgo help list' for usage.\n")
			mockable.Exit(2)
			return
		}
	}

	// 检查标志兼容性
	incompatibleFlags := []string{}

	// 互斥标志检查
	if jsonFlag && formatFlag != "" {
		incompatibleFlags = append(incompatibleFlags, "-json cannot be used with -f")
	}

	if modulesFlag {
		if depsFlag {
			incompatibleFlags = append(incompatibleFlags, "-m cannot be used with -deps")
		}
		if findFlag {
			incompatibleFlags = append(incompatibleFlags, "-m cannot be used with -find")
		}
		if exportFlag {
			incompatibleFlags = append(incompatibleFlags, "-m cannot be used with -export")
		}
		if compiledFlag {
			incompatibleFlags = append(incompatibleFlags, "-m cannot be used with -compiled")
		}
	}

	if findFlag {
		if depsFlag {
			incompatibleFlags = append(incompatibleFlags, "-find cannot be used with -deps")
		}
		if testFlag {
			incompatibleFlags = append(incompatibleFlags, "-find cannot be used with -test")
		}
		if exportFlag {
			incompatibleFlags = append(incompatibleFlags, "-find cannot be used with -export")
		}
	}

	// 报告不兼容的标志
	if len(incompatibleFlags) > 0 {
		for _, msg := range incompatibleFlags {
			fmt.Fprintf(os.Stderr, "llgo list: %s\n", msg)
		}
		fmt.Fprintf(os.Stderr, "Run 'llgo help list' for usage.\n")
		mockable.Exit(2)
		return
	}

	// 检查当前支持的模式
	// 当前仅支持 -m -versions 模式
	if modulesFlag && versionsFlag {
		// 这是目前唯一完全支持的模式
	} else if modulesFlag && !versionsFlag {
		fmt.Fprintf(os.Stderr, "llgo list: -m without -versions is not currently implemented\n")
		fmt.Fprintf(os.Stderr, "TODO: Implement -m mode without -versions\n")
		mockable.Exit(1)
		return
	} else if !modulesFlag {
		fmt.Fprintf(os.Stderr, "llgo list: package mode (without -m) is not currently implemented\n")
		fmt.Fprintf(os.Stderr, "TODO: Implement package listing mode\n")
		fmt.Fprintf(os.Stderr, "Run 'llgo list -m -versions' to list modules\n")
		mockable.Exit(1)
		return
	}

	// 检查其他未实现的功能标志
	if formatFlag != "" {
		fmt.Fprintf(os.Stderr, "llgo list: -f flag is not currently implemented\n")
		fmt.Fprintf(os.Stderr, "TODO: Implement custom format templates\n")
		mockable.Exit(1)
		return
	}

	if updatesFlag {
		fmt.Fprintf(os.Stderr, "llgo list: -u flag is not currently implemented\n")
		fmt.Fprintf(os.Stderr, "TODO: Implement update information\n")
		mockable.Exit(1)
		return
	}

	if retractedFlag {
		fmt.Fprintf(os.Stderr, "llgo list: -retracted flag is not currently implemented\n")
		fmt.Fprintf(os.Stderr, "TODO: Implement support for retracted versions\n")
		mockable.Exit(1)
		return
	}

	if reuseFlag != "" {
		fmt.Fprintf(os.Stderr, "llgo list: -reuse flag is not currently implemented\n")
		fmt.Fprintf(os.Stderr, "TODO: Implement reuse of previous output\n")
		mockable.Exit(1)
		return
	}

	// 检查缓存环境变量
	if os.Getenv("LLGOCACHE") == "" {
		homeDir, err := os.UserHomeDir()
		if err == nil {
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

	// 创建日志记录器
	logger := mod.NewLogger(mod.LogInfo, os.Stdout, os.Stderr)

	// 创建HTTP客户端
	httpClient := &http.Client{Timeout: 0}

	// 创建存储库
	cacheDir := os.Getenv("LLGOCACHE")
	repo := listpkg.NewRunningRepository(cacheDir, httpClient, logger)

	// 创建服务
	versionService := listpkg.NewVersionService(repo.Store, logger)
	metaService := mod.NewMetaInfoService(httpClient, logger)
	formatterService := listpkg.NewFormatterService(versionsFlag, jsonFlag, logger)

	// 创建应用并执行
	app := listpkg.NewListApplication(versionService, metaService, formatterService, repo, logger)
	err := app.ListModules(patterns, os.Stdout)
	if err != nil {
		fmt.Fprintf(os.Stderr, "llgo list: %v\n", err)
		mockable.Exit(1)
	}
}
