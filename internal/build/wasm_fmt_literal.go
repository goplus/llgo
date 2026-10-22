package build

import (
	"go/constant"
	"strings"

	"github.com/xgo-dev/llgo/internal/optlevel"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

// Specialize before reachability analysis so an unused general formatter does
// not retain reflection and interface dispatch solely for a literal write.
func specializeWasmLiteralFormats(ctx *context) {
	if ctx.buildConf.Goarch != "wasm" || ctx.buildConf.OptLevel == optlevel.O0 || ctx.mode == ModeGen || ctx.frontendOptions.DebuggerFrames {
		return
	}
	specializeLiteralFormats(ctx.progSSA)
}

func specializeLiteralFormats(prog *ssa.Program) {
	for fn := range ssautil.AllFunctions(prog) {
		for _, block := range fn.Blocks {
			for _, instruction := range block.Instrs {
				call, ok := instruction.(ssa.CallInstruction)
				if !ok {
					continue
				}
				common := call.Common()
				callee := common.StaticCallee()
				if callee == nil || callee.Pkg == nil || callee.Pkg.Pkg.Path() != "fmt" {
					continue
				}
				formatIndex := 0
				switch callee.Name() {
				case "Printf", "Sprintf":
				case "Fprintf":
					formatIndex = 1
				default:
					continue
				}
				if len(common.Args) != formatIndex+2 {
					continue
				}
				args, ok := common.Args[formatIndex+1].(*ssa.Const)
				if !ok || !args.IsNil() {
					continue
				}
				format, ok := common.Args[formatIndex].(*ssa.Const)
				if !ok || format.Value == nil || format.Value.Kind() != constant.String {
					continue
				}
				text, ok := literalFormat(constant.StringVal(format.Value))
				if !ok {
					continue
				}
				helper := callee.Pkg.Func("llgo" + callee.Name() + "Literal")
				if helper == nil {
					continue
				}
				common.Value = helper
				common.Args = common.Args[:formatIndex+1]
				common.Args[formatIndex] = ssa.NewConst(constant.MakeString(text), format.Type())
			}
		}
	}
}

// Only %% is interpreted here. Verbs, indexes, width/precision and malformed
// formats continue through fmt, including its missing-argument diagnostics.
func literalFormat(format string) (string, bool) {
	for i := 0; i < len(format); i++ {
		if format[i] != '%' {
			continue
		}
		if i+1 == len(format) || format[i+1] != '%' {
			return "", false
		}
		i++
	}
	return strings.ReplaceAll(format, "%%", "%"), true
}
