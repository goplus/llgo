package list

import (
	"fmt"
	"os"
	"strings"

	"github.com/goplus/llgo/compiler/cmd/internal/base"
	"github.com/goplus/llgo/compiler/internal/list"
	"github.com/goplus/llgo/compiler/internal/mockable"
)

// Cmd define the list command
var Cmd = &base.Command{
	UsageLine: "llgo list [-m] [-versions] [-json] [packages]",
	Short:     "list packages, modules and their dependencies",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(_ *base.Command, args []string) {
	// Define the flag variables
	var (
		modulesFlag   bool   // -m flag
		jsonFlag      bool   // -json flag
		versionsFlag  bool   // -versions flag
		updatesFlag   bool   // -u flag
		retractedFlag bool   // -retracted flag
		reuseFlag     string // -reuse flag's value
		formatFlag    string // -f flag's value

		// other supported flags
		findFlag     bool // -find flag
		depsFlag     bool // -deps flag
		testFlag     bool // -test flag
		compiledFlag bool // -compiled flag
		exportFlag   bool // -export flag
	)

	// Parse the flags in the arguments
	var patterns []string
	for i := 0; i < len(args); i++ {
		arg := args[i]

		// If it is not a flag, it is a package pattern
		if !strings.HasPrefix(arg, "-") {
			patterns = append(patterns, args[i:]...)
			break
		}

		// Handle the name=value format flag
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

		// Handle the flags that need a separate parameter
		if arg == "-f" || arg == "-reuse" {
			if i+1 >= len(args) {
				fmt.Fprintf(os.Stderr, "llgo list: %s flag missing parameter\n", arg)
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

		// Handle the boolean type flags
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
			fmt.Fprintf(os.Stderr, "llgo list: unknown flag %s\n", arg)
			fmt.Fprintf(os.Stderr, "Run 'llgo help list' for usage.\n")
			mockable.Exit(2)
			return
		}
	}

	// Check the flag compatibility
	incompatibleFlags := []string{}

	// Mutually exclusive flag checks
	if jsonFlag && formatFlag != "" {
		incompatibleFlags = append(incompatibleFlags, "-json flag cannot be used with -f flag")
	}

	if modulesFlag {
		if depsFlag {
			incompatibleFlags = append(incompatibleFlags, "-m flag cannot be used with -deps flag")
		}
		if findFlag {
			incompatibleFlags = append(incompatibleFlags, "-m flag cannot be used with -find flag")
		}
		if exportFlag {
			incompatibleFlags = append(incompatibleFlags, "-m flag cannot be used with -export flag")
		}
		if compiledFlag {
			incompatibleFlags = append(incompatibleFlags, "-m flag cannot be used with -compiled flag")
		}
	}

	if findFlag {
		if depsFlag {
			incompatibleFlags = append(incompatibleFlags, "-find flag cannot be used with -deps flag")
		}
		if testFlag {
			incompatibleFlags = append(incompatibleFlags, "-find flag cannot be used with -test flag")
		}
		if exportFlag {
			incompatibleFlags = append(incompatibleFlags, "-find flag cannot be used with -export flag")
		}
	}

	// Report the incompatible flags
	if len(incompatibleFlags) > 0 {
		for _, msg := range incompatibleFlags {
			fmt.Fprintf(os.Stderr, "llgo list: %s\n", msg)
		}
		fmt.Fprintf(os.Stderr, "Run 'llgo help list' for usage.\n")
		mockable.Exit(2)
		return
	}

	// Create the options object
	opts := list.ListOptions{
		ModulesFlag:   modulesFlag,
		JSONFlag:      jsonFlag,
		VersionsFlag:  versionsFlag,
		UpdatesFlag:   updatesFlag,
		RetractedFlag: retractedFlag,
		ReuseFlag:     reuseFlag,
		FormatFlag:    formatFlag,
	}

	// Call the internal implementation
	err := list.ListModules(opts, patterns)
	if err != nil {
		fmt.Fprintf(os.Stderr, "llgo list: %v\n", err)
		mockable.Exit(1)
	}
}
