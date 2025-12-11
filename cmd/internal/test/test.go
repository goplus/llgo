//go:build !llgo

package test

import (
	"fmt"
	"os"
	"strconv"

	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/cmd/internal/flags"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/mockable"
)

// llgo test
var Cmd = &base.Command{
	UsageLine: "llgo test [-target platform] [build flags] [test flags] package [test binary arguments...]",
	Short:     "Compile and run Go test",
}

func init() {
	Cmd.Run = runCmd
	flags.AddCommonFlags(&Cmd.Flag)
	flags.AddBuildFlags(&Cmd.Flag)
	flags.AddTestBinaryFlags(&Cmd.Flag)
	flags.AddEmulatorFlags(&Cmd.Flag)
	flags.AddEmbeddedFlags(&Cmd.Flag)
}

func runCmd(cmd *base.Command, args []string) {
	// Split args at -args to separate llgo flags from test binary args
	llgoArgs, testBinaryArgs := splitArgsAt(args, "-args")

	if err := cmd.Flag.Parse(llgoArgs); err != nil {
		fmt.Fprintln(os.Stderr, err)
		mockable.Exit(1)
	}

	conf := build.NewDefaultConf(build.ModeTest)
	if err := flags.UpdateConfig(conf); err != nil {
		fmt.Fprintln(os.Stderr, err)
		mockable.Exit(1)
	}

	// Build test binary arguments from flags
	conf.RunArgs = buildTestArgs(testBinaryArgs)

	args = cmd.Flag.Args()
	_, err := build.Do(args, conf)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		mockable.Exit(1)
	}
}

// splitArgsAt splits args at the separator flag (e.g., "-args")
// Returns (before, after) where after includes everything after separator
func splitArgsAt(args []string, separator string) (before, after []string) {
	for i, arg := range args {
		if arg == separator {
			return args[:i], args[i+1:]
		}
	}
	return args, nil
}

// buildTestArgs constructs arguments to pass to the test binary.
// Converts llgo test flags to -test.* format (required by Go test binaries) and appends custom args.
// Note: Some flags are only added when they differ from defaults (e.g., TestCount only when >1,
// TestParallel only when >0). TestTimeout is always included as it has a default value.
func buildTestArgs(customArgs []string) []string {
	var args []string

	// Add verbose flag
	if flags.Verbose {
		args = append(args, "-test.v")
	}

	// Add test selection flags
	if flags.TestRun != "" {
		args = append(args, "-test.run="+flags.TestRun)
	}
	if flags.TestBench != "" {
		args = append(args, "-test.bench="+flags.TestBench)
	}
	if flags.TestList != "" {
		args = append(args, "-test.list="+flags.TestList)
	}
	if flags.TestSkip != "" {
		args = append(args, "-test.skip="+flags.TestSkip)
	}

	// Add test control flags
	if flags.TestTimeout != "" {
		args = append(args, "-test.timeout="+flags.TestTimeout)
	}
	if flags.TestShort {
		args = append(args, "-test.short")
	}
	if flags.TestCount > 1 {
		args = append(args, "-test.count="+strconv.Itoa(flags.TestCount))
	}
	if flags.TestParallel > 0 {
		args = append(args, "-test.parallel="+strconv.Itoa(flags.TestParallel))
	}
	if flags.TestFailfast {
		args = append(args, "-test.failfast")
	}
	if flags.TestShuffle != "" {
		args = append(args, "-test.shuffle="+flags.TestShuffle)
	}

	// Add coverage flags
	if flags.TestCover {
		args = append(args, "-test.cover")
	}
	if flags.TestCoverMode != "" {
		args = append(args, "-test.covermode="+flags.TestCoverMode)
	}
	if flags.TestCoverProfile != "" {
		args = append(args, "-test.coverprofile="+flags.TestCoverProfile)
	}
	if flags.TestCoverPkg != "" {
		args = append(args, "-test.coverpkg="+flags.TestCoverPkg)
	}

	// Add output flags
	if flags.TestJSON {
		args = append(args, "-test.json")
	}
	if flags.TestFullpath {
		args = append(args, "-test.fullpath")
	}

	// Add benchmark flags
	if flags.TestBenchmem {
		args = append(args, "-test.benchmem")
	}
	if flags.TestBenchtime != "" {
		args = append(args, "-test.benchtime="+flags.TestBenchtime)
	}

	// Add profiling flags
	if flags.TestCPUProfile != "" {
		args = append(args, "-test.cpuprofile="+flags.TestCPUProfile)
	}
	if flags.TestMemProfile != "" {
		args = append(args, "-test.memprofile="+flags.TestMemProfile)
	}
	if flags.TestBlockProfile != "" {
		args = append(args, "-test.blockprofile="+flags.TestBlockProfile)
	}
	if flags.TestMutexProfile != "" {
		args = append(args, "-test.mutexprofile="+flags.TestMutexProfile)
	}
	if flags.TestTrace != "" {
		args = append(args, "-test.trace="+flags.TestTrace)
	}
	if flags.TestOutputDir != "" {
		args = append(args, "-test.outputdir="+flags.TestOutputDir)
	}

	// Add fuzzing flags
	if flags.TestFuzz != "" {
		args = append(args, "-test.fuzz="+flags.TestFuzz)
	}
	if flags.TestFuzzTime != "" {
		args = append(args, "-test.fuzztime="+flags.TestFuzzTime)
	}
	if flags.TestFuzzMinimizeTime != "" {
		args = append(args, "-test.fuzzminimizetime="+flags.TestFuzzMinimizeTime)
	}

	// Append custom args passed after -args
	args = append(args, customArgs...)

	return args
}
