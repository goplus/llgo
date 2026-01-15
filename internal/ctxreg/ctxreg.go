package ctxreg

// Info describes closure context register info for a GOARCH.
type Info struct {
	Name       string // register name for inline asm
	Constraint string // LLVM inline asm constraint, e.g. "{r12}"
	FixedFlag  string // clang -ffixed-* flag to reserve the register
}

var table = map[string]Info{
	"amd64":   {Name: "r12", Constraint: "{r12}", FixedFlag: "-ffixed-r12"},
	"arm64":   {Name: "x26", Constraint: "{x26}", FixedFlag: "-ffixed-x26"},
	"386":     {Name: "esi", Constraint: "{esi}", FixedFlag: "-ffixed-esi"},
	"riscv64": {Name: "x27", Constraint: "{x27}", FixedFlag: "-ffixed-x27"},
}

// Get returns the register info for the given GOARCH.
func Get(goarch string) Info {
	return table[goarch]
}
