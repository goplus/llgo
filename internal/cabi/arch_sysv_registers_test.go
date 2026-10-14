package cabi

import (
	"testing"

	"github.com/xgo-dev/llgo/ssa"
	"github.com/xgo-dev/llvm"
)

func TestSysVAggregateRegisterExhaustion(t *testing.T) {
	llvm.InitializeAllTargets()
	llvm.InitializeAllTargetMCs()
	llvm.InitializeAllTargetInfos()
	for _, goos := range []string{"linux", "darwin"} {
		t.Run(goos, func(t *testing.T) {
			prog := ssa.NewProgram(&ssa.Target{GOOS: goos, GOARCH: "amd64"})
			defer prog.Dispose()
			ctx := llvm.NewContext()
			defer ctx.Dispose()
			tr := NewTransformer(prog, "x86_64-unknown-"+goos, "", true)
			integer, floating := ctx.Int64Type(), ctx.DoubleType()
			pair := ctx.StructType([]llvm.Type{ctx.FloatType(), ctx.FloatType()}, false)
			ints := ctx.StructType([]llvm.Type{integer, integer}, false)
			smallInts := ctx.StructType([]llvm.Type{ctx.Int32Type(), ctx.Int32Type()}, false)
			mixed := ctx.StructType([]llvm.Type{floating, integer}, false)
			large := ctx.StructType([]llvm.Type{integer, integer, integer}, false)
			repeated := func(typ llvm.Type, count int) []llvm.Type {
				types := make([]llvm.Type, count)
				for i := range types {
					types[i] = typ
				}
				return types
			}
			cases := []struct {
				name      string
				result    llvm.Type
				params    []llvm.Type
				index     int
				memory    bool
				following int
			}{
				{"floating_full", floating, append(repeated(floating, 8), pair, floating), 8, true, 9},
				{"floating_last", floating, append(repeated(floating, 7), pair, floating), 7, false, 8},
				{"integer_partial", integer, append(repeated(integer, 5), ints, integer), 5, true, 6},
				{"integer_fits", integer, append(repeated(integer, 4), ints, integer), 4, false, 5},
				{"mixed_rolls_back_sse", floating, append(repeated(integer, 6), mixed, floating), 6, true, 7},
				{"mixed_rolls_back_integer", integer, append(repeated(floating, 8), mixed, integer), 8, true, 9},
				{"hidden_sret_decides_last_register", large, append(repeated(integer, 5), smallInts, integer), 5, true, 6},
				{"without_sret_last_register_fits", integer, append(repeated(integer, 5), smallInts, integer), 5, false, 6},
				{"rollback_keeps_sse_for_next_pair", floating, append(append(repeated(floating, 7), repeated(integer, 6)...), mixed, pair), 13, true, 14},
				{"rollback_keeps_integer_for_next_pair", integer, append(append(repeated(floating, 8), repeated(integer, 4)...), mixed, ints), 12, true, 13},
				{"memory_does_not_consume_register", integer, []llvm.Type{large, integer, integer, integer, integer, ints}, 5, false, -1},
			}
			for _, tc := range cases {
				t.Run(tc.name, func(t *testing.T) {
					info := tr.GetFuncInfo(ctx, llvm.FunctionType(tc.result, tc.params, false))
					got := info.Params[tc.index]
					if (got.Kind == AttrPointer) != tc.memory {
						t.Fatalf("aggregate kind %v, memory %v", got.Kind, tc.memory)
					}
					if tc.memory && got.ByValAlign != 8 {
						t.Fatalf("byval alignment %d", got.ByValAlign)
					}
					_, attrs, _ := tr.transformFuncType(ctx, &info)
					if tc.following >= 0 && info.Params[tc.following].Kind == AttrPointer {
						t.Fatal("scalar following aggregate was lowered as byval")
					}
					if tc.memory {
						found := false
						for _, list := range attrs {
							for _, attr := range list {
								if attr.GetEnumKind() == int(llvm.AttributeKindID("byval")) {
									found = true
								}
							}
						}
						if !found {
							t.Fatal("memory aggregate lost byval attribute")
						}
					}
				})
			}
		})
	}
}

func TestSysVHiddenContextDoesNotConsumeArgumentRegisters(t *testing.T) {
	llvm.InitializeAllTargets()
	llvm.InitializeAllTargetMCs()
	llvm.InitializeAllTargetInfos()
	for _, goos := range []string{"linux", "darwin"} {
		t.Run(goos, func(t *testing.T) {
			prog := ssa.NewProgram(&ssa.Target{GOOS: goos, GOARCH: "amd64"})
			defer prog.Dispose()
			ctx := llvm.NewContext()
			defer ctx.Dispose()
			mod := ctx.NewModule("context-registers")
			defer mod.Dispose()
			tr := NewTransformer(prog, "x86_64-unknown-"+goos, "", true)
			word := ctx.Int64Type()
			pair := ctx.StructType([]llvm.Type{word, word}, false)
			params := []llvm.Type{llvm.PointerType(ctx.Int8Type(), 0), word, word, word, word, pair}
			fn := llvm.AddFunction(mod, "with_context", llvm.FunctionType(word, params, false))
			fn.AddAttributeAtIndex(1, ctx.CreateEnumAttribute(llvm.AttributeKindID("nest"), 0))
			if info := tr.GetFuncInfo(ctx, fn.GlobalValueType()); info.Params[5].Kind != AttrPointer {
				t.Fatal("ordinary leading pointer should consume the deciding register")
			}
			if info := tr.getFuncInfo(ctx, fn.GlobalValueType(), fn.GetEnumAttributeAtIndex); info.Params[5].Kind == AttrPointer {
				t.Fatal("hidden context consumed an ordinary argument register")
			}
			caller := llvm.AddFunction(mod, "caller", llvm.FunctionType(word, nil, false))
			builder := ctx.NewBuilder()
			defer builder.Dispose()
			builder.SetInsertPointAtEnd(ctx.AddBasicBlock(caller, "entry"))
			args := make([]llvm.Value, len(params))
			for index, typ := range params {
				args[index] = llvm.ConstNull(typ)
			}
			call := builder.CreateCall(fn.GlobalValueType(), fn, args, "")
			call.AddCallSiteAttribute(1, ctx.CreateEnumAttribute(llvm.AttributeKindID("nest"), 0))
			builder.CreateRet(call)
			if info := tr.getFuncInfo(ctx, call.CalledFunctionType(), call.GetCallSiteEnumAttribute); info.Params[5].Kind == AttrPointer {
				t.Fatal("hidden call context consumed an ordinary argument register")
			}
			tr.TransformModule("context-registers", mod)
			if got := mod.NamedFunction("with_context").GlobalValueType().ParamTypes(); len(got) != 7 || got[5] != word || got[6] != word {
				t.Fatalf("hidden entry pair did not remain in two registers: %v", got)
			}
			if err := llvm.VerifyModule(mod, llvm.ReturnStatusAction); err != nil {
				t.Fatal(err, mod.String())
			}
		})
	}
}
