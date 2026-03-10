package runtime

import "testing"

func TestFuncMetadataNormalizeAndLookup(t *testing.T) {
	funcMetadataMap = nil
	funcMetadataPC = nil

	RegisterFuncMetadata("__llgo_stub.github.com/goplus/llgo/test/runtime..site", "site.go", 42)
	file, line, ok := LookupFuncMetadata("github.com/goplus/llgo/test/runtime.site")
	if !ok || file != "site.go" || line != 42 {
		t.Fatalf("exact lookup = (%q, %d, %v), want (site.go, 42, true)", file, line, ok)
	}
	file, line, ok = LookupFuncMetadata("runtime.site")
	if !ok || file != "site.go" || line != 42 {
		t.Fatalf("suffix lookup = (%q, %d, %v), want (site.go, 42, true)", file, line, ok)
	}
}

func TestFuncMetadataPCLookup(t *testing.T) {
	funcMetadataMap = nil
	funcMetadataPC = nil

	RegisterFuncMetadataPC(7, "pc.go", 9)
	file, line, ok := LookupFuncMetadataPC(7)
	if !ok || file != "pc.go" || line != 9 {
		t.Fatalf("pc lookup = (%q, %d, %v), want (pc.go, 9, true)", file, line, ok)
	}
}
