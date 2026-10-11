//go:build llgo && !baremetal && (nogc || wasm)

package tls

func enterSlotDestructor() bool { return false }

func leaveSlotDestructor(bool) {}
