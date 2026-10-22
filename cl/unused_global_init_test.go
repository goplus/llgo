package cl

import (
	"slices"
	"strings"
	"testing"

	"golang.org/x/tools/go/ssa"
)

func TestUnusedGlobalInitializers(t *testing.T) {
	for _, tc := range []struct {
		name, src string
		dead      []string
		maps      int
	}{
		{"unused map and alias", `var A = map[string]int{"a": 1}; var B = A`, []string{"A", "B"}, 1},
		{"used alias", `var A = map[string]int{"a": 1}; var B = A; func use() int { return B["a"] }`, nil, 0},
		{"method read", `type T int; var M = map[int]int{1: 2}; func (T) Read() int { return M[1] }`, nil, 0},
		{"address escape", `var M = map[int]int{1: 2}; var P = &M; func use() any { return P }`, nil, 0},
		{"init read", `var M = map[int]int{1: 2}; func init() { println(len(M)) }`, nil, 0},
		{"post-init write", `var M = map[int]int{1: 2}; func write() { M = nil }`, nil, 0},
		{"interface key panic", `var M = map[any]int{[]int{1}: 2}`, []string{"M"}, 0},
		{"nested interface key panic", `type K struct{ X any }; var M = map[K]int{{[]int{1}}: 2}`, []string{"M"}, 0},
		{"array interface key panic", `var M = map[[1]any]int{{[]int{1}}: 2}`, []string{"M"}, 0},
		{"dynamic map hint", `func hint() int { return -1 }; var M = make(map[int]int, hint())`, []string{"M"}, 0},
		{"large map hint", `var M = make(map[int]int, 1 << 30)`, []string{"M"}, 0},
		{"blank map", `var _ = map[int]int{1: 2}`, nil, 1},
		{"effectful key and value", `func value() int { println("side effect"); return 1 }; var M = map[int]int{value(): value()}`, []string{"M"}, 1},
		{"generic read", `var M = map[int]int{1: 2}; func use[T any](T) int { return M[1] }; func call() int { return use(0) }`, nil, 0},
	} {
		t.Run(tc.name, func(t *testing.T) {
			pkg := buildSSAPackage(t, "package foo\n"+tc.src)
			plan := FindUnusedGlobalInits(pkg.Prog, func(*ssa.Global) bool { return false })
			var names []string
			for _, name := range plan.Names(pkg) {
				names = append(names, strings.TrimPrefix(name, "foo."))
			}
			if !slices.Equal(names, tc.dead) {
				t.Fatalf("dead globals = %v, want %v", names, tc.dead)
			}
			maps := 0
			for _, instr := range plan.instrs[pkg] {
				if _, call := instr.(*ssa.Call); call {
					t.Fatal("removed operand evaluation")
				}
				if _, ok := instr.(*ssa.MakeMap); ok {
					maps++
				}
			}
			if maps != tc.maps {
				t.Fatalf("removed map constructions = %d, want %d", maps, tc.maps)
			}
			if len(plan.instrs[pkg]) != 0 && len(plan.CacheKeys(pkg)) == 0 {
				t.Fatal("removed instructions missing from cache identity")
			}
		})
	}
}

func TestUnusedGlobalInitializerPreserve(t *testing.T) {
	pkg := buildSSAPackage(t, "package foo; var M = map[string]int{\"a\":1}")
	plan := FindUnusedGlobalInits(pkg.Prog, func(global *ssa.Global) bool { return global.Name() == "M" })
	if len(plan.Names(pkg)) != 0 || len(plan.instrs[pkg]) != 0 {
		t.Fatal("removed a preserved initializer")
	}
	var absent *UnusedGlobalInits
	if absent.Names(pkg) != nil || absent.CacheKeys(pkg) != nil {
		t.Fatal("nil plan has package entries")
	}
}

func TestUnusedGlobalInitializerPreserveOnce(t *testing.T) {
	pkg := buildSSAPackage(t, `package foo
var Keep = map[string]int{"keep": 1}
var A = map[string]int{"a": 1}
var B = A
var C = B
`)
	calls := make(map[*ssa.Global]int)
	plan := FindUnusedGlobalInits(pkg.Prog, func(global *ssa.Global) bool {
		calls[global]++
		return global.Name() == "Keep"
	})
	if got := plan.Names(pkg); !slices.Equal(got, []string{"foo.A", "foo.B", "foo.C"}) {
		t.Fatalf("dead globals = %v", got)
	}
	for global, count := range calls {
		if count != 1 {
			t.Fatalf("preserve(%s) called %d times", global, count)
		}
	}
}
