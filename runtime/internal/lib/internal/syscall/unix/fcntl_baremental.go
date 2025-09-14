//go:build baremetal

package unix

import (
	_ "unsafe"
)

func Fcntl(fd int, cmd int, arg int) (int, error) {
	return 0, nil
}

func fcntl(fd int, cmd int, arg int) (int, error) {
	return 0, nil
}
