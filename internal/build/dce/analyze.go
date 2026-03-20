package dce

import (
	"sort"
	"strconv"
	"strings"
	"unicode"

	llvm "github.com/goplus/llvm"
)

// Result is the phase-1 method liveness output keyed by concrete type symbol.
// Each inner set contains the live abi.Method slot indexes for that type.
type Result map[string]map[int]struct{}

// Input is the preprocessed analyzer input built from LLVM modules.
// The goal is to isolate LLVM scanning in BuildInput so the core analysis
// can operate on plain Go data structures.
type Input struct {
	OrdinaryEdges map[string]map[string]struct{}
	TypeChildren  map[string]map[string]struct{}
	MethodRefs    map[string]map[int]map[string]struct{}

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

type methodSig struct {
	Name string
	MTyp string
}

type analyzer struct {
	input Input

	reachable   map[string]struct{}
	worklist    []string
	usedInIface map[string]struct{}
	ifaceDemand map[methodSig]struct{}
	namedDemand map[string]struct{}
	reflectSeen bool
	result      Result
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
// analyzer input.
func AnalyzeInput(input Input, roots []string) Result {
	a := analyzer{
		input:       input,
		reachable:   make(map[string]struct{}),
		usedInIface: make(map[string]struct{}),
		ifaceDemand: make(map[methodSig]struct{}),
		namedDemand: make(map[string]struct{}),
		result:      make(Result),
	}
	for _, root := range roots {
		a.markReachable(root)
	}
	for {
		a.flood()
		changed := a.activateMetadata()
		changed = a.markMethods() || changed
		if len(a.worklist) == 0 && !changed {
			break
		}
	}
	a.ensurePrunableTypes()
	return a.result
}

func (a *analyzer) flood() {
	for len(a.worklist) != 0 {
		last := len(a.worklist) - 1
		sym := a.worklist[last]
		a.worklist = a.worklist[:last]
		for dst := range a.input.OrdinaryEdges[sym] {
			a.markReachable(dst)
		}
	}
}

func (a *analyzer) activateMetadata() bool {
	changed := false
	for _, row := range a.input.UseIface {
		if a.isReachable(row.Owner) {
			changed = a.markUsedInIface(row.Target) || changed
		}
	}
	for _, row := range a.input.UseIfaceMethod {
		if a.isReachable(row.Owner) {
			changed = a.addIfaceDemand(methodSig{Name: row.Name, MTyp: row.MTyp}) || changed
		}
	}
	for _, row := range a.input.UseNamedMethod {
		if a.isReachable(row.Owner) {
			changed = a.addNamedDemand(row.Name) || changed
		}
	}
	for _, row := range a.input.ReflectMethod {
		if a.isReachable(row.Owner) && !a.reflectSeen {
			a.reflectSeen = true
			changed = true
		}
	}
	return changed
}

func (a *analyzer) markMethods() bool {
	changed := false
	for _, row := range a.input.MethodOff {
		if !a.isUsedInIface(row.TypeName) || !a.shouldKeepMethod(row) {
			continue
		}
		if !a.addLiveMethod(row.TypeName, row.Index) {
			continue
		}
		changed = true
		for sym := range a.input.MethodRefs[row.TypeName][row.Index] {
			if a.markReachable(sym) {
				changed = true
			}
		}
	}
	return changed
}

func (a *analyzer) shouldKeepMethod(row MethodOffRow) bool {
	if _, ok := a.ifaceDemand[methodSig{Name: row.Name, MTyp: row.MTyp}]; ok {
		return true
	}
	if _, ok := a.namedDemand[row.Name]; ok {
		return true
	}
	return a.reflectSeen && isExportedMethod(row.Name)
}

func (a *analyzer) markReachable(sym string) bool {
	if sym == "" {
		return false
	}
	if _, ok := a.reachable[sym]; ok {
		return false
	}
	a.reachable[sym] = struct{}{}
	a.worklist = append(a.worklist, sym)
	return true
}

func (a *analyzer) markUsedInIface(typeName string) bool {
	if typeName == "" {
		return false
	}
	changed := false
	work := []string{typeName}
	for len(work) != 0 {
		last := len(work) - 1
		sym := work[last]
		work = work[:last]
		if _, ok := a.usedInIface[sym]; ok {
			continue
		}
		a.usedInIface[sym] = struct{}{}
		changed = true
		for child := range a.input.TypeChildren[sym] {
			work = append(work, child)
		}
	}
	return changed
}

func (a *analyzer) addIfaceDemand(sig methodSig) bool {
	if sig.Name == "" || sig.MTyp == "" {
		return false
	}
	if _, ok := a.ifaceDemand[sig]; ok {
		return false
	}
	a.ifaceDemand[sig] = struct{}{}
	return true
}

func (a *analyzer) addNamedDemand(name string) bool {
	if name == "" {
		return false
	}
	if _, ok := a.namedDemand[name]; ok {
		return false
	}
	a.namedDemand[name] = struct{}{}
	return true
}

func (a *analyzer) addLiveMethod(typeName string, index int) bool {
	byIndex := a.result[typeName]
	if byIndex == nil {
		byIndex = make(map[int]struct{})
		a.result[typeName] = byIndex
	}
	if _, ok := byIndex[index]; ok {
		return false
	}
	byIndex[index] = struct{}{}
	return true
}

func (a *analyzer) isReachable(sym string) bool {
	_, ok := a.reachable[sym]
	return ok
}

func (a *analyzer) isUsedInIface(typeName string) bool {
	_, ok := a.usedInIface[typeName]
	return ok
}

func (a *analyzer) ensurePrunableTypes() {
	for _, row := range a.input.MethodOff {
		if !a.isUsedInIface(row.TypeName) {
			continue
		}
		if _, ok := a.result[row.TypeName]; ok {
			continue
		}
		a.result[row.TypeName] = make(map[int]struct{})
	}
}

func isExportedMethod(name string) bool {
	for _, r := range name {
		return unicode.IsUpper(r)
	}
	return false
}

// FormatResult renders the analyzer output as stable text lines:
//
//	type symbol: [sorted method indexes]
func FormatResult(result Result) string {
	if len(result) == 0 {
		return ""
	}
	typeNames := make([]string, 0, len(result))
	for typeName := range result {
		typeNames = append(typeNames, typeName)
	}
	sort.Strings(typeNames)

	var b strings.Builder
	for _, typeName := range typeNames {
		indexes := make([]int, 0, len(result[typeName]))
		for index := range result[typeName] {
			indexes = append(indexes, index)
		}
		sort.Ints(indexes)

		b.WriteString(typeName)
		b.WriteString(": [")
		for i, index := range indexes {
			if i != 0 {
				b.WriteByte(' ')
			}
			b.WriteString(strconv.Itoa(index))
		}
		b.WriteString("]\n")
	}
	return b.String()
}
