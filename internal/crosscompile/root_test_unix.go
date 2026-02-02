//go:build !windows

package crosscompile

import "os"

func isRoot() bool {
	return os.Geteuid() == 0
}
