package args

import "strings"

type Args struct {
	Help     bool
	Verbose  bool
	UseStdin bool
	CfgFile  string
}

func ParseArgs(args []string, swflags map[string]bool) (*Args, []string) {
	result := &Args{}
	filteredArgs := []string{}
	for i := 0; i < len(args); i++ {
		arg := args[i]
		if strings.HasPrefix(arg, "-") {
			switch arg {
			case "-h", "--help":
				result.Help = true
				continue
			case "-v":
				result.Verbose = true
				continue
			case "-":
				result.UseStdin = true
				continue
			default:
				if hasArg, ok := swflags[arg]; ok {
					if hasArg {
						filteredArgs = append(filteredArgs, arg)
						for i+1 < len(args) && !strings.HasPrefix(args[i+1], "-") {
							filteredArgs = append(filteredArgs, args[i+1])
							i++
						}
						continue
					}
				}
				filteredArgs = append(filteredArgs, arg)
			}
		} else if result.CfgFile == "" {
			result.CfgFile = arg
		} else {
			filteredArgs = append(filteredArgs, arg)
		}
	}
	if result.CfgFile == "" {
		result.CfgFile = "llcppg.cfg"
	}
	return result, filteredArgs
}
