//go:build baremetal

package runtime

func c_maxprocs() int32 { return 1 }
