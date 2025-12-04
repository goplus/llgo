//go:build !llgo

package debug_test

import (
	"os"
	"runtime/debug"
	"strings"
	"testing"
	"time"
)

func TestFreeOSMemory(t *testing.T) {
	debug.FreeOSMemory()
}

func TestPrintStack(t *testing.T) {
	debug.PrintStack()
}

func TestStack(t *testing.T) {
	stack := debug.Stack()
	if len(stack) == 0 {
		t.Error("Stack() returned empty slice")
	}
	stackStr := string(stack)
	if !strings.Contains(stackStr, "TestStack") {
		t.Errorf("Stack trace doesn't contain test function name: %s", stackStr)
	}
}

func TestSetGCPercent(t *testing.T) {
	old := debug.SetGCPercent(200)
	if old < -1 {
		t.Errorf("SetGCPercent returned invalid value: %d", old)
	}
	debug.SetGCPercent(old)
}

func TestSetMaxStack(t *testing.T) {
	old := debug.SetMaxStack(1024 * 1024 * 2)
	if old <= 0 {
		t.Errorf("SetMaxStack returned invalid value: %d", old)
	}
	debug.SetMaxStack(old)
}

func TestSetMaxThreads(t *testing.T) {
	old := debug.SetMaxThreads(10000)
	if old <= 0 {
		t.Errorf("SetMaxThreads returned invalid value: %d", old)
	}
	debug.SetMaxThreads(old)
}

func TestSetMemoryLimit(t *testing.T) {
	old := debug.SetMemoryLimit(1024 * 1024 * 1024)
	if old <= 0 {
		t.Errorf("SetMemoryLimit returned invalid value: %d", old)
	}
	debug.SetMemoryLimit(old)
}

func TestSetPanicOnFault(t *testing.T) {
	old := debug.SetPanicOnFault(false)
	debug.SetPanicOnFault(old)
}

func TestSetTraceback(t *testing.T) {
	debug.SetTraceback("all")
	debug.SetTraceback("system")
	debug.SetTraceback("crash")
	debug.SetTraceback("single")
}

func TestReadGCStats(t *testing.T) {
	var stats debug.GCStats
	debug.ReadGCStats(&stats)
	if stats.NumGC < 0 {
		t.Errorf("GCStats.NumGC is negative: %d", stats.NumGC)
	}
}

func TestGCStats(t *testing.T) {
	var stats debug.GCStats
	stats.NumGC = 10
	stats.PauseTotal = 1000000 * time.Nanosecond
	stats.Pause = []time.Duration{100, 200, 300}
	stats.PauseEnd = []time.Time{time.Now(), time.Now(), time.Now()}
	stats.PauseQuantiles = []time.Duration{50, 90, 99}
	stats.LastGC = time.Now()

	if stats.NumGC != 10 {
		t.Errorf("GCStats.NumGC = %d, want 10", stats.NumGC)
	}
}

func TestWriteHeapDump(t *testing.T) {
	f, err := os.CreateTemp("", "heapdump-*.bin")
	if err != nil {
		t.Fatalf("CreateTemp failed: %v", err)
	}
	defer os.Remove(f.Name())
	defer f.Close()

	debug.WriteHeapDump(f.Fd())

	info, err := f.Stat()
	if err != nil {
		t.Fatalf("Stat failed: %v", err)
	}
	if info.Size() == 0 {
		t.Error("WriteHeapDump produced empty file")
	}
}

func TestReadBuildInfo(t *testing.T) {
	info, ok := debug.ReadBuildInfo()
	if !ok {
		t.Skip("BuildInfo not available (expected in module mode)")
		return
	}
	if info == nil {
		t.Fatal("ReadBuildInfo returned nil info")
	}
	if info.Path == "" {
		t.Error("BuildInfo.Path is empty")
	}
	if info.Main.Path == "" && len(info.Deps) == 0 {
		t.Error("BuildInfo has no main module and no dependencies")
	}
}

func TestBuildInfo(t *testing.T) {
	info, ok := debug.ReadBuildInfo()
	if !ok {
		t.Skip("BuildInfo not available")
		return
	}

	goVersion := info.GoVersion
	if !strings.HasPrefix(goVersion, "go1.") {
		t.Errorf("BuildInfo.GoVersion = %q, want go1.x", goVersion)
	}

	path := info.Path
	if path == "" {
		t.Log("BuildInfo.Path is empty (may be expected)")
	}

	str := info.String()
	if str == "" {
		t.Error("BuildInfo.String() returned empty string")
	}
}

func TestParseBuildInfo(t *testing.T) {
	testData := `path	example.com/hello
mod	example.com/hello	(devel)	
dep	golang.org/x/text	v0.3.0	h1:abc123
`
	info, err := debug.ParseBuildInfo(testData)
	if err != nil {
		t.Fatalf("ParseBuildInfo failed: %v", err)
	}
	if info == nil {
		t.Fatal("ParseBuildInfo returned nil")
	}
	if info.Path != "example.com/hello" {
		t.Errorf("Path = %q, want example.com/hello", info.Path)
	}
	if len(info.Deps) != 1 {
		t.Errorf("len(Deps) = %d, want 1", len(info.Deps))
	}
	if len(info.Deps) > 0 && info.Deps[0].Path != "golang.org/x/text" {
		t.Errorf("Deps[0].Path = %q, want golang.org/x/text", info.Deps[0].Path)
	}
}

func TestBuildSetting(t *testing.T) {
	info, ok := debug.ReadBuildInfo()
	if !ok {
		t.Skip("BuildInfo not available")
		return
	}

	for _, setting := range info.Settings {
		if setting.Key == "" {
			t.Error("BuildSetting has empty Key")
		}
	}

	var setting debug.BuildSetting
	setting.Key = "test-key"
	setting.Value = "test-value"
	if setting.Key != "test-key" || setting.Value != "test-value" {
		t.Error("BuildSetting field assignment failed")
	}
}

func TestModule(t *testing.T) {
	info, ok := debug.ReadBuildInfo()
	if !ok {
		t.Skip("BuildInfo not available")
		return
	}

	checkModule := func(m *debug.Module, name string) {
		if m.Path == "" {
			t.Errorf("%s.Path is empty", name)
		}
	}

	checkModule(&info.Main, "Main")
	for i, dep := range info.Deps {
		if dep == nil {
			t.Errorf("Deps[%d] is nil", i)
			continue
		}
		checkModule(dep, "Deps")
	}
}

func TestSetCrashOutput(t *testing.T) {
	f, err := os.CreateTemp("", "crash-*.txt")
	if err != nil {
		t.Fatalf("CreateTemp failed: %v", err)
	}
	defer os.Remove(f.Name())
	defer f.Close()

	err = debug.SetCrashOutput(f, debug.CrashOptions{})
	if err != nil {
		t.Errorf("SetCrashOutput failed: %v", err)
	}

	err = debug.SetCrashOutput(nil, debug.CrashOptions{})
	if err != nil {
		t.Errorf("SetCrashOutput(nil) failed: %v", err)
	}
}

func TestCrashOptions(t *testing.T) {
	var opts debug.CrashOptions
	_ = opts
}
