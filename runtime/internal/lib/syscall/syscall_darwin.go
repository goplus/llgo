//go:build !llgo || !darwin

package syscall

func Sysctl(key string) (string, error) {
	panic("todo: syscall.Sysctl")
}
