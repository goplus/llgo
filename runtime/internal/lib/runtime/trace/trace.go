//go:build !llgo || !darwin

package trace

func userTaskEnd(id uint64) {
	panic("todo: runtime/trace.userTaskEnd")
}
