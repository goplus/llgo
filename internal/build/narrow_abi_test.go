package build

import (
	"testing"
	"time"
)

func TestNarrowCABI(t *testing.T) {
	conf := NewDefaultConf(ModeTest)
	conf.RunArgs = []string{
		"-test.run=^(TestNarrowC|TestLinknameNarrowC)",
		"-test.v", "-test.count=1", "-test.timeout=90s",
	}
	conf.RunnerTimeout = 2 * time.Minute
	if _, err := Do([]string{"../../test/cgo", "../../test/llgoext"}, conf); err != nil {
		t.Fatal(err)
	}
}
