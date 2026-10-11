package ssa

import (
	"fmt"
	"go/token"
	"go/types"
	"strings"
	"testing"

	"github.com/xgo-dev/llvm"
)

func TestNativeIntegerFuncvalAdapters(t *testing.T) {
	for _, test := range nativeIntegerABITests {
		for _, source := range []string{"declaration", "pointer", "named-Go-function", "nil", "Go-declaration"} {
			t.Run(test.target.GOOS+"/"+test.target.GOARCH+"/"+test.target.LLVMTarget+"/"+source, func(t *testing.T) {
				prog := NewProgram(&test.target)
				defer prog.Dispose()
				pkg := prog.NewPackage("p", "example.com/p")
				rawPkg := types.NewPackage(pkg.Path(), "p")
				params := types.NewTuple(
					types.NewVar(token.NoPos, nil, "signed", types.Typ[types.Int8]),
					types.NewVar(token.NoPos, nil, "unsigned8", types.Typ[types.Uint8]),
					types.NewVar(token.NoPos, nil, "signed16", types.Typ[types.Int16]),
					types.NewVar(token.NoPos, nil, "unsigned", types.Typ[types.Uint16]),
					types.NewVar(token.NoPos, nil, "flag", types.Typ[types.Bool]),
					types.NewVar(token.NoPos, nil, "signed32", types.Typ[types.Int32]),
					types.NewVar(token.NoPos, nil, "unsigned32", types.Typ[types.Uint32]),
				)
				resultType := types.Typ[types.Int32]
				if test.target.GOARCH == "wasm" {
					// Hosted Wasm widens native uintptr results to the Go word size.
					resultType = types.Typ[types.Uintptr]
				}
				results := types.NewTuple(types.NewVar(token.NoPos, nil, "", resultType))
				sig := types.NewSignatureType(nil, nil, nil, params, results, false)
				pointer := types.NewNamed(types.NewTypeName(token.NoPos, rawPkg, "Native", nil), sig, nil)
				prog.SetTypeBackground(pkg.Path()+".Native", InC)
				ownerSig := types.NewSignatureType(nil, nil, nil, types.NewTuple(
					types.NewVar(token.NoPos, nil, "fn", pointer),
				), nil, false)
				owner := pkg.NewFunc(pkg.Path()+".owner", ownerSig, InGo)
				body := owner.MakeBody(1)
				dst := prog.Type(sig, InGo)
				value := owner.Param(0)
				switch source {
				case "declaration":
					value = pkg.NewFunc("native", sig, InC).Expr
				case "named-Go-function":
					named := types.NewNamed(types.NewTypeName(token.NoPos, rawPkg, "GoFunction", nil), sig, nil)
					dst = prog.Type(named, InGo)
				case "nil":
					value = prog.Nil(prog.Type(pointer, InGo))
				case "Go-declaration":
					value = pkg.NewFunc(pkg.Path()+".goFunction", sig, InGo).Expr
				}
				var converted Expr
				if source == "declaration" || source == "pointer" {
					// Assignment/argument lowering and explicit conversion use
					// separate entry points; both must adapt the C boundary.
					converted = checkExpr(value, dst.raw.Type, body)
				} else {
					converted = body.ChangeType(dst, value)
				}
				if converted.kind != vkClosure || converted.impl.Type() != dst.ll {
					t.Fatalf("conversion did not produce a Go function value: %s", converted.impl)
				}
				if source == "nil" && (!body.Field(converted, 0).impl.IsNull() || !body.Field(converted, 1).impl.IsNull()) {
					t.Fatalf("nil native pointer produced non-nil Go function: %s", converted.impl)
				}
				body.Return()
				goSig := dst.raw.Type.Underlying().(*types.Struct).Field(0).Type().(*types.Signature)
				wrapper := pkg.FuncOf(pkg.Path() + ".__llgo_c_funcval$" + prog.abi.FuncName(goSig))
				wantAdapter := test.attrs != nil && source != "Go-declaration"
				if (wrapper != nil) != wantAdapter {
					t.Fatalf("native adapter present = %v, want %v:\n%s", wrapper != nil, wantAdapter, pkg.String())
				}
				if wantAdapter {
					if !wrapper.NeedsEnv() || wrapper.impl.Linkage() != llvm.InternalLinkage {
						t.Fatalf("adapter must be an internal Go closure entry:\n%s", wrapper.impl)
					}
					if source != "nil" && !prog.usesWideGoStorage() && converted.impl.Operand(1) != value.impl {
						t.Fatalf("adapter environment did not retain native pointer: %s", converted.impl)
					}
					var nativeCall llvm.Value
					for block := wrapper.impl.FirstBasicBlock(); !block.IsNil(); block = llvm.NextBasicBlock(block) {
						for instruction := block.FirstInstruction(); !instruction.IsNil(); instruction = llvm.NextInstruction(instruction) {
							if call := instruction.IsACallInst(); !call.IsNil() && call.CalledValue() == wrapper.Env().impl {
								nativeCall = call
							}
						}
					}
					if nativeCall.IsNil() {
						t.Fatalf("adapter does not call its native pointer:\n%s", wrapper.impl)
					}
					checkNarrowAttrs(t, nativeCall, true, test.attrs)
					checkNarrowAttrs(t, wrapper.impl, false, make([]string, len(test.attrs)+1))
					if test.target.WasmProfile == "w32" && !strings.Contains(wrapper.impl.String(), "zext i32") {
						t.Fatalf("adapter did not widen the native uintptr result:\n%s", wrapper.impl)
					}
					if strings.Contains(pkg.String(), "runtime.Alloc") {
						t.Fatalf("native function conversion unexpectedly allocated:\n%s", pkg.String())
					}
				}
				if err := llvm.VerifyModule(pkg.Module(), llvm.ReturnStatusAction); err != nil {
					t.Fatalf("invalid native function conversion: %v\n%s", err, pkg.String())
				}
			})
		}
	}
}

func TestNativeIntegerFuncvalRejectsVariadicForwarding(t *testing.T) {
	prog := NewProgram(&Target{GOOS: "darwin", GOARCH: "arm64"})
	defer prog.Dispose()
	pkg := prog.NewPackage("p", "example.com/p")
	sig := types.NewSignatureType(nil, nil, nil, types.NewTuple(
		types.NewVar(token.NoPos, nil, "fixed", types.Typ[types.Int8]), VArg(),
	), nil, true)
	native := pkg.NewFunc("native", sig, InC)
	body := pkg.NewFunc(pkg.Path()+".owner", NoArgsNoRet, InGo).MakeBody(1)
	defer func() {
		got := recover()
		if got == nil || !strings.Contains(fmt.Sprint(got), "C variadic functions require a native function pointer") {
			t.Fatalf("variadic conversion panic = %v, want native function pointer diagnostic", got)
		}
	}()
	body.ChangeType(prog.Type(sig, InGo), native.Expr)
}
