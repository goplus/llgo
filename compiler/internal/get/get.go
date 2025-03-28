package get

import (
	"fmt"
	"os/exec"

	"github.com/goplus/llgo/compiler/internal/mod"
	"golang.org/x/mod/module"
)

func Do(name, version string) error {
	// NewModuleVersionPair will automatically convert clib@cversion to modulePath@mappedVersion
	module, err := mod.NewModuleVersionPair(name, version)
	if err != nil {
		return err
	}

	return fetchModule(module)
}

func fetchModule(mod module.Version) error {
	cmd := exec.Command("go", "get", mod.String())
	out, err := cmd.CombinedOutput()
	if err != nil {
		return fmt.Errorf("failed to get module: %s %s", out, err)
	}
	return nil
}
