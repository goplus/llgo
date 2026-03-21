package mdtest

import (
	"testing"

	"github.com/goplus/llvm"
)

func TestNamedMetadataReadAPIs(t *testing.T) {
	ctx := llvm.NewContext()
	mod := ctx.NewModule("m")
	mod.AddNamedMetadataOperand("llgo.test", ctx.MDNode([]llvm.Metadata{
		ctx.MDString("owner"),
		llvm.ConstInt(ctx.Int32Type(), 7, false).ConstantAsMetadata(),
		ctx.MDString("name"),
	}))

	if got := GetNamedMetadataNumOperands(mod, "llgo.test"); got != 1 {
		t.Fatalf("GetNamedMetadataNumOperands = %d, want 1", got)
	}
	rows := GetNamedMetadataOperands(mod, "llgo.test")
	if len(rows) != 1 {
		t.Fatalf("GetNamedMetadataOperands len = %d, want 1", len(rows))
	}
	fields := GetMDNodeOperands(rows[0])
	if len(fields) != 3 {
		t.Fatalf("GetMDNodeOperands len = %d, want 3", len(fields))
	}
	if !IsAMDString(fields[0]) {
		t.Fatal("field[0] should be MDString")
	}
	if got := GetMDString(fields[0]); got != "owner" {
		t.Fatalf("GetMDString(field[0]) = %q, want %q", got, "owner")
	}
	if got := fields[1].ZExtValue(); got != 7 {
		t.Fatalf("ConstIntGetZExtValue(field[1]) = %d, want 7", got)
	}
	if !IsAMDString(fields[2]) {
		t.Fatal("field[2] should be MDString")
	}
	if got := GetMDString(fields[2]); got != "name" {
		t.Fatalf("GetMDString(field[2]) = %q, want %q", got, "name")
	}
}
