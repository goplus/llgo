//go:build linux && !baremetal && !esp

package debug

const (
	LLGoPackage = "link: -lunwind"
)
