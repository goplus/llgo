//go:build !windows

package compile

import "os"

func isRoot() bool {
	return os.Geteuid() == 0
}
