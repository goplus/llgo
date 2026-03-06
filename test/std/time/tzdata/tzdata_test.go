package tzdata_test

import (
	"testing"
	"time"

	_ "time/tzdata"
)

func TestEmbeddedTZDataAvailable(t *testing.T) {
	// Force the time package not to use an external zoneinfo directory.
	t.Setenv("ZONEINFO", "/__llgo_nonexistent_zoneinfo__")

	loc, err := time.LoadLocation("Asia/Shanghai")
	if err != nil {
		t.Fatalf("LoadLocation failed with embedded tzdata: %v", err)
	}
	if got := loc.String(); got != "Asia/Shanghai" {
		t.Fatalf("location name = %q, want %q", got, "Asia/Shanghai")
	}
}
