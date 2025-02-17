package build

import (
	"fmt"
	"os"
	"testing"

	"github.com/goplus/llgo/compiler/internal/mockable"
)

func mockRun(args []string, cfg *Config) {
	mockable.EnableMock()
	defer func() {
		if r := recover(); r != nil {
			if r != "exit" {
				panic(r)
			} else {
				exitCode := mockable.ExitCode()
				if (exitCode != 0) != false {
					panic(fmt.Errorf("got exit code %d", exitCode))
				}
			}
		}
	}()
	file, _ := os.CreateTemp("", "llgo-*")
	cfg.OutFile = file.Name()
	file.Close()
	defer os.Remove(cfg.OutFile)
	Do(args, cfg)
}

func TestRun(t *testing.T) {
	mockRun([]string{"../../cl/_testgo/print"}, &Config{Mode: ModeRun})
}

func TestTest(t *testing.T) {
	mockRun([]string{"../../../_demo/runtest"}, &Config{Mode: ModeTest})
}

func TestCmpTest(t *testing.T) {
	mockRun([]string{"../../../_demo/runtest"}, &Config{Mode: ModeCmpTest})
}
