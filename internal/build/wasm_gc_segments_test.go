package build

import (
	"bytes"
	"go/ast"
	"go/format"
	"go/parser"
	"go/token"
	"os"
	"os/exec"
	"path/filepath"
	"testing"
)

// Exercise the collector's real metadata code over out-of-order arenas without
// letting the host test's own collector share that metadata.
func TestWasmGCSegmentBoundariesAndSweep(t *testing.T) {
	fset := token.NewFileSet()
	var source bytes.Buffer
	source.WriteString(gcSegmentWorkloadSource)
	functions := map[string]bool{"gcAddressOfIn": true, "gcStateByteOfIn": true,
		"gcStateFromByteIn": true, "gcStateOfIn": true, "gcSetStateIn": true,
		"gcMarkFreeIn": true, "gcUnmarkIn": true, "sweep": true}
	for _, name := range []string{"segments.go", "segment_lookup.go", "gc_tinygo.go"} {
		file, err := parser.ParseFile(fset, filepath.Join("..", "..", "runtime", "internal", "runtime", "tinygogc", name), nil, 0)
		if err != nil {
			t.Fatal(err)
		}
		for _, decl := range file.Decls {
			if gen, ok := decl.(*ast.GenDecl); ok && gen.Tok == token.IMPORT {
				continue
			}
			if name == "gc_tinygo.go" {
				fn, ok := decl.(*ast.FuncDecl)
				if !ok || !functions[fn.Name.Name] {
					continue
				}
				delete(functions, fn.Name.Name)
			}
			if err := format.Node(&source, fset, decl); err != nil {
				t.Fatal(err)
			}
			source.WriteByte('\n')
		}
	}
	if len(functions) != 0 {
		t.Fatalf("missing collector functions: %v", functions)
	}
	path := filepath.Join(t.TempDir(), "segments_test.go")
	if err := os.WriteFile(path, source.Bytes(), 0644); err != nil {
		t.Fatal(err)
	}
	if out, err := exec.Command("go", "test", "-count=1", "-timeout=20s", path).CombinedOutput(); err != nil {
		t.Fatalf("segment metadata regression: %v\n%s", err, out)
	}
}

const gcSegmentWorkloadSource = `package segments
import ("runtime"; "testing"; "unsafe")
const segmentedHeap = true
const (
 blockStateFree uint8 = iota
 blockStateHead
 blockStateTail
 blockStateMark
 blockStateMask = 3
 stateBits = 2
 blocksPerStateByte = 4
 wordsPerBlock = 4
 bytesPerBlock = wordsPerBlock * unsafe.Sizeof(uintptr(0))
)
var endBlock uintptr
var gcFrees, gcFreedBlocks uint64
var c = struct {
 Str func(string) string
 Memset func(unsafe.Pointer, int, uintptr) unsafe.Pointer
}{func(s string) string { return s }, func(p unsafe.Pointer, value int, n uintptr) unsafe.Pointer {
 for i := uintptr(0); i < n; i++ { *(*byte)(unsafe.Add(p, i)) = byte(value) }; return p
}}
func gcPanic(s string) { panic(s) }
func TestAllSegments(t *testing.T) {
 const stride = 4096
 data := make([]byte, maxHeapSegments*stride)
 base := uintptr(unsafe.Pointer(&data[0]))
 for i := 0; i < maxHeapSegments; i++ {
  // Force non-address-order insertion and holes between malloc-like arenas.
  start := base + uintptr((i*37)%maxHeapSegments)*stride
  if !addHeapSegment(start, start+stride-64) { t.Fatalf("segment %d rejected", i) }
 }
 for i := 0; i < heapSegmentCount; i++ {
  segment := &heapSegments[i]
  for block := segment.first; block <= segment.last; block++ {
   if segmentForBlock(block) != segment { t.Fatalf("block %d crosses segment", block) }
  }
  for _, address := range []uintptr{segment.start, segment.metadata-1} {
   if segmentForAddress(address) != segment { t.Fatalf("address %#x not in segment %d", address, i) }
  }
  for _, address := range []uintptr{segment.start-1, segment.metadata, segment.end-1, segment.end} {
   if segmentForAddress(address) != nil { t.Fatalf("gap/metadata %#x treated as a root", address) }
  }
  for block := segment.first; block < segment.last; block++ {
   gcSetStateIn(segment, block, blockStateHead)
   *(*uintptr)(unsafe.Pointer(gcAddressOfIn(segment, block))) = 123
  }
  gcSetStateIn(segment, segment.first, blockStateMark)
 }
 sweep()
 for i := 0; i < heapSegmentCount; i++ {
  segment := &heapSegments[i]
  for block := segment.first; block < segment.last; block++ {
   want := uint8(blockStateFree)
   if block == segment.first { want = blockStateHead }
   if got := gcStateOfIn(segment, block); got != want { t.Fatalf("segment %d block %d: %d != %d", i, block, got, want) }
   value := *(*uintptr)(unsafe.Pointer(gcAddressOfIn(segment, block)))
   if block == segment.first && value != 123 || block != segment.first && value != 0 { t.Fatalf("incorrect sweep payload at %d", block) }
  }
 }
 if addHeapSegment(base, base+stride) { t.Fatal("segment limit ignored") }
 runtime.KeepAlive(data)
}
`
