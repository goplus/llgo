package env

import (
	"os"
	"os/exec"
	"regexp"
	"runtime"
	"strings"
)

func ExpandEnv(s string) string {
	return expandEnvWithCmd(s)
}

func expandEnvWithCmd(s string) string {
	re := regexp.MustCompile(`\$\(([^)]+)\)`)
	expanded := re.ReplaceAllStringFunc(s, func(m string) string {
		cmd := re.FindStringSubmatch(m)[1]
		var out []byte
		var err error
		if runtime.GOOS == "windows" {
			out, err = exec.Command("cmd", "/C", cmd).Output()
		} else {
			out, err = exec.Command("sh", "-c", cmd).Output()
		}
		if err != nil {
			return ""
		}
		return strings.TrimSpace(string(out))
	})
	return os.Expand(expanded, os.Getenv)
}
