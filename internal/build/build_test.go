//go:build !llgo
// +build !llgo

package build

import (
	"bytes"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/mockable"
	"github.com/goplus/llgo/internal/packages"
)

func TestMain(m *testing.M) {
	old := cacheRootFunc
	td, _ := os.MkdirTemp("", "llgo-cache-*")
	cacheRootFunc = func() string { return td }
	code := m.Run()
	cacheRootFunc = old
	_ = os.RemoveAll(td)
	os.Exit(code)
}

func mockRun(args []string, cfg *Config) {
	defer mockable.DisableMock()
	mockable.EnableMock()

	var panicVal interface{}
	defer func() {
		if r := recover(); r != nil {
			// Ignore mocked os.Exit
			if s, ok := r.(string); ok && s == "exit" {
				return
			}
			panicVal = r
		}
		if panicVal != nil {
			panic(panicVal)
		}
	}()

	// Only set OutFile for modes that don't support multiple packages,
	// or when OutFile is not already set
	if cfg.OutFile == "" && (cfg.Mode == ModeBuild || cfg.Mode == ModeRun) {
		file, _ := os.CreateTemp("", "llgo-*")
		cfg.OutFile = file.Name()
		file.Close()
		defer os.Remove(cfg.OutFile)
	}

	if _, err := Do(args, cfg); err != nil {
		panic(err)
	}
}

func TestRun(t *testing.T) {
	mockRun([]string{"../../cl/_testgo/print"}, &Config{Mode: ModeRun})
}

func TestTest(t *testing.T) {
	// FIXME(zzy): with builtin package test in a llgo test ./... will cause duplicate symbol error
	mockRun([]string{"../../cl/_testgo/runtest"}, &Config{Mode: ModeTest})
}

func TestExtest(t *testing.T) {
	originalStdout := os.Stdout
	defer func() { os.Stdout = originalStdout }()

	r, w, err := os.Pipe()
	if err != nil {
		t.Fatalf("os.Pipe failed: %v", err)
	}
	os.Stdout = w
	outputChan := make(chan string)
	go func() {
		var data bytes.Buffer
		io.Copy(&data, r)
		outputChan <- data.String()
	}()

	mockRun([]string{"../../cl/_testgo/runextest/..."}, &Config{Mode: ModeTest})

	w.Close()
	got := <-outputChan
	expected := "PASS\nPASS\nPASS\nPASS\n"
	if got != expected {
		t.Errorf("Expected output %q, but got %q", expected, got)
	}
}

func TestCmpTest(t *testing.T) {
	mockRun([]string{"../../cl/_testgo/runtest"}, &Config{Mode: ModeCmpTest})
}

func TestFilterTestPackages(t *testing.T) {
	pkg := func(id string) *packages.Package {
		return &packages.Package{ID: id}
	}

	t.Run("empty after filtering", func(t *testing.T) {
		initial := []*packages.Package{
			pkg("github.com/goplus/llgo/chore/ardump"),
			pkg("github.com/goplus/llgo/chore/ardump [github.com/goplus/llgo/chore/ardump.test]"),
		}
		filtered, err := filterTestPackages(initial, "")
		if err != nil {
			t.Fatalf("filterTestPackages returned unexpected error: %v", err)
		}
		if len(filtered) != 0 {
			t.Fatalf("len(filtered) = %d, want 0", len(filtered))
		}
	})

	t.Run("retain test packages", func(t *testing.T) {
		initial := []*packages.Package{
			pkg("foo"),
			pkg("foo.test"),
		}
		filtered, err := filterTestPackages(initial, "")
		if err != nil {
			t.Fatalf("filterTestPackages returned unexpected error: %v", err)
		}
		if len(filtered) != 1 {
			t.Fatalf("len(filtered) = %d, want 1", len(filtered))
		}
		if filtered[0].ID != "foo.test" {
			t.Fatalf("filtered[0].ID = %q, want %q", filtered[0].ID, "foo.test")
		}
	})

	t.Run("multiple test packages with output file", func(t *testing.T) {
		initial := []*packages.Package{
			pkg("a.test"),
			pkg("b.test"),
		}
		_, err := filterTestPackages(initial, "/tmp/out")
		if err == nil {
			t.Fatal("expected error for -o with multiple test packages, got nil")
		}
		if !strings.Contains(err.Error(), "cannot use -o flag with multiple packages") {
			t.Fatalf("unexpected error: %v", err)
		}
	})
}

const (
	rewriteMainPkg = "github.com/goplus/llgo/cl/_testgo/rewrite"
	rewriteDepPkg  = rewriteMainPkg + "/dep"
	rewriteDirPath = "../../cl/_testgo/rewrite"
)

func TestLdFlagsRewriteVars(t *testing.T) {
	buildRewriteBinary(t, false, "build-main", "build-pkg")
	buildRewriteBinary(t, false, "rerun-main", "rerun-pkg")
}

func TestLdFlagsRewriteVarsMainAlias(t *testing.T) {
	buildRewriteBinary(t, true, "alias-main", "alias-pkg")
}

func buildRewriteBinary(t *testing.T, useMainAlias bool, mainVal, depVal string) {
	t.Helper()
	binPath := filepath.Join(t.TempDir(), "rewrite")
	if runtime.GOOS == "windows" {
		binPath += ".exe"
	}

	cfg := &Config{Mode: ModeBuild, OutFile: binPath}
	mainKey := rewriteMainPkg
	var mainPkgs []string
	if useMainAlias {
		mainKey = "main"
		mainPkgs = []string{rewriteMainPkg}
	}
	mainPlain := mainVal + "-plain"
	depPlain := depVal + "-plain"
	gorootVal := "goroot-" + mainVal
	versionVal := "version-" + mainVal
	addGlobalString(cfg, mainKey+".VarName="+mainVal, mainPkgs)
	addGlobalString(cfg, mainKey+".VarPlain="+mainPlain, mainPkgs)
	addGlobalString(cfg, rewriteDepPkg+".VarName="+depVal, nil)
	addGlobalString(cfg, rewriteDepPkg+".VarPlain="+depPlain, nil)
	addGlobalString(cfg, "runtime.defaultGOROOT="+gorootVal, nil)
	addGlobalString(cfg, "runtime.buildVersion="+versionVal, nil)

	if _, err := Do([]string{rewriteDirPath}, cfg); err != nil {
		t.Fatalf("ModeBuild failed: %v", err)
	}
	got := runBinary(t, binPath)
	want := fmt.Sprintf(
		"main.VarName: %s\nmain.VarPlain: %s\ndep.VarName: %s\ndep.VarPlain: %s\nruntime.GOROOT(): %s\nruntime.Version(): %s\n",
		mainVal, mainPlain, depVal, depPlain, gorootVal, versionVal,
	)
	if got != want {
		t.Fatalf("unexpected binary output:\nwant %q\ngot  %q", want, got)
	}
}

func runBinary(t *testing.T, path string, args ...string) string {
	t.Helper()
	cmd := exec.Command(path, args...)
	output, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("failed to run %s: %v\n%s", path, err, output)
	}
	return string(output)
}

func TestRunPrintfWithStdioNobuf(t *testing.T) {
	t.Setenv(llgoStdioNobuf, "1")
	mockRun([]string{"../../cl/_testdata/printf"}, &Config{Mode: ModeRun})
}

func TestModeGenKeepAliveOverlayPromotesStackAlloc(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	repoRoot := filepath.Clean(filepath.Join(wd, "..", ".."))
	td, err := os.MkdirTemp(repoRoot, ".tmp-keepalive-*")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(td)
	if err := os.WriteFile(filepath.Join(td, "go.mod"), []byte("module example.com/keepalive\n\ngo 1.23\n"), 0644); err != nil {
		t.Fatal(err)
	}
	src := `package main

import "runtime"

type HeapObj [8]int64
type StkObj struct{ h *HeapObj }

func g(s *StkObj) {
	runtime.KeepAlive(s)
}

func f() {
	var s StkObj
	s.h = new(HeapObj)
	g(&s)
}
`
	if err := os.WriteFile(filepath.Join(td, "main.go"), []byte(src), 0644); err != nil {
		t.Fatal(err)
	}

	if err := os.Chdir(td); err != nil {
		t.Fatal(err)
	}
	defer func() {
		if chdirErr := os.Chdir(wd); chdirErr != nil {
			t.Fatalf("restore cwd: %v", chdirErr)
		}
	}()
	pkgs, err := Do([]string{"."}, &Config{Mode: ModeGen})
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("len(pkgs) = %d, want 1", len(pkgs))
	}
	body := functionBody(t, pkgs[0].LPkg.String(), "example.com/keepalive.f")
	if !strings.Contains(body, `alloca %"example.com/keepalive.StkObj"`) {
		t.Fatalf("f should use a stack slot for StkObj:\n%s", body)
	}
	if strings.Contains(body, `@"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)`) {
		t.Fatalf("f should not heap-allocate the local StkObj:\n%s", body)
	}
}

func TestModeGenSetFinalizerUsesTypedHelper(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	repoRoot := filepath.Clean(filepath.Join(wd, "..", ".."))
	td, err := os.MkdirTemp(repoRoot, ".tmp-setfinalizer-*")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(td)
	if err := os.WriteFile(filepath.Join(td, "go.mod"), []byte("module example.com/setfinalizer\n\ngo 1.23\n"), 0644); err != nil {
		t.Fatal(err)
	}
	src := `package main

import "runtime"

type T struct{ p *int }

func fin(*T) {}

func f(x *T) {
	runtime.SetFinalizer(x, fin)
}
`
	if err := os.WriteFile(filepath.Join(td, "main.go"), []byte(src), 0644); err != nil {
		t.Fatal(err)
	}

	if err := os.Chdir(td); err != nil {
		t.Fatal(err)
	}
	defer func() {
		if chdirErr := os.Chdir(wd); chdirErr != nil {
			t.Fatalf("restore cwd: %v", chdirErr)
		}
	}()
	pkgs, err := Do([]string{"."}, &Config{Mode: ModeGen})
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("len(pkgs) = %d, want 1", len(pkgs))
	}
	body := functionBody(t, pkgs[0].LPkg.String(), "example.com/setfinalizer.f")
	if !strings.Contains(body, "@runtime.SetFinalizerTypeHidden(") {
		t.Fatalf("f should use the hidden typed SetFinalizer helper:\n%s", body)
	}
	if strings.Contains(body, `call void @runtime.SetFinalizer(`) {
		t.Fatalf("f should not call SetFinalizer directly:\n%s", body)
	}
	callIdx := strings.Index(body, "@runtime.SetFinalizerTypeHidden(")
	if callIdx < 0 {
		t.Fatalf("missing SetFinalizerTypeHidden call:\n%s", body)
	}
	window := body[:callIdx]
	hasXor := strings.Contains(window, "xor i64") || strings.Contains(window, "xor i32")
	hasMul := strings.Contains(window, "mul i64") || strings.Contains(window, "mul i32")
	hasRotate := strings.Contains(window, "shl i64") || strings.Contains(window, "shl i32")
	hasRotate = hasRotate && (strings.Contains(window, "lshr i64") || strings.Contains(window, "lshr i32"))
	if !hasXor || !hasMul || !hasRotate {
		t.Fatalf("f should encode the finalizer key before SetFinalizerTypeHidden:\n%s", body)
	}
	if !strings.Contains(body[callIdx:], "@runtime.ClobberPointerRegs(") {
		t.Fatalf("f should clobber transient pointer registers after SetFinalizerTypeHidden:\n%s", body)
	}
	pre := body[:callIdx]
	if !strings.Contains(pre, "store i64 0, ptr") {
		t.Fatalf("f should clear the hidden finalizer key temp before SetFinalizerTypeHidden:\n%s", body)
	}
}

func TestModeGenSetFinalizerUsesTypedHelperForFieldClosure(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	repoRoot := filepath.Clean(filepath.Join(wd, "..", ".."))
	td, err := os.MkdirTemp(repoRoot, ".tmp-stackobj-setfinalizer-*")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(td)
	if err := os.WriteFile(filepath.Join(td, "go.mod"), []byte("module example.com/stackobjfinalizer\n\ngo 1.23\n"), 0644); err != nil {
		t.Fatal(err)
	}
	src := `package main

import "runtime"

type HeapObj [8]int64

type StkObj struct {
	h *HeapObj
}

func f() {
	var s StkObj
	s.h = new(HeapObj)
	runtime.SetFinalizer(s.h, func(h *HeapObj) {})
}
`
	if err := os.WriteFile(filepath.Join(td, "main.go"), []byte(src), 0644); err != nil {
		t.Fatal(err)
	}

	if err := os.Chdir(td); err != nil {
		t.Fatal(err)
	}
	defer func() {
		if chdirErr := os.Chdir(wd); chdirErr != nil {
			t.Fatalf("restore cwd: %v", chdirErr)
		}
	}()
	pkgs, err := Do([]string{"."}, &Config{Mode: ModeGen})
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("len(pkgs) = %d, want 1", len(pkgs))
	}
	body := functionBody(t, pkgs[0].LPkg.String(), "example.com/stackobjfinalizer.f")
	if !strings.Contains(body, "@runtime.SetFinalizerTypeHidden(") {
		t.Fatalf("f should use the hidden typed SetFinalizer helper for field closures:\n%s", body)
	}
	if strings.Contains(body, `call void @runtime.SetFinalizer(`) {
		t.Fatalf("f should not call SetFinalizer directly for field closures:\n%s", body)
	}
}

func TestModeGenSetFinalizerReusesHiddenPointerKey(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	repoRoot := filepath.Clean(filepath.Join(wd, "..", ".."))
	td, err := os.MkdirTemp(repoRoot, ".tmp-stringdata-setfinalizer-*")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(td)
	if err := os.WriteFile(filepath.Join(td, "go.mod"), []byte("module example.com/stringdatafinalizer\n\ngo 1.23\n"), 0644); err != nil {
		t.Fatal(err)
	}
	src := `package main

import (
	"runtime"
	"unsafe"
)

func f(s string) {
	p := unsafe.StringData(s)
	runtime.SetFinalizer(p, func(*byte) {})
}
`
	if err := os.WriteFile(filepath.Join(td, "main.go"), []byte(src), 0644); err != nil {
		t.Fatal(err)
	}

	if err := os.Chdir(td); err != nil {
		t.Fatal(err)
	}
	defer func() {
		if chdirErr := os.Chdir(wd); chdirErr != nil {
			t.Fatalf("restore cwd: %v", chdirErr)
		}
	}()
	pkgs, err := Do([]string{"."}, &Config{Mode: ModeGen})
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("len(pkgs) = %d, want 1", len(pkgs))
	}
	body := functionBody(t, pkgs[0].LPkg.String(), "example.com/stringdatafinalizer.f")
	callIdx := strings.Index(body, "@runtime.SetFinalizerTypeHidden(")
	if callIdx < 0 {
		t.Fatalf("f should use SetFinalizerTypeHidden:\n%s", body)
	}
	loadIdx := strings.LastIndex(body[:callIdx], "load i64, ptr")
	if loadIdx < 0 {
		t.Fatalf("f should load a hidden pointer key before SetFinalizerTypeHidden:\n%s", body)
	}
	window := body[loadIdx:callIdx]
	if strings.Contains(window, "ptrtoint") || strings.Contains(window, "inttoptr") {
		t.Fatalf("f should reuse the hidden pointer key without decoding/re-encoding it:\n%s", body)
	}
	if !strings.Contains(body[callIdx:], "@runtime.ClobberPointerRegs(") {
		t.Fatalf("f should clobber transient pointer registers after SetFinalizerTypeHidden:\n%s", body)
	}
	pre := body[:callIdx]
	if !strings.Contains(pre, "store i64 0, ptr") {
		t.Fatalf("f should clear the hidden pointer key temp before SetFinalizerTypeHidden:\n%s", body)
	}
}

func TestModeGenStackobjClearsLivenessRoots(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	repoRoot := filepath.Clean(filepath.Join(wd, "..", ".."))
	td, err := os.MkdirTemp(repoRoot, ".tmp-stackobj-ir-*")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(td)
	if err := os.WriteFile(filepath.Join(td, "go.mod"), []byte("module example.com/stackobjir\n\ngo 1.23\n"), 0644); err != nil {
		t.Fatal(err)
	}
	src := `package main

import "runtime"

type HeapObj [8]int64

type StkObj struct {
	h *HeapObj
}

func gc() {
	runtime.GC()
	runtime.GC()
	runtime.GC()
}

func f() {
	var s StkObj
	s.h = new(HeapObj)
	runtime.SetFinalizer(s.h, func(h *HeapObj) {})
	g(&s)
	gc()
}

func g(s *StkObj) {
	gc()
	runtime.KeepAlive(s)
	gc()
}
`
	if err := os.WriteFile(filepath.Join(td, "main.go"), []byte(src), 0644); err != nil {
		t.Fatal(err)
	}

	if err := os.Chdir(td); err != nil {
		t.Fatal(err)
	}
	defer func() {
		if chdirErr := os.Chdir(wd); chdirErr != nil {
			t.Fatalf("restore cwd: %v", chdirErr)
		}
	}()
	pkgs, err := Do([]string{"."}, &Config{Mode: ModeGen})
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("len(pkgs) = %d, want 1", len(pkgs))
	}
	ir := pkgs[0].LPkg.String()
	fBody := functionBody(t, ir, "example.com/stackobjir.f")
	gBody := functionBody(t, ir, "example.com/stackobjir.g")
	if !strings.Contains(fBody, "@runtime.SetFinalizerTypeHidden(") {
		t.Fatalf("f should use SetFinalizerTypeHidden:\n%s", fBody)
	}
	if strings.Contains(fBody, `insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_example.com/stackobjir.HeapObj"`) {
		t.Fatalf("f should not materialize an object interface for SetFinalizer after typed lowering:\n%s", fBody)
	}
	callIdx := strings.Index(fBody, `@"example.com/stackobjir.g"(`)
	hiddenCallIdx := strings.Index(fBody, `@"example.com/stackobjir.g$hiddencall"(`)
	if hiddenCallIdx > callIdx {
		callIdx = hiddenCallIdx
	}
	if callIdx < 0 {
		t.Fatalf("missing g call in f:\n%s", fBody)
	}
	if clearIdx := strings.Index(fBody[callIdx:], `zeroinitializer`); clearIdx < 0 {
		t.Fatalf("f should clear the stack object after calling g:\n%s", fBody)
	}
	if !strings.Contains(gBody, "@runtime.KeepAlivePointer(") {
		t.Fatalf("g should lower KeepAlive to the pointer helper:\n%s", gBody)
	}
	if !strings.Contains(gBody, "@runtime.ShadowCopyPointee(") {
		t.Fatalf("g should shadow-copy the caller pointee before KeepAlive-only liveness checks:\n%s", gBody)
	}
	keepAliveIdx := strings.Index(gBody, "@runtime.KeepAlivePointer(")
	if keepAliveIdx < 0 {
		t.Fatalf("missing pointer KeepAlive helper in g:\n%s", gBody)
	}
	if !strings.Contains(gBody[keepAliveIdx:], `zeroinitializer`) {
		t.Fatalf("g should clear the shadow pointee after the last KeepAlive use:\n%s", gBody)
	}
}

func TestModeGenLoopValueClearSkipsLoopCarriedPointer(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	repoRoot := filepath.Clean(filepath.Join(wd, "..", ".."))
	td, err := os.MkdirTemp(repoRoot, ".tmp-loop-value-clear-*")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(td)
	if err := os.WriteFile(filepath.Join(td, "go.mod"), []byte("module example.com/loopvalueclear\n\ngo 1.23\n"), 0644); err != nil {
		t.Fatal(err)
	}
	src := `package main

import "unsafe"

type Method struct {
	A uintptr
	B uintptr
	C uintptr
	D uintptr
	E uintptr
}

type Uncommon struct {
	Mcount uint16
	Xcount uint16
	Moff   uint32
}

var sink unsafe.Pointer

func add(p unsafe.Pointer, x uintptr) unsafe.Pointer {
	return unsafe.Pointer(uintptr(p) + x)
}

func f(t *Uncommon) {
	if t.Mcount == 0 {
		return
	}
	methodsPtr := add(unsafe.Pointer(t), uintptr(t.Moff))
	for i := 0; i < int(t.Mcount); i++ {
		sink = add(methodsPtr, uintptr(i)*unsafe.Sizeof(Method{}))
	}
}
`
	if err := os.WriteFile(filepath.Join(td, "main.go"), []byte(src), 0644); err != nil {
		t.Fatal(err)
	}

	if err := os.Chdir(td); err != nil {
		t.Fatal(err)
	}
	defer func() {
		if chdirErr := os.Chdir(wd); chdirErr != nil {
			t.Fatalf("restore cwd: %v", chdirErr)
		}
	}()
	pkgs, err := Do([]string{"."}, &Config{Mode: ModeGen})
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("len(pkgs) = %d, want 1", len(pkgs))
	}
	body := functionBody(t, pkgs[0].LPkg.String(), "example.com/loopvalueclear.f")
	loopBody := body
	if start := strings.Index(body, "_llgo_4:"); start >= 0 {
		loopBody = body[start:]
		if end := strings.Index(loopBody, "_llgo_5:"); end >= 0 {
			loopBody = loopBody[:end]
		}
	}
	loopClear := regexp.MustCompile(`(?s)%\d+ = load ptr, ptr (%\d+), align 8\s+store ptr null, ptr (%\d+), align 8\s+%\d+ = call ptr @"example\.com/loopvalueclear\.add"\(ptr %\d+, i64 %\d+\)`)
	if m := loopClear.FindStringSubmatch(loopBody); m != nil && m[1] == m[2] {
		t.Fatalf("f should not clear a loop-carried pointer slot before the next add call:\n%s", body)
	}
}

func TestModeGenLoopParamValueClearSkipsLoopCarriedPointer(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	repoRoot := filepath.Clean(filepath.Join(wd, "..", ".."))
	td, err := os.MkdirTemp(repoRoot, ".tmp-loop-param-clear-*")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(td)
	if err := os.WriteFile(filepath.Join(td, "go.mod"), []byte("module example.com/loopparamclear\n\ngo 1.23\n"), 0644); err != nil {
		t.Fatal(err)
	}
	src := `package main

type Meta struct {
	BucketSize uint16
}

var sink bool

func bucketEvacuated(t *Meta, bucket uintptr) bool {
	return bucket < uintptr(t.BucketSize)
}

func f(t *Meta, stop uintptr) {
	cur := uintptr(0)
	for cur != stop && bucketEvacuated(t, cur) {
		cur++
	}
	sink = cur == stop
}
`
	if err := os.WriteFile(filepath.Join(td, "main.go"), []byte(src), 0644); err != nil {
		t.Fatal(err)
	}

	if err := os.Chdir(td); err != nil {
		t.Fatal(err)
	}
	defer func() {
		if chdirErr := os.Chdir(wd); chdirErr != nil {
			t.Fatalf("restore cwd: %v", chdirErr)
		}
	}()
	pkgs, err := Do([]string{"."}, &Config{Mode: ModeGen})
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("len(pkgs) = %d, want 1", len(pkgs))
	}
	body := functionBody(t, pkgs[0].LPkg.String(), "example.com/loopparamclear.f")
	loopClear := regexp.MustCompile(`(?s)load ptr, ptr (%\d+), align 8.*call i1 @"example\.com/loopparamclear\.bucketEvacuated"\(ptr %\d+, i64 %\d+\).*store ptr null, ptr (%\d+), align 8`)
	if m := loopClear.FindStringSubmatch(body); m != nil && m[1] == m[2] {
		t.Fatalf("f should not clear a loop-carried parameter slot inside the loop:\n%s", body)
	}
}

func TestModeGenByValueParamSpillClobbersPointerRegs(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	repoRoot := filepath.Clean(filepath.Join(wd, "..", ".."))
	td, err := os.MkdirTemp(repoRoot, ".tmp-byvalue-param-spill-*")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(td)
	if err := os.WriteFile(filepath.Join(td, "go.mod"), []byte("module example.com/byvalueparamspill\n\ngo 1.23\n"), 0644); err != nil {
		t.Fatal(err)
	}
	src := `package main

type H struct{}
type S struct{ h *H }

var null S
var sink *H

func use(*S) {}
func wait() {}

func f(s S, b bool) {
	var p *S
	if b {
		p = &s
	} else {
		p = &null
	}
	use(p)
	sink = p.h
	sink = nil
	wait()
}
`
	if err := os.WriteFile(filepath.Join(td, "main.go"), []byte(src), 0644); err != nil {
		t.Fatal(err)
	}

	if err := os.Chdir(td); err != nil {
		t.Fatal(err)
	}
	defer func() {
		if chdirErr := os.Chdir(wd); chdirErr != nil {
			t.Fatalf("restore cwd: %v", chdirErr)
		}
	}()
	pkgs, err := Do([]string{"."}, &Config{Mode: ModeGen})
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("len(pkgs) = %d, want 1", len(pkgs))
	}
	body := functionBody(t, pkgs[0].LPkg.String(), "example.com/byvalueparamspill.f")
	waitIdx := strings.Index(body, "@\"example.com/byvalueparamspill.wait\"(")
	if waitIdx < 0 {
		waitIdx = strings.Index(body, "@example.com/byvalueparamspill.wait(")
	}
	if waitIdx < 0 {
		t.Fatalf("missing wait call:\n%s", body)
	}
	window := body[:waitIdx]
	if !strings.Contains(window, "@runtime.LoadHiddenPointerKey(") {
		t.Fatalf("f should load p.h through the hidden pointer key helper:\n%s", body)
	}
	if !strings.Contains(window, "@runtime.StoreHiddenPointerRoot(") {
		t.Fatalf("f should store sink through the hidden pointer root helper:\n%s", body)
	}
	if !strings.Contains(window, "@runtime.ClobberPointerRegs(") {
		t.Fatalf("f should clobber pointer registers after spilling the by-value param:\n%s", body)
	}
}

func functionBody(t *testing.T, ir, name string) string {
	t.Helper()
	marker := `define void @"` + name + `"`
	start := strings.Index(ir, marker)
	if start < 0 {
		t.Fatalf("function %s not found in IR", name)
	}
	rest := ir[start:]
	if next := strings.Index(rest[len(marker):], "\ndefine "); next >= 0 {
		return rest[:len(marker)+next]
	}
	return rest
}

func TestTestOutputFileLogic(t *testing.T) {
	// Test output file path determination logic for test mode
	tests := []struct {
		name        string
		pkgName     string
		conf        *Config
		multiPkg    bool
		wantBase    string
		wantDir     string
		description string
	}{
		{
			name:        "compile only without -o",
			pkgName:     "mypackage.test",
			conf:        &Config{Mode: ModeTest, CompileOnly: true},
			multiPkg:    false,
			wantBase:    "mypackage.test",
			wantDir:     ".",
			description: "-c without -o: write pkg.test in current directory",
		},
		{
			name:        "with -o absolute file path",
			pkgName:     "mypackage",
			conf:        &Config{Mode: ModeTest, OutFile: "/tmp/mytest.test", AppExt: ".test"},
			multiPkg:    false,
			wantBase:    "mytest",
			wantDir:     "/tmp",
			description: "-o with absolute file path: use specified file",
		},
		{
			name:        "with -o relative file path",
			pkgName:     "mypackage",
			conf:        &Config{Mode: ModeTest, OutFile: "my.test", AppExt: ".test"},
			multiPkg:    false,
			wantBase:    "my",
			wantDir:     ".",
			description: "-o with relative file path: use specified file in current dir",
		},
		{
			name:        "with -o directory",
			pkgName:     "mypackage.test",
			conf:        &Config{Mode: ModeTest, OutFile: "/tmp/build/", AppExt: ".test"},
			multiPkg:    false,
			wantBase:    "mypackage.test",
			wantDir:     "/tmp/build/",
			description: "-o with directory: write pkg.test in that directory",
		},
		{
			name:        "default test mode",
			pkgName:     "mypackage",
			conf:        &Config{Mode: ModeTest, AppExt: ".test"},
			multiPkg:    false,
			wantBase:    "mypackage",
			wantDir:     "",
			description: "default test mode: use temp file",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			baseName, dir := determineBaseNameAndDir(tt.pkgName, tt.conf, tt.multiPkg)
			if baseName != tt.wantBase {
				t.Errorf("%s: got baseName=%q, want %q", tt.description, baseName, tt.wantBase)
			}
			if dir != tt.wantDir {
				t.Errorf("%s: got dir=%q, want %q", tt.description, dir, tt.wantDir)
			}
		})
	}
}

func TestTestMultiplePackagesWithOutputFile(t *testing.T) {
	// Test that -o flag errors with multiple test packages
	cfg := &Config{
		Mode:    ModeTest,
		OutFile: "/tmp/output",
	}

	// Create a scenario that would have multiple test packages
	// This should error during Do() validation
	args := []string{"../../cl/_testgo/runextest/..."}
	_, err := Do(args, cfg)
	if err == nil {
		t.Fatal("Expected error when using -o flag with multiple packages, got nil")
	}
	if !strings.Contains(err.Error(), "cannot use -o flag with multiple packages") {
		t.Errorf("Expected error about -o with multiple packages, got: %v", err)
	}
}

func TestCmpTestNonexistentPatternReturnsError(t *testing.T) {
	cfg := &Config{Mode: ModeCmpTest}
	_, err := Do([]string{"./this/path/does/not/exist/..."}, cfg)
	if err == nil {
		t.Fatal("expected error for nonexistent cmptest pattern")
	}
	if !strings.Contains(err.Error(), "cannot build SSA for packages") && !strings.Contains(err.Error(), "no such file or directory") {
		t.Fatalf("unexpected error: %v", err)
	}
}
