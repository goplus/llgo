//go:build !llgo

package test

import (
	"reflect"
	"testing"

	"github.com/goplus/llgo/cmd/internal/flags"
)

// resetTestFlags resets all test-related flags to their default values
func resetTestFlags() {
	flags.Verbose = false
	flags.TestRun = ""
	flags.TestBench = ""
	flags.TestTimeout = ""
	flags.TestShort = false
	flags.TestCount = 1
	flags.TestCover = false
	flags.TestCoverMode = ""
	flags.TestCoverProfile = ""
	flags.TestCoverPkg = ""
	flags.TestParallel = 0
	flags.TestFailfast = false
	flags.TestJSON = false
	flags.TestList = ""
	flags.TestSkip = ""
	flags.TestShuffle = ""
	flags.TestFullpath = false
	flags.TestBenchmem = false
	flags.TestBenchtime = ""
	flags.TestCPUProfile = ""
	flags.TestMemProfile = ""
	flags.TestBlockProfile = ""
	flags.TestMutexProfile = ""
	flags.TestTrace = ""
	flags.TestOutputDir = ""
	flags.TestFuzz = ""
	flags.TestFuzzTime = ""
	flags.TestFuzzMinimizeTime = ""
}

func TestSplitArgsAt(t *testing.T) {
	tests := []struct {
		name      string
		args      []string
		separator string
		wantBef   []string
		wantAft   []string
	}{
		{
			name:      "no separator",
			args:      []string{"-v", ".", "-run", "TestFoo"},
			separator: "-args",
			wantBef:   []string{"-v", ".", "-run", "TestFoo"},
			wantAft:   nil,
		},
		{
			name:      "with separator",
			args:      []string{"-v", ".", "-args", "-custom", "value"},
			separator: "-args",
			wantBef:   []string{"-v", "."},
			wantAft:   []string{"-custom", "value"},
		},
		{
			name:      "separator at end",
			args:      []string{"-v", ".", "-args"},
			separator: "-args",
			wantBef:   []string{"-v", "."},
			wantAft:   []string{},
		},
		{
			name:      "separator at start",
			args:      []string{"-args", "-custom", "value"},
			separator: "-args",
			wantBef:   []string{},
			wantAft:   []string{"-custom", "value"},
		},
		{
			name:      "empty args",
			args:      []string{},
			separator: "-args",
			wantBef:   []string{},
			wantAft:   nil,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			gotBef, gotAft := splitArgsAt(tt.args, tt.separator)
			if !reflect.DeepEqual(gotBef, tt.wantBef) {
				t.Errorf("splitArgsAt() before = %v, want %v", gotBef, tt.wantBef)
			}
			if !reflect.DeepEqual(gotAft, tt.wantAft) {
				t.Errorf("splitArgsAt() after = %v, want %v", gotAft, tt.wantAft)
			}
		})
	}
}

func TestBuildTestArgs(t *testing.T) {
	tests := []struct {
		name        string
		setupFlags  func()
		customArgs  []string
		wantContain []string // flags that should be present
	}{
		{
			name: "verbose only",
			setupFlags: func() {
				flags.Verbose = true
			},
			customArgs:  nil,
			wantContain: []string{"-test.v"},
		},
		{
			name: "run flag",
			setupFlags: func() {
				flags.TestRun = "TestFoo"
			},
			customArgs:  nil,
			wantContain: []string{"-test.run=TestFoo"},
		},
		{
			name: "multiple flags",
			setupFlags: func() {
				flags.Verbose = true
				flags.TestRun = "TestFoo"
				flags.TestTimeout = "30s"
				flags.TestShort = true
			},
			customArgs:  nil,
			wantContain: []string{"-test.v", "-test.run=TestFoo", "-test.timeout=30s", "-test.short"},
		},
		{
			name: "with custom args",
			setupFlags: func() {
				flags.Verbose = true
			},
			customArgs:  []string{"-custom", "value"},
			wantContain: []string{"-test.v", "-custom", "value"},
		},
		{
			name: "benchmark flags",
			setupFlags: func() {
				flags.TestBench = "."
				flags.TestBenchtime = "5s"
				flags.TestBenchmem = true
			},
			customArgs:  nil,
			wantContain: []string{"-test.bench=.", "-test.benchtime=5s", "-test.benchmem"},
		},
		{
			name: "coverage flags",
			setupFlags: func() {
				flags.TestCover = true
				flags.TestCoverMode = "atomic"
				flags.TestCoverProfile = "coverage.out"
			},
			customArgs:  nil,
			wantContain: []string{"-test.cover", "-test.covermode=atomic", "-test.coverprofile=coverage.out"},
		},
		{
			name: "count flag",
			setupFlags: func() {
				flags.TestCount = 3
			},
			customArgs:  nil,
			wantContain: []string{"-test.count=3"},
		},
		{
			name: "parallel flag",
			setupFlags: func() {
				flags.TestParallel = 4
			},
			customArgs:  nil,
			wantContain: []string{"-test.parallel=4"},
		},
		{
			name: "profiling flags",
			setupFlags: func() {
				flags.TestCPUProfile = "cpu.prof"
				flags.TestMemProfile = "mem.prof"
			},
			customArgs:  nil,
			wantContain: []string{"-test.cpuprofile=cpu.prof", "-test.memprofile=mem.prof"},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Reset flags
			resetTestFlags()

			// Setup test-specific flags
			tt.setupFlags()

			got := buildTestArgs(tt.customArgs)

			// Check that all expected flags are present
			for _, want := range tt.wantContain {
				found := false
				for _, arg := range got {
					if arg == want {
						found = true
						break
					}
				}
				if !found {
					t.Errorf("buildTestArgs() missing expected flag %q, got %v", want, got)
				}
			}

			// Check length matches
			if len(got) != len(tt.wantContain) {
				t.Errorf("buildTestArgs() length = %d, want %d, got %v", len(got), len(tt.wantContain), got)
			}
		})
	}
}
