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
}

// Get returns the register info for the given GOARCH.
func Get(goarch string) Info {
	return table[goarch]
}

// ReserveFlags returns clang flags to reserve the ctx register for a GOARCH.
// We prefer LLVM backend reservation to avoid frontend limitations across targets.
func ReserveFlags(goarch string) []string {
	info := Get(goarch)
	if info.Name == "" {
		return nil
	}
	switch goarch {
	case "amd64", "386":
		// Ensure floating point uses XMM so MMX regs remain free for ctx.
		return []string{"-msse2"}
	default:
		// Use target-feature to reserve the register across backends.
		return []string{"-Xclang", "-target-feature", "-Xclang", "+reserve-" + info.Name}
	}
}
