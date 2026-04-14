package dce

import (
	"fmt"
	"sort"
	"strconv"
	"strings"
	"time"
	"unicode"

	llvm "github.com/goplus/llvm"
)

// Result is the phase-1 method liveness output keyed by concrete type symbol.
// Each inner set contains the live abi.Method slot indexes for that type.
type Result map[string]map[int]struct{}

type AnalyzeInputStats struct {
	Iterations       int
	ReachableSymbols int
	UsedInIfaceTypes int
	LiveTypes        int
	LiveMethods      int
	Total            time.Duration
}

type AnalyzeStats struct {
	BuildInput   BuildInputStats
	AnalyzeInput AnalyzeInputStats
	Total        time.Duration
}

type Symbol = string

type MethodSig struct {
	// Name is the normalized method name used by the analyzer:
	// - exported method: "Read"
	// - unexported method: "<pkgpath>.<name>", e.g.
	//   "github.com/goplus/llgo/cl/_testgo/embedunexport-1598.setName"
	Name string
	// MType is the symbol of this method's runtime method-type descriptor.
	MType Symbol
}

// MethodSlot describes one method entry on a concrete type's method table.
// For one concrete type:
// - every method corresponds to one MethodSlot
// - len([]MethodSlot) is that type's method count
// - Index is the slot position in that type's method table
// - Sig is the method identity (Name + MType)
// - IFn/TFn are the two callable method entry symbols kept when live
type MethodSlot struct {
	// Index is the slot position in this type's method table.
	Index int
	// Sig identifies the method by (name, method-type symbol).
	Sig MethodSig
	// IFn is the interface-call entry symbol for this method.
	IFn Symbol
	// TFn is the direct-call entry symbol for this method.
	TFn Symbol
}

// Input is the preprocessed analyzer input built from LLVM modules.
// The goal is to isolate LLVM scanning in BuildInput so the core analysis
// can operate on plain Go data structures.
type Input struct {
	// OrdinaryEdges is the plain symbol reachability graph used by flood().
	OrdinaryEdges map[Symbol]map[Symbol]struct{}
	// TypeChildren records direct UsedInIface propagation edges between types.
	// If a type may participate in interface dispatch, reflection can expose
	// child types reachable from its runtime type data, and those child types
	// must also be treated as UsedInIface. Analyzer recursively propagates that
	// state through these child-type edges.
	TypeChildren map[Symbol]map[Symbol]struct{}

	// InterfaceInfo lists the method signatures required by each interface.
	// Analyzer uses it to answer "does concrete type T fully implement
	// interface I?" before allowing an interface-method demand on I to keep
	// a method slot on T alive.
	InterfaceInfo []InterfaceMethod
	// UseIface marks a type as UsedInIface once Owner is reachable.
	// UsedInIface means the type may participate in interface dispatch, so its
	// method table must be considered by method liveness. This is the analog of
	// Go linker's "type is converted to interface" marker.
	UseIface []IfaceUse
	// UseIfaceMethod marks an interface method demand once Owner is reachable.
	// The demand is attached to the target interface, not to any concrete type.
	// A concrete type method slot is kept only if that concrete type is
	// UsedInIface and fully implements the target interface.
	UseIfaceMethod []IfaceMethodUse
	// MethodInfo is the set of markable methods for each concrete type.
	// It plays the same role as Go linker's method references discovered from
	// R_METHODOFF: once a type becomes UsedInIface, these slots become method-
	// liveness candidates for that type.
	//
	// Unlike Go's linker, this analyzer does not need relocations in the final
	// binary just to discover or keep method entry symbols alive. Instead of
	// decoding mtyp/ifn/tfn from binary type data, MethodInfo carries each slot's
	// table index and the corresponding MType/IFn/TFn symbols directly as input.
	//
	// Analyzer decides slot liveness from demand (useiface/useifacemethod/
	// usenamedmethod/reflectmethod), records live slot indexes in Result, and
	// marks each live slot's MType/IFn/TFn symbols as reachable. Types without
	// methods may be absent from MethodInfo entirely.
	MethodInfo map[Symbol][]MethodSlot
	// UseNamedMethod marks a method name demand once Owner is reachable.
	// Any UsedInIface concrete type slot with the same normalized method name
	// is kept.
	UseNamedMethod []NamedMethodUse
	// ReflectMethod enables conservative reflect mode once Owner is reachable.
	// In this mode, all exported methods of UsedInIface concrete types are kept,
	// because the analysis can no longer determine the exact target method
	// statically.
	ReflectMethod []ReflectMethodUse
}

type InterfaceMethod struct {
	Target Symbol
	Sig    MethodSig
}

type IfaceUse struct {
	Owner  Symbol
	Target Symbol
}

type IfaceMethodUse struct {
	Owner  Symbol
	Target Symbol
	Sig    MethodSig
}

type NamedMethodUse struct {
	Owner Symbol
	Name  string
}

type ReflectMethodUse struct {
	Owner Symbol
}

type analyzer struct {
	input Input

	reachable   map[Symbol]struct{}
	worklist    []Symbol
	usedInIface map[Symbol]struct{}
	ifaceDemand map[Symbol]map[MethodSig]struct{}
	namedDemand map[string]struct{}
	reflectSeen bool
	result      Result

	interfaceInfo map[Symbol]map[MethodSig]struct{}
	typeMethods   map[Symbol]map[MethodSig]struct{}
}

// Analyze is the package-level entry point used by the build pipeline.
// It first builds a pure-Go Input from the provided modules, then runs the
// phase-1 method reachability analysis on that input.
func Analyze(mods []llvm.Module, roots []string) (Result, error) {
	result, _, err := AnalyzeWithStats(mods, roots)
	if err != nil {
		return nil, err
	}
	return result, nil
}

// AnalyzeWithStats runs the phase-1 analysis and returns detailed timing and
// size counters for verbose build diagnostics.
func AnalyzeWithStats(mods []llvm.Module, roots []string) (Result, AnalyzeStats, error) {
	start := time.Now()
	input, buildStats, err := BuildInputWithStats(mods)
	if err != nil {
		return nil, AnalyzeStats{BuildInput: buildStats, Total: time.Since(start)}, err
	}
	result, analyzeStats := AnalyzeInputWithStats(input, roots)
	return result, AnalyzeStats{
		BuildInput:   buildStats,
		AnalyzeInput: analyzeStats,
		Total:        time.Since(start),
	}, nil
}

// AnalyzeInput runs the phase-1 method reachability analysis on preprocessed
// analyzer input.
func AnalyzeInput(input Input, roots []string) Result {
	result, _ := AnalyzeInputWithStats(input, roots)
	return result
}

// AnalyzeInputWithStats runs the core analyzer and records algorithm-side
// timings and counts.
func AnalyzeInputWithStats(input Input, roots []string) (Result, AnalyzeInputStats) {
	start := time.Now()
	a := analyzer{
		input:       input,
		reachable:   make(map[Symbol]struct{}),
		usedInIface: make(map[Symbol]struct{}),
		ifaceDemand: make(map[Symbol]map[MethodSig]struct{}),
		namedDemand: make(map[string]struct{}),
		result:      make(Result),
		interfaceInfo: buildSigSets(input.InterfaceInfo, func(method InterfaceMethod) string {
			return string(method.Target)
		}, func(method InterfaceMethod) methodSig {
			return methodSig(method.Sig)
		}),
		typeMethods: buildMethodInfoSets(input.MethodInfo),
	}
	for _, root := range roots {
		a.markReachable(root)
	}
	iterations := 0
	for {
		iterations++
		a.flood()
		changed := a.activateMetadata()
		changed = a.markMethods() || changed
		if len(a.worklist) == 0 && !changed {
			break
		}
	}
	return a.result, AnalyzeInputStats{
		Iterations:       iterations,
		ReachableSymbols: len(a.reachable),
		UsedInIfaceTypes: len(a.usedInIface),
		LiveTypes:        len(a.result),
		LiveMethods:      countLiveMethods(a.result),
		Total:            time.Since(start),
	}
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
			changed = a.addIfaceDemand(row.Target, row.Sig) || changed
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
	for typeName, slots := range a.input.MethodInfo {
		if !a.isUsedInIface(typeName) {
			continue
		}
		for _, slot := range slots {
			if !a.shouldKeepMethod(typeName, slot) {
				continue
			}
			if !a.addLiveMethod(typeName, slot.Index) {
				continue
			}
			changed = true
			for _, sym := range []Symbol{slot.Sig.MType, slot.IFn, slot.TFn} {
				if a.markReachable(sym) {
					changed = true
				}
			}
		}
	}
	return changed
}

func (a *analyzer) shouldKeepMethod(typeName Symbol, slot MethodSlot) bool {
	if a.hasSatisfiedIfaceDemand(typeName, slot.Sig) {
		return true
	}
	if _, ok := a.namedDemand[slot.Sig.Name]; ok {
		return true
	}
	return a.reflectSeen && isExportedMethod(slot.Sig.Name)
}

func (a *analyzer) markReachable(sym Symbol) bool {
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

func (a *analyzer) addIfaceDemand(target string, sig MethodSig) bool {
	if target == "" || sig.Name == "" || sig.MType == "" {
		return false
	}
	byTarget := a.ifaceDemand[target]
	if byTarget == nil {
		byTarget = make(map[methodSig]struct{})
		a.ifaceDemand[target] = byTarget
	}
	if _, ok := byTarget[sig]; ok {
		return false
	}
	byTarget[sig] = struct{}{}
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

func (a *analyzer) hasSatisfiedIfaceDemand(typeName string, sig MethodSig) bool {
	for target, demanded := range a.ifaceDemand {
		if _, ok := demanded[sig]; !ok {
			continue
		}
		if a.typeImplementsInterface(typeName, target) {
			return true
		}
	}
	return false
}

func (a *analyzer) typeImplementsInterface(typeName, target string) bool {
	required := a.interfaceInfo[target]
	if len(required) == 0 {
		return false
	}
	have := a.typeMethods[typeName]
	if len(have) < len(required) {
		return false
	}
	for sig := range required {
		if _, ok := have[sig]; !ok {
			return false
		}
	}
	return true
}

func (a *analyzer) isUsedInIface(typeName string) bool {
	_, ok := a.usedInIface[typeName]
	return ok
}

func isExportedMethod(name string) bool {
	for _, r := range name {
		return unicode.IsUpper(r)
	}
	return false
}

type methodSig = MethodSig

func buildSigSets[T any](rows []T, group func(T) string, sig func(T) methodSig) map[string]map[methodSig]struct{} {
	out := make(map[string]map[methodSig]struct{})
	for _, row := range rows {
		key := group(row)
		ms := sig(row)
		if key == "" || ms.Name == "" || ms.MType == "" {
			continue
		}
		set := out[key]
		if set == nil {
			set = make(map[methodSig]struct{})
			out[key] = set
		}
		set[ms] = struct{}{}
	}
	return out
}

func buildMethodInfoSets(methodInfo map[Symbol][]MethodSlot) map[string]map[MethodSig]struct{} {
	out := make(map[string]map[MethodSig]struct{}, len(methodInfo))
	for typeName, slots := range methodInfo {
		set := make(map[MethodSig]struct{}, len(slots))
		for _, slot := range slots {
			if slot.Sig.Name == "" || slot.Sig.MType == "" {
				continue
			}
			set[slot.Sig] = struct{}{}
		}
		out[typeName] = set
	}
	return out
}

func countLiveMethods(result Result) int {
	total := 0
	for _, byIndex := range result {
		total += len(byIndex)
	}
	return total
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

// FormatAnalyzeStats renders timing and size counters in a stable text form
// suitable for verbose build logs.
func FormatAnalyzeStats(stats AnalyzeStats) string {
	var b strings.Builder
	fmt.Fprintf(&b, "build_input.total: %s\n", stats.BuildInput.Total)
	fmt.Fprintf(&b, "build_input.modules: %d\n", stats.BuildInput.Modules)
	fmt.Fprintf(&b, "build_input.ordinary_edges: %s\n", stats.BuildInput.OrdinaryEdges)
	fmt.Fprintf(&b, "build_input.type_children: %s\n", stats.BuildInput.TypeChildren)
	fmt.Fprintf(&b, "build_input.metadata: %s\n", stats.BuildInput.Metadata)
	fmt.Fprintf(&b, "analyze_input.total: %s\n", stats.AnalyzeInput.Total)
	fmt.Fprintf(&b, "analyze_input.iterations: %d\n", stats.AnalyzeInput.Iterations)
	fmt.Fprintf(&b, "analyze_input.reachable_symbols: %d\n", stats.AnalyzeInput.ReachableSymbols)
	fmt.Fprintf(&b, "analyze_input.used_in_iface_types: %d\n", stats.AnalyzeInput.UsedInIfaceTypes)
	fmt.Fprintf(&b, "analyze_input.live_types: %d\n", stats.AnalyzeInput.LiveTypes)
	fmt.Fprintf(&b, "analyze_input.live_methods: %d\n", stats.AnalyzeInput.LiveMethods)
	fmt.Fprintf(&b, "total: %s\n", stats.Total)
	return b.String()
}
