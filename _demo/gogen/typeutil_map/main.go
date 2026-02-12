// Converted from typeutil/map_test.go for llgo testing
package main

import (
	"fmt"
	"go/token"
	"go/types"
	"strings"

	"github.com/goplus/gogen/internal/typesalias"
	"github.com/goplus/gogen/typeutil"
)

func testMapBasicOps() {
	fmt.Println("=== testMapBasicOps ===")
	var m typeutil.Map

	if got := m.Len(); got != 0 {
		panic(fmt.Sprintf("Len: got=%d want=0", got))
	}
	fmt.Println("  Len() on empty = 0 [PASS]")

	if v := m.At(types.Typ[types.Int]); v != nil {
		panic(fmt.Sprintf("At empty: %v", v))
	}
	fmt.Println("  At() on empty = nil [PASS]")

	if ok := m.Delete(types.Typ[types.Int]); ok {
		panic("Delete on empty returned true")
	}
	fmt.Println("  Delete() on empty = false [PASS]")

	if prev := m.Set(types.Typ[types.Int], "int"); prev != nil {
		panic(fmt.Sprintf("Set new: prev=%v", prev))
	}
	fmt.Println("  Set() new key = nil [PASS]")

	if prev := m.Set(types.Typ[types.Int], "int2"); prev != "int" {
		panic(fmt.Sprintf("Set update: prev=%v", prev))
	}
	fmt.Println("  Set() update = old value [PASS]")

	if v := m.At(types.Typ[types.Int]); v != "int2" {
		panic(fmt.Sprintf("At after update: %v", v))
	}
	fmt.Println("  At() after update = new value [PASS]")

	if ok := m.Delete(types.Typ[types.Int]); !ok {
		panic("Delete existing returned false")
	}
	fmt.Println("  Delete() existing = true [PASS]")

	if v := m.At(types.Typ[types.Int]); v != nil {
		panic(fmt.Sprintf("At after delete: %v", v))
	}
	fmt.Println("  At() after delete = nil [PASS]")

	if prev := m.Set(types.Typ[types.String], "string"); prev != nil {
		panic(fmt.Sprintf("Set string: prev=%v", prev))
	}
	fmt.Println("  Set() string type [PASS]")

	if got := m.Len(); got != 1 {
		panic(fmt.Sprintf("Len after set: %d", got))
	}
	fmt.Println("  Len() = 1 [PASS]")

	if keys := m.Keys(); len(keys) != 1 {
		panic(fmt.Sprintf("Keys len: %d", len(keys)))
	}
	fmt.Println("  Keys() len = 1 [PASS]")

	if s := m.String(); !strings.Contains(s, "string") {
		panic(fmt.Sprintf("String: %q", s))
	}
	fmt.Println("  String() contains 'string' [PASS]")

	if s := m.KeysString(); !strings.Contains(s, "string") {
		panic(fmt.Sprintf("KeysString: %q", s))
	}
	fmt.Println("  KeysString() contains 'string' [PASS]")
}

func testHasherBasicTypes() {
	fmt.Println("=== testHasherBasicTypes ===")
	h := typeutil.MakeHasher()

	if h.Hash(types.Typ[types.Int]) == 0 {
		panic("hash int should be non-zero")
	}
	fmt.Println("  Hash(int) non-zero [PASS]")

	arr := types.NewArray(types.Typ[types.Int], 2)
	slice := types.NewSlice(types.Typ[types.String])
	ptr := types.NewPointer(types.Typ[types.Bool])
	mp := types.NewMap(types.Typ[types.String], types.Typ[types.Int])
	ch := types.NewChan(types.SendRecv, types.Typ[types.Int])
	pkg := types.NewPackage("p", "p")
	anon := types.NewField(token.NoPos, pkg, "", types.Typ[types.Int], true)
	named := types.NewField(token.NoPos, pkg, "N", types.Typ[types.String], false)
	st := types.NewStruct([]*types.Var{anon, named}, []string{"", "json:\"n\""})

	_ = h.Hash(arr)
	fmt.Println("  Hash(array) [PASS]")
	_ = h.Hash(slice)
	fmt.Println("  Hash(slice) [PASS]")
	_ = h.Hash(ptr)
	fmt.Println("  Hash(pointer) [PASS]")
	_ = h.Hash(mp)
	fmt.Println("  Hash(map) [PASS]")
	_ = h.Hash(ch)
	fmt.Println("  Hash(chan) [PASS]")
	_ = h.Hash(st)
	fmt.Println("  Hash(struct) [PASS]")

	st2 := types.NewStruct([]*types.Var{anon, named}, []string{"", "json:\"n\""})
	if h.Hash(st) != h.Hash(st2) {
		panic("hash identical struct mismatch")
	}
	fmt.Println("  Hash(identical structs) match [PASS]")

	if typesalias.Support {
		obj := types.NewTypeName(token.NoPos, pkg, "AliasInt", nil)
		alias := typesalias.NewAlias(obj, types.Typ[types.Int])
		if h.Hash(alias) == 0 {
			panic("hash alias should be non-zero")
		}
		fmt.Println("  Hash(alias) non-zero [PASS]")
	} else {
		fmt.Println("  (skipping alias test - not supported)")
	}
}

func main() {
	fmt.Println("Running typeutil/map tests...")
	fmt.Println()

	testMapBasicOps()
	fmt.Println()

	testHasherBasicTypes()
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
