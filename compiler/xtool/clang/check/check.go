package check

import (
	"errors"
	"os/exec"
	"runtime"
	"strings"
)

func CheckLinkArgs(cmdArgs []string) error {
	cmd := exec.Command("clang")
	nul := "/dev/null"
	if runtime.GOOS == "windows" {
		nul = "NUL"
	}
	cmd.Args = append(cmd.Args, cmdArgs...)
	cmd.Args = append(cmd.Args, "-x", "c", "-o", nul, "-")
	src := "int main() {return 0;}"
	srcIn := strings.NewReader(src)
	cmd.Stdin = srcIn
	if out, err := cmd.CombinedOutput(); err != nil {
		return errors.New(string(out))
	}
	return nil
}
