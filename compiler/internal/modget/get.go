package modget

import (
	"fmt"
	"os"
	"os/exec"

	"github.com/goplus/llgo/compiler/internal/mod"
	"golang.org/x/mod/module"
)

func Do(name, version string, flags []string) error {
	// NewModuleVersionPair will automatically convert clib@cversion to modulePath@mappedVersion
	module, err := mod.NewModuleVersionPair(name, version)
	if err != nil {
		return err
	}

	return fetchModule(module, flags)
}

func fetchModule(mod module.Version, flags []string) error {
	args := []string{"get"}
	args = append(args, flags...)
	args = append(args, mod.String())

	cmd := exec.Command("go", args...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	err := cmd.Run()
	if err != nil {
		return fmt.Errorf("failed to get module: %s", err)
	}
	return nil
}
