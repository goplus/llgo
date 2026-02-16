package types_test

import (
	"go/token"
	"go/types"
	"testing"
)

func TestSizesForArchitectures(t *testing.T) {
	sizes := types.SizesFor("gc", "arm64")
	if sizes == nil {
		t.Fatal("expected sizes for gc arm64")
	}

	intType := types.Typ[types.Int]
	if got := sizes.Sizeof(intType); got != 8 {
		t.Fatalf("Sizeof(int) = %d, want 8", got)
	}

	ptrType := types.NewPointer(types.Typ[types.Uint32])
	if got := sizes.Sizeof(ptrType); got != 8 {
		t.Fatalf("Sizeof(*uint32) = %d, want 8", got)
	}

	structType := types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, nil, "A", types.Typ[types.Int], false),
		types.NewField(token.NoPos, nil, "B", types.Typ[types.Byte], false),
	}, []string{"json:\"a\"", "json:\"b\""})
	if got := sizes.Sizeof(structType); got < 16 {
		t.Fatalf("Sizeof(struct) = %d, want at least 16", got)
	}

	offsets := sizes.Offsetsof([]*types.Var{
		structType.Field(0),
		structType.Field(1),
	})
	if len(offsets) != 2 {
		t.Fatalf("Offsetsof returned %d entries, want 2", len(offsets))
	}
	if offsets[0] != 0 {
		t.Fatalf("offset of A = %d, want 0", offsets[0])
	}
	if offsets[1] != 8 {
		t.Fatalf("offset of B = %d, want 8", offsets[1])
	}
}
