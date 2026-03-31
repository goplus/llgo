package build

import (
	"testing"

	"github.com/goplus/llgo/internal/optlevel"
)

func TestEffectiveOptLevelDefaults(t *testing.T) {
	if got := effectiveOptLevel(&Config{}); got != optlevel.O2 {
		t.Fatalf("host default opt level = %v, want %v", got, optlevel.O2)
	}
	if got := effectiveOptLevel(&Config{Target: "rp2040"}); got != optlevel.Oz {
		t.Fatalf("embedded default opt level = %v, want %v", got, optlevel.Oz)
	}
}

func TestEffectiveOptLevelOverride(t *testing.T) {
	if got := effectiveOptLevel(&Config{OptLevel: optlevel.O3}); got != optlevel.O3 {
		t.Fatalf("explicit opt level = %v, want %v", got, optlevel.O3)
	}
	if got := effectiveOptLevel(&Config{Target: "esp32", OptLevel: optlevel.Os}); got != optlevel.Os {
		t.Fatalf("explicit embedded opt level = %v, want %v", got, optlevel.Os)
	}
}

func TestEffectiveOptLevelIgnoresLegacyEnv(t *testing.T) {
	t.Setenv(llgoOptimize, "off")
	if got := effectiveOptLevel(&Config{}); got != optlevel.O2 {
		t.Fatalf("LLGO_OPTIMIZE=off opt level = %v, want %v", got, optlevel.O2)
	}

	t.Setenv(llgoOptimize, "on")
	if got := effectiveOptLevel(&Config{Target: "rp2040"}); got != optlevel.Oz {
		t.Fatalf("LLGO_OPTIMIZE=on embedded opt level = %v, want %v", got, optlevel.Oz)
	}

	t.Setenv(llgoOptimize, "O1")
	if got := effectiveOptLevel(&Config{}); got != optlevel.O2 {
		t.Fatalf("LLGO_OPTIMIZE=O1 opt level = %v, want %v", got, optlevel.O2)
	}
}

func TestIsOptimizeEnabledLegacyEnv(t *testing.T) {
	t.Setenv(llgoOptimize, "off")
	if IsOptimizeEnabled() {
		t.Fatal("LLGO_OPTIMIZE=off should disable optimization")
	}

	t.Setenv(llgoOptimize, "on")
	if !IsOptimizeEnabled() {
		t.Fatal("LLGO_OPTIMIZE=on should enable optimization")
	}
}
