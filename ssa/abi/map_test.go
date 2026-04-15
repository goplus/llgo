//go:build !llgo
// +build !llgo

package abi

import (
	"go/token"
	"go/types"
	"testing"
)

const (
	mapFlagIndirectKey = 1 << iota
	mapFlagIndirectElem
	mapFlagReflexiveKey
	mapFlagNeedKeyUpdate
	mapFlagHashMightPanic
)

func testMapSizes() types.Sizes {
	return types.SizesFor("gc", "amd64")
}

func testEmptyInterface() *types.Interface {
	iface := types.NewInterfaceType(nil, nil)
	iface.Complete()
	return iface
}

func testField(name string, typ types.Type) *types.Var {
	return types.NewField(token.NoPos, nil, name, typ, false)
}

func TestMapBucketTypeLayout(t *testing.T) {
	sizes := testMapSizes()
	largeArray := types.NewArray(types.Typ[types.Int64], MAXKEYSIZE/8+1)

	tests := []struct {
		name         string
		mapType      *types.Map
		wantKeyElem  types.Type
		wantElemElem types.Type
		wantOverflow types.Type
	}{
		{
			name:         "scalar key and elem use direct arrays and uintptr overflow",
			mapType:      types.NewMap(types.Typ[types.Int], types.Typ[types.Int]),
			wantKeyElem:  types.Typ[types.Int],
			wantElemElem: types.Typ[types.Int],
			wantOverflow: types.Typ[types.Uintptr],
		},
		{
			name:         "pointer data keeps overflow pointer",
			mapType:      types.NewMap(types.Typ[types.String], types.Typ[types.Int]),
			wantKeyElem:  types.Typ[types.String],
			wantElemElem: types.Typ[types.Int],
			wantOverflow: types.Typ[types.UnsafePointer],
		},
		{
			name:         "large key and elem are indirect",
			mapType:      types.NewMap(largeArray, largeArray),
			wantKeyElem:  types.NewPointer(largeArray),
			wantElemElem: types.NewPointer(largeArray),
			wantOverflow: types.Typ[types.UnsafePointer],
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			bucket, ok := MapBucketType(tt.mapType, sizes).Underlying().(*types.Struct)
			if !ok {
				t.Fatalf("MapBucketType(%v) is %T, want struct", tt.mapType, bucket)
			}
			if bucket.NumFields() != 4 {
				t.Fatalf("MapBucketType(%v) field count = %d, want 4", tt.mapType, bucket.NumFields())
			}
			assertArrayField(t, bucket, 0, "topbits", types.Typ[types.Uint8])
			assertArrayField(t, bucket, 1, "keys", tt.wantKeyElem)
			assertArrayField(t, bucket, 2, "elems", tt.wantElemElem)
			if f := bucket.Field(3); f.Name() != "overflow" || !types.Identical(f.Type(), tt.wantOverflow) {
				t.Fatalf("overflow field = %s %v, want overflow %v", f.Name(), f.Type(), tt.wantOverflow)
			}
		})
	}
}

func assertArrayField(t *testing.T, st *types.Struct, index int, name string, elem types.Type) {
	t.Helper()
	f := st.Field(index)
	if f.Name() != name {
		t.Fatalf("field %d name = %q, want %q", index, f.Name(), name)
	}
	arr, ok := f.Type().Underlying().(*types.Array)
	if !ok {
		t.Fatalf("field %s type = %T, want array", name, f.Type().Underlying())
	}
	if arr.Len() != BUCKETSIZE || !types.Identical(arr.Elem(), elem) {
		t.Fatalf("field %s type = [%d]%v, want [%d]%v", name, arr.Len(), arr.Elem(), BUCKETSIZE, elem)
	}
}

func TestMapTypeFlags(t *testing.T) {
	sizes := testMapSizes()
	iface := testEmptyInterface()
	largeArray := types.NewArray(types.Typ[types.Int64], MAXKEYSIZE/8+1)
	structWithFloat := types.NewStruct([]*types.Var{
		testField("F", types.Typ[types.Float64]),
	}, nil)

	tests := []struct {
		name string
		typ  *types.Map
		want int
	}{
		{
			name: "integer key is reflexive and direct",
			typ:  types.NewMap(types.Typ[types.Int], types.Typ[types.Int]),
			want: mapFlagReflexiveKey,
		},
		{
			name: "string key needs key update",
			typ:  types.NewMap(types.Typ[types.String], types.Typ[types.Int]),
			want: mapFlagReflexiveKey | mapFlagNeedKeyUpdate,
		},
		{
			name: "float key is not reflexive and needs key update",
			typ:  types.NewMap(types.Typ[types.Float64], types.Typ[types.Int]),
			want: mapFlagNeedKeyUpdate,
		},
		{
			name: "interface key hash might panic",
			typ:  types.NewMap(iface, types.Typ[types.Int]),
			want: mapFlagNeedKeyUpdate | mapFlagHashMightPanic,
		},
		{
			name: "large key and elem are indirect",
			typ:  types.NewMap(largeArray, largeArray),
			want: mapFlagIndirectKey | mapFlagIndirectElem | mapFlagReflexiveKey,
		},
		{
			name: "struct key inherits float key behavior",
			typ:  types.NewMap(structWithFloat, types.Typ[types.Int]),
			want: mapFlagNeedKeyUpdate,
		},
	}

	b := New(8, sizes)
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := MapTypeFlags(tt.typ, sizes); got != tt.want {
				t.Fatalf("MapTypeFlags(%v) = %d, want %d", tt.typ, got, tt.want)
			}
			if got := b.MapFlags(tt.typ); got != tt.want {
				t.Fatalf("Builder.MapFlags(%v) = %d, want %d", tt.typ, got, tt.want)
			}
		})
	}
	if _, ok := b.MapBucket(types.NewMap(types.Typ[types.Int], types.Typ[types.Int])).Underlying().(*types.Struct); !ok {
		t.Fatalf("Builder.MapBucket should return a struct type")
	}
}

func TestMapPointerAndKeyProperties(t *testing.T) {
	iface := testEmptyInterface()
	sig := types.NewSignature(nil, nil, nil, false)
	arrayOfPtr := types.NewArray(types.NewPointer(types.Typ[types.Int]), 2)
	arrayOfIface := types.NewArray(iface, 2)
	structOfInt := types.NewStruct([]*types.Var{
		testField("N", types.Typ[types.Int]),
	}, nil)
	structOfString := types.NewStruct([]*types.Var{
		testField("S", types.Typ[types.String]),
	}, nil)
	structOfIface := types.NewStruct([]*types.Var{
		testField("I", iface),
	}, nil)

	ptrCases := []struct {
		name string
		typ  types.Type
		want bool
	}{
		{"int", types.Typ[types.Int], false},
		{"string", types.Typ[types.String], true},
		{"unsafe pointer", types.Typ[types.UnsafePointer], true},
		{"pointer", types.NewPointer(types.Typ[types.Int]), true},
		{"signature", sig, true},
		{"chan", types.NewChan(types.SendRecv, types.Typ[types.Int]), true},
		{"map", types.NewMap(types.Typ[types.Int], types.Typ[types.Int]), true},
		{"interface", iface, true},
		{"slice", types.NewSlice(types.Typ[types.Int]), true},
		{"zero pointer array", types.NewArray(types.NewPointer(types.Typ[types.Int]), 0), false},
		{"pointer array", arrayOfPtr, true},
		{"scalar struct", structOfInt, false},
		{"pointer data struct", structOfString, true},
	}
	for _, tt := range ptrCases {
		t.Run("HasPtrData/"+tt.name, func(t *testing.T) {
			if got := HasPtrData(tt.typ); got != tt.want {
				t.Fatalf("HasPtrData(%v) = %v, want %v", tt.typ, got, tt.want)
			}
		})
	}

	reflexiveCases := []struct {
		name string
		typ  types.Type
		want bool
	}{
		{"int", types.Typ[types.Int], true},
		{"unsafe pointer", types.Typ[types.UnsafePointer], true},
		{"float", types.Typ[types.Float64], false},
		{"complex", types.Typ[types.Complex128], false},
		{"pointer", types.NewPointer(types.Typ[types.Int]), true},
		{"chan", types.NewChan(types.SendRecv, types.Typ[types.Int]), true},
		{"interface", iface, false},
		{"int array", types.NewArray(types.Typ[types.Int], 2), true},
		{"float array", types.NewArray(types.Typ[types.Float64], 2), false},
		{"scalar struct", structOfInt, true},
		{"float struct", types.NewStruct([]*types.Var{testField("F", types.Typ[types.Float64])}, nil), false},
	}
	for _, tt := range reflexiveCases {
		t.Run("IsReflexive/"+tt.name, func(t *testing.T) {
			if got := IsReflexive(tt.typ); got != tt.want {
				t.Fatalf("IsReflexive(%v) = %v, want %v", tt.typ, got, tt.want)
			}
		})
	}

	keyUpdateCases := []struct {
		name string
		typ  types.Type
		want bool
	}{
		{"int", types.Typ[types.Int], false},
		{"float", types.Typ[types.Float32], true},
		{"complex", types.Typ[types.Complex64], true},
		{"string", types.Typ[types.String], true},
		{"interface", iface, true},
		{"pointer", types.NewPointer(types.Typ[types.Int]), false},
		{"chan", types.NewChan(types.SendRecv, types.Typ[types.Int]), false},
		{"string array", types.NewArray(types.Typ[types.String], 2), true},
		{"scalar struct", structOfInt, false},
		{"string struct", structOfString, true},
	}
	for _, tt := range keyUpdateCases {
		t.Run("needkeyupdate/"+tt.name, func(t *testing.T) {
			if got := needkeyupdate(tt.typ); got != tt.want {
				t.Fatalf("needkeyupdate(%v) = %v, want %v", tt.typ, got, tt.want)
			}
		})
	}

	hashPanicCases := []struct {
		name string
		typ  types.Type
		want bool
	}{
		{"int", types.Typ[types.Int], false},
		{"interface", iface, true},
		{"interface array", arrayOfIface, true},
		{"scalar struct", structOfInt, false},
		{"interface struct", structOfIface, true},
	}
	for _, tt := range hashPanicCases {
		t.Run("hashMightPanic/"+tt.name, func(t *testing.T) {
			if got := hashMightPanic(tt.typ); got != tt.want {
				t.Fatalf("hashMightPanic(%v) = %v, want %v", tt.typ, got, tt.want)
			}
		})
	}

	if !isPointer(types.NewPointer(types.Typ[types.Int])) {
		t.Fatalf("isPointer(pointer) = false, want true")
	}
	if isPointer(types.Typ[types.Int]) {
		t.Fatalf("isPointer(int) = true, want false")
	}
}
