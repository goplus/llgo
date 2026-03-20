package dce

import llvm "github.com/goplus/llvm"

// Result is the phase-1 method liveness output keyed by concrete type symbol.
// Each inner set contains the live abi.Method slot indexes for that type.
type Result map[string]map[int]struct{}

// Input is the preprocessed analyzer input built from LLVM modules.
// The goal is to isolate LLVM scanning in BuildInput so the core analysis
// can operate on plain Go data structures.
type Input struct {
	OrdinaryEdges map[string]map[string]struct{}
	TypeChildren  map[string]map[string]struct{}

	UseIface       []UseIfaceRow
	UseIfaceMethod []UseIfaceMethodRow
	MethodOff      []MethodOffRow
	UseNamedMethod []UseNamedMethodRow
	ReflectMethod  []ReflectMethodRow
}

type UseIfaceRow struct {
	Owner  string
	Target string
}

type UseIfaceMethodRow struct {
	Owner  string
	Target string
	Name   string
	MTyp   string
}

type MethodOffRow struct {
	TypeName string
	Index    int
	Name     string
	MTyp     string
}

type UseNamedMethodRow struct {
	Owner string
	Name  string
}

type ReflectMethodRow struct {
	Owner string
}

// Analyze is the package-level entry point used by the build pipeline.
// It first builds a pure-Go Input from the provided modules, then runs the
// phase-1 method reachability analysis on that input.
func Analyze(mods []llvm.Module, roots []string) (Result, error) {
	input, err := BuildInput(mods)
	if err != nil {
		return nil, err
	}
	return AnalyzeInput(input, roots), nil
}

// AnalyzeInput runs the phase-1 method reachability analysis on preprocessed
// analyzer input. The implementation is filled in incrementally in follow-up
// commits; the skeleton returns an empty result.
func AnalyzeInput(input Input, roots []string) Result {
	_ = input
	_ = roots
	return Result{}
}
