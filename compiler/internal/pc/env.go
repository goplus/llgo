package pc

import (
	"fmt"
	"os"
	"os/exec"
)

func AppendPCPath(path string) string {
	if env, ok := os.LookupEnv("PKG_CONFIG_PATH"); ok {
		return path + ":" + env
	}
	return path
}

func SetPath(cmd *exec.Cmd, path string) {
	pcPath := fmt.Sprintf("PKG_CONFIG_PATH=%s", AppendPCPath(path))
	cmd.Env = append(os.Environ(), pcPath)
}
