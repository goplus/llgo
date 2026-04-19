package build

import (
	"path/filepath"
	"runtime"
	"testing"
)

func TestUseInMemoryNativeCodegenConf(t *testing.T) {
	t.Run("native host", func(t *testing.T) {
		conf := &Config{Goos: runtime.GOOS, Goarch: runtime.GOARCH}
		if !useInMemoryNativeCodegenConf(conf) {
			t.Fatal("expected native host build to use in-memory native codegen")
		}
	})

	t.Run("embedded target", func(t *testing.T) {
		conf := &Config{Goos: runtime.GOOS, Goarch: runtime.GOARCH, Target: "rp2040"}
		if useInMemoryNativeCodegenConf(conf) {
			t.Fatal("expected embedded target build to keep using clang")
		}
	})

	t.Run("cross compile host mismatch", func(t *testing.T) {
		goos := runtime.GOOS
		goarch := runtime.GOARCH
		if goos == "linux" {
			goos = "darwin"
		} else {
			goos = "linux"
		}
		if goarch == "amd64" {
			goarch = "arm64"
		} else {
			goarch = "amd64"
		}
		conf := &Config{Goos: goos, Goarch: goarch}
		if useInMemoryNativeCodegenConf(conf) {
			t.Fatal("expected host mismatch to keep using clang")
		}
	})

	t.Run("wasm", func(t *testing.T) {
		conf := &Config{Goos: "wasip1", Goarch: "wasm"}
		if useInMemoryNativeCodegenConf(conf) {
			t.Fatal("expected wasm target to keep using clang")
		}
	})
}

func TestExportObjectInMemoryDoesNotMutateModule(t *testing.T) {
	conf := &Config{
		Mode:   ModeGen,
		Goos:   runtime.GOOS,
		Goarch: runtime.GOARCH,
	}
	pkgs, err := Do([]string{"../../cl/_testlibgo/atomic"}, conf)
	if err != nil {
		t.Fatalf("Do failed: %v", err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("len(pkgs) = %d, want 1", len(pkgs))
	}

	pkg := pkgs[0]
	before := pkg.LPkg.String()

	ctx := &context{
		prog: pkg.LPkg.Prog,
		buildConf: &Config{
			Goos:   runtime.GOOS,
			Goarch: runtime.GOARCH,
		},
	}
	outFile := filepath.Join(t.TempDir(), "atomic.o")
	objFile, err := exportObjectInMemory(ctx, pkg.PkgPath, outFile, pkg.LPkg)
	if err != nil {
		t.Fatalf("exportObjectInMemory failed: %v", err)
	}
	if objFile == "" {
		t.Fatal("exportObjectInMemory returned empty object file path")
	}

	after := pkg.LPkg.String()
	if before != after {
		t.Fatalf("module was mutated by EmitToMemoryBuffer:\nBEFORE:\n%s\nAFTER:\n%s", before, after)
	}
}
