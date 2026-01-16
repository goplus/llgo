package ctxreg

// Info describes closure context register info for a GOARCH.
type Info struct {
	Name       string // register name for inline asm
	Constraint string // LLVM inline asm constraint, e.g. "{r12}"
}

var table = map[string]Info{
	"amd64":   {Name: "r12", Constraint: "{r12}"},
	"arm64":   {Name: "x26", Constraint: "{x26}"},
	"386":     {Name: "esi", Constraint: "{esi}"},
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
	return []string{"-mllvm", "--reserve-regs-for-regalloc=" + info.Name}
}
