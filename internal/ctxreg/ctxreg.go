package ctxreg

// Info describes closure context register info for a GOARCH.
type Info struct {
	Name       string // register name for inline asm
	Constraint string // LLVM inline asm constraint, e.g. "{r12}"
}

var table = map[string]Info{
	"amd64":   {Name: "mm0", Constraint: "{mm0}"},
	"arm64":   {Name: "x26", Constraint: "{x26}"},
	"386":     {Name: "mm0", Constraint: "{mm0}"},
	"riscv64": {Name: "x27", Constraint: "{x27}"},
	"riscv32": {Name: "x27", Constraint: "{x27}"},
}

// Get returns the register info for the given GOARCH.
func Get(goarch string) Info {
	return table[goarch]
}

// ReserveFlags returns clang flags to reserve the ctx register for a GOARCH.
func ReserveFlags(goarch string) []string {
	info := Get(goarch)
	if info.Name == "" {
		return nil
	}
	switch goarch {
	case "amd64":
		// Disable x87 to avoid aliasing mm0 with long double operations.
		return []string{"-mno-80387"}
	case "386":
		// Force SSE math and disable x87 to avoid aliasing mm0 with long double operations.
		return []string{"-mfpmath=sse", "-msse2", "-mno-80387"}
	default:
		// Use target-feature to reserve the register across backends.
		// Suppress warning about clobbering reserved registers in inline asm.
		return []string{
			"-Xclang", "-target-feature", "-Xclang", "+reserve-" + info.Name,
			"-Wno-inline-asm",
		}
	}
}
