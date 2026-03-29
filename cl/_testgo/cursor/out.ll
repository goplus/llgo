; ModuleID = 'github.com/goplus/llgo/cl/_testgo/cursor'
source_filename = "github.com/goplus/llgo/cl/_testgo/cursor"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" = type { ptr, i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/cursor.Inspector" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/cursor.event" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i32, i32 }

@"github.com/goplus/llgo/cl/_testgo/cursor.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [36 x i8] c"iterator call did not preserve panic", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@2 = private unnamed_addr constant [43 x i8] c"yield function called after range loop exit", align 1
@"*_llgo_go/ast.Ident" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [5 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2080842285, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr null }, ptr @"_llgo_go/ast.Ident" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 5, i16 4, i32 24 }, [5 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Ident).End", ptr @"go/ast.(*Ident).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"go/ast.(*Ident).IsExported", ptr @"go/ast.(*Ident).IsExported" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Ident).Pos", ptr @"go/ast.(*Ident).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"go/ast.(*Ident).String", ptr @"go/ast.(*Ident).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*Ident).exprNode", ptr @"go/ast.(*Ident).exprNode" }] }, align 8
@3 = private unnamed_addr constant [9 x i8] c"ast.Ident", align 1
@"_llgo_go/ast.Ident" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 223651489, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.Ident" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr @"*_llgo_go/ast.Ident" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$ERhAAXQWPbqC1-_yiLvvpFhGaPd1HWshKDb-_H5Nm3M$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@4 = private unnamed_addr constant [7 x i8] c"NamePos", align 1
@"_llgo_go/token.Pos" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1285526538, i8 13, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 }, ptr @"*_llgo_go/token.Pos" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 8 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"go/token.(*Pos).IsValid", ptr @"go/token.Pos.IsValid" }] }, align 8
@5 = private unnamed_addr constant [9 x i8] c"token.Pos", align 1
@"*_llgo_go/token.Pos" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1298747093, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 }, ptr null }, ptr @"_llgo_go/token.Pos" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 8 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"go/token.(*Pos).IsValid", ptr @"go/token.(*Pos).IsValid" }] }, align 8
@6 = private unnamed_addr constant [8 x i8] c"go/token", align 1
@7 = private unnamed_addr constant [7 x i8] c"IsValid", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"*_llgo_bool" }, align 8
@9 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@10 = private unnamed_addr constant [4 x i8] c"Name", align 1
@11 = private unnamed_addr constant [3 x i8] c"Obj", align 1
@"*_llgo_go/ast.Object" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 398625873, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 10 }, ptr null }, ptr @"_llgo_go/ast.Object" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Object).Pos", ptr @"go/ast.(*Object).Pos" }] }, align 8
@12 = private unnamed_addr constant [10 x i8] c"ast.Object", align 1
@"_llgo_go/ast.Object" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 72, i32 -345899940, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.Object" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 10 }, ptr @"*_llgo_go/ast.Object" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$PpBVodhNoYSyuTvVSvUg9Ezb8mKNNTWg_RwGYFq0KPA$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@13 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_go/ast.ObjKind" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 118841177, i8 13, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr @"*_llgo_go/ast.ObjKind" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"go/ast.(*ObjKind).String", ptr @"go/ast.ObjKind.String" }] }, align 8
@14 = private unnamed_addr constant [11 x i8] c"ast.ObjKind", align 1
@"*_llgo_go/ast.ObjKind" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1144452934, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr null }, ptr @"_llgo_go/ast.ObjKind" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"go/ast.(*ObjKind).String", ptr @"go/ast.(*ObjKind).String" }] }, align 8
@15 = private unnamed_addr constant [6 x i8] c"go/ast", align 1
@16 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@17 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@18 = private unnamed_addr constant [4 x i8] c"Decl", align 1
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@19 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@20 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/cursor", align 1
@21 = private unnamed_addr constant [4 x i8] c"Data", align 1
@22 = private unnamed_addr constant [4 x i8] c"Type", align 1
@"_llgo_struct$PpBVodhNoYSyuTvVSvUg9Ezb8mKNNTWg_RwGYFq0KPA$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 4 }, ptr @"_llgo_go/ast.ObjKind", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @_llgo_string, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr @_llgo_any, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr @_llgo_any, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @_llgo_any, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@23 = private unnamed_addr constant [3 x i8] c"Pos", align 1
@"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -737142225, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 16 }, ptr @"*_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU$out", i64 1, i64 1 } }, align 8
@24 = private unnamed_addr constant [16 x i8] c"func() token.Pos", align 1
@"*_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1791594852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 16 }, ptr null }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, align 8
@"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_go/token.Pos"], align 8
@"_llgo_struct$ERhAAXQWPbqC1-_yiLvvpFhGaPd1HWshKDb-_H5Nm3M$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @_llgo_string, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 3 }, ptr @"*_llgo_go/ast.Object", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@25 = private unnamed_addr constant [3 x i8] c"End", align 1
@26 = private unnamed_addr constant [10 x i8] c"IsExported", align 1
@27 = private unnamed_addr constant [8 x i8] c"exprNode", align 1
@28 = private unnamed_addr constant [15 x i8] c"go/ast.exprNode", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@29 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"*_llgo_go/ast.ArrayType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 244087908, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 13 }, ptr null }, ptr @"_llgo_go/ast.ArrayType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ArrayType).End", ptr @"go/ast.(*ArrayType).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ArrayType).Pos", ptr @"go/ast.(*ArrayType).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*ArrayType).exprNode", ptr @"go/ast.(*ArrayType).exprNode" }] }, align 8
@30 = private unnamed_addr constant [13 x i8] c"ast.ArrayType", align 1
@"_llgo_go/ast.ArrayType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 11742203, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.ArrayType" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 13 }, ptr @"*_llgo_go/ast.ArrayType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$OFm4HePnTgUisOj7ADpESXwiDR--b7m5xa0AkQzVRu8$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@31 = private unnamed_addr constant [6 x i8] c"Lbrack", align 1
@32 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_go/ast.Expr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 2005595146, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 8 }, ptr @"*_llgo_go/ast.Expr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"go/ast.iface$Sgj3BULO-Q00_yQXYnGpuhlgemISeswqTKF4CsM8fj4$imethods", i64 3, i64 3 } }, align 8
@33 = private unnamed_addr constant [8 x i8] c"ast.Expr", align 1
@"*_llgo_go/ast.Expr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1862740788, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 8 }, ptr null }, ptr @"_llgo_go/ast.Expr" }, align 8
@"go/ast.iface$Sgj3BULO-Q00_yQXYnGpuhlgemISeswqTKF4CsM8fj4$imethods" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@34 = private unnamed_addr constant [3 x i8] c"Elt", align 1
@"_llgo_struct$OFm4HePnTgUisOj7ADpESXwiDR--b7m5xa0AkQzVRu8$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.AssignStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2086568871, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 14 }, ptr null }, ptr @"_llgo_go/ast.AssignStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*AssignStmt).End", ptr @"go/ast.(*AssignStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*AssignStmt).Pos", ptr @"go/ast.(*AssignStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*AssignStmt).stmtNode", ptr @"go/ast.(*AssignStmt).stmtNode" }] }, align 8
@35 = private unnamed_addr constant [14 x i8] c"ast.AssignStmt", align 1
@"_llgo_go/ast.AssignStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 -760628319, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 14 }, ptr @"*_llgo_go/ast.AssignStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$wsyF6kiIuFuywsMdyRhgzCeAvEWs50Iqjsb1NG8kod0$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@36 = private unnamed_addr constant [3 x i8] c"Lhs", align 1
@"[]_llgo_go/ast.Expr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1155511237, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 10 }, ptr @"*[]_llgo_go/ast.Expr" }, ptr @"_llgo_go/ast.Expr" }, align 8
@37 = private unnamed_addr constant [10 x i8] c"[]ast.Expr", align 1
@"*[]_llgo_go/ast.Expr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2140595147, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 10 }, ptr null }, ptr @"[]_llgo_go/ast.Expr" }, align 8
@38 = private unnamed_addr constant [6 x i8] c"TokPos", align 1
@39 = private unnamed_addr constant [3 x i8] c"Tok", align 1
@"_llgo_go/token.Token" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [5 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -289315828, i8 13, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 11 }, ptr @"*_llgo_go/token.Token" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 8 }, i16 5, i16 5, i32 24 }, [5 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"go/token.(*Token).IsKeyword", ptr @"go/token.Token.IsKeyword" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"go/token.(*Token).IsLiteral", ptr @"go/token.Token.IsLiteral" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"go/token.(*Token).IsOperator", ptr @"go/token.Token.IsOperator" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"go/token.(*Token).Precedence", ptr @"go/token.Token.Precedence" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"go/token.(*Token).String", ptr @"go/token.Token.String" }] }, align 8
@40 = private unnamed_addr constant [11 x i8] c"token.Token", align 1
@"*_llgo_go/token.Token" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [5 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -419138858, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 11 }, ptr null }, ptr @"_llgo_go/token.Token" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 8 }, i16 5, i16 5, i32 24 }, [5 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"go/token.(*Token).IsKeyword", ptr @"go/token.(*Token).IsKeyword" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"go/token.(*Token).IsLiteral", ptr @"go/token.(*Token).IsLiteral" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"go/token.(*Token).IsOperator", ptr @"go/token.(*Token).IsOperator" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"go/token.(*Token).Precedence", ptr @"go/token.(*Token).Precedence" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"go/token.(*Token).String", ptr @"go/token.(*Token).String" }] }, align 8
@41 = private unnamed_addr constant [9 x i8] c"IsKeyword", align 1
@42 = private unnamed_addr constant [9 x i8] c"IsLiteral", align 1
@43 = private unnamed_addr constant [10 x i8] c"IsOperator", align 1
@44 = private unnamed_addr constant [10 x i8] c"Precedence", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@45 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 3 }, ptr @"*_llgo_int" }, align 8
@46 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@47 = private unnamed_addr constant [3 x i8] c"Rhs", align 1
@"_llgo_struct$wsyF6kiIuFuywsMdyRhgzCeAvEWs50Iqjsb1NG8kod0$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr @"[]_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 6 }, ptr @"_llgo_go/token.Pos", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 3 }, ptr @"_llgo_go/token.Token", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 3 }, ptr @"[]_llgo_go/ast.Expr", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@48 = private unnamed_addr constant [8 x i8] c"stmtNode", align 1
@49 = private unnamed_addr constant [15 x i8] c"go/ast.stmtNode", align 1
@"*_llgo_go/ast.BadDecl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2083812208, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 11 }, ptr null }, ptr @"_llgo_go/ast.BadDecl" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BadDecl).End", ptr @"go/ast.(*BadDecl).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BadDecl).Pos", ptr @"go/ast.(*BadDecl).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*BadDecl).declNode", ptr @"go/ast.(*BadDecl).declNode" }] }, align 8
@50 = private unnamed_addr constant [11 x i8] c"ast.BadDecl", align 1
@"_llgo_go/ast.BadDecl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -2072091450, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.BadDecl" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 11 }, ptr @"*_llgo_go/ast.BadDecl" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$gkeSKaIITwj2ufmiLzjRR5D0VShQKg6lFkjmKMIruzw$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@51 = private unnamed_addr constant [4 x i8] c"From", align 1
@52 = private unnamed_addr constant [2 x i8] c"To", align 1
@"_llgo_struct$gkeSKaIITwj2ufmiLzjRR5D0VShQKg6lFkjmKMIruzw$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 2 }, ptr @"_llgo_go/token.Pos", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@53 = private unnamed_addr constant [8 x i8] c"declNode", align 1
@54 = private unnamed_addr constant [15 x i8] c"go/ast.declNode", align 1
@"*_llgo_go/ast.BadExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -153806428, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr null }, ptr @"_llgo_go/ast.BadExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BadExpr).End", ptr @"go/ast.(*BadExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BadExpr).Pos", ptr @"go/ast.(*BadExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*BadExpr).exprNode", ptr @"go/ast.(*BadExpr).exprNode" }] }, align 8
@55 = private unnamed_addr constant [11 x i8] c"ast.BadExpr", align 1
@"_llgo_go/ast.BadExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 2108480943, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.BadExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr @"*_llgo_go/ast.BadExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$gkeSKaIITwj2ufmiLzjRR5D0VShQKg6lFkjmKMIruzw$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_go/ast.BadStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 799257336, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr null }, ptr @"_llgo_go/ast.BadStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BadStmt).End", ptr @"go/ast.(*BadStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BadStmt).Pos", ptr @"go/ast.(*BadStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*BadStmt).stmtNode", ptr @"go/ast.(*BadStmt).stmtNode" }] }, align 8
@56 = private unnamed_addr constant [11 x i8] c"ast.BadStmt", align 1
@"_llgo_go/ast.BadStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1128289532, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.BadStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 11 }, ptr @"*_llgo_go/ast.BadStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$gkeSKaIITwj2ufmiLzjRR5D0VShQKg6lFkjmKMIruzw$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_go/ast.BasicLit" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1125097446, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 12 }, ptr null }, ptr @"_llgo_go/ast.BasicLit" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BasicLit).End", ptr @"go/ast.(*BasicLit).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BasicLit).Pos", ptr @"go/ast.(*BasicLit).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*BasicLit).exprNode", ptr @"go/ast.(*BasicLit).exprNode" }] }, align 8
@57 = private unnamed_addr constant [12 x i8] c"ast.BasicLit", align 1
@"_llgo_go/ast.BasicLit" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 24, i32 1327432624, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.BasicLit" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 12 }, ptr @"*_llgo_go/ast.BasicLit" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$Z7ebo3g-cYjlxejcvNwrnpJyLE7Z6VnjYKW2DpiFDqg$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@58 = private unnamed_addr constant [8 x i8] c"ValuePos", align 1
@59 = private unnamed_addr constant [5 x i8] c"Value", align 1
@"_llgo_struct$Z7ebo3g-cYjlxejcvNwrnpJyLE7Z6VnjYKW2DpiFDqg$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 4 }, ptr @"_llgo_go/token.Token", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 5 }, ptr @_llgo_string, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.BinaryExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2024209925, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 14 }, ptr null }, ptr @"_llgo_go/ast.BinaryExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BinaryExpr).End", ptr @"go/ast.(*BinaryExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BinaryExpr).Pos", ptr @"go/ast.(*BinaryExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*BinaryExpr).exprNode", ptr @"go/ast.(*BinaryExpr).exprNode" }] }, align 8
@60 = private unnamed_addr constant [14 x i8] c"ast.BinaryExpr", align 1
@"_llgo_go/ast.BinaryExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 413701553, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.BinaryExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 14 }, ptr @"*_llgo_go/ast.BinaryExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$aBJcr5FIITlEWIoN_uLLWcykBBxpGOnETSSSDciy4mY$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@61 = private unnamed_addr constant [1 x i8] c"X", align 1
@62 = private unnamed_addr constant [5 x i8] c"OpPos", align 1
@63 = private unnamed_addr constant [2 x i8] c"Op", align 1
@64 = private unnamed_addr constant [1 x i8] c"Y", align 1
@"_llgo_struct$aBJcr5FIITlEWIoN_uLLWcykBBxpGOnETSSSDciy4mY$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 5 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 2 }, ptr @"_llgo_go/token.Token", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.BlockStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -272322005, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 13 }, ptr null }, ptr @"_llgo_go/ast.BlockStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BlockStmt).End", ptr @"go/ast.(*BlockStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BlockStmt).Pos", ptr @"go/ast.(*BlockStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*BlockStmt).stmtNode", ptr @"go/ast.(*BlockStmt).stmtNode" }] }, align 8
@65 = private unnamed_addr constant [13 x i8] c"ast.BlockStmt", align 1
@"_llgo_go/ast.BlockStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 8, i32 -2111609664, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 13 }, ptr @"*_llgo_go/ast.BlockStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$6Oe5SqFaXSiOWR6kbH40io3wkZV1t6rBB1krEZj2K54$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@66 = private unnamed_addr constant [6 x i8] c"Lbrace", align 1
@67 = private unnamed_addr constant [4 x i8] c"List", align 1
@"[]_llgo_go/ast.Stmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -785311614, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 10 }, ptr @"*[]_llgo_go/ast.Stmt" }, ptr @"_llgo_go/ast.Stmt" }, align 8
@68 = private unnamed_addr constant [10 x i8] c"[]ast.Stmt", align 1
@"*[]_llgo_go/ast.Stmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 913233737, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 10 }, ptr null }, ptr @"[]_llgo_go/ast.Stmt" }, align 8
@"_llgo_go/ast.Stmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 120086185, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr @"*_llgo_go/ast.Stmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"go/ast.iface$aWT3Y-LS6IA7duoAic3XSpSKidbQ2k5eNPkDzno7gVM$imethods", i64 3, i64 3 } }, align 8
@69 = private unnamed_addr constant [8 x i8] c"ast.Stmt", align 1
@"*_llgo_go/ast.Stmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 556610737, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr null }, ptr @"_llgo_go/ast.Stmt" }, align 8
@"go/ast.iface$aWT3Y-LS6IA7duoAic3XSpSKidbQ2k5eNPkDzno7gVM$imethods" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@70 = private unnamed_addr constant [6 x i8] c"Rbrace", align 1
@"_llgo_struct$6Oe5SqFaXSiOWR6kbH40io3wkZV1t6rBB1krEZj2K54$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 6 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 4 }, ptr @"[]_llgo_go/ast.Stmt", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 6 }, ptr @"_llgo_go/token.Pos", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.BranchStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -621596631, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 14 }, ptr null }, ptr @"_llgo_go/ast.BranchStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BranchStmt).End", ptr @"go/ast.(*BranchStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*BranchStmt).Pos", ptr @"go/ast.(*BranchStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*BranchStmt).stmtNode", ptr @"go/ast.(*BranchStmt).stmtNode" }] }, align 8
@71 = private unnamed_addr constant [14 x i8] c"ast.BranchStmt", align 1
@"_llgo_go/ast.BranchStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 -1725876318, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.BranchStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 14 }, ptr @"*_llgo_go/ast.BranchStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$sfihnGu4kE_OS6G3R1mLSCKiPWdor6lLJ7_TK9MgNBE$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@72 = private unnamed_addr constant [5 x i8] c"Label", align 1
@"_llgo_struct$sfihnGu4kE_OS6G3R1mLSCKiPWdor6lLJ7_TK9MgNBE$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 6 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 3 }, ptr @"_llgo_go/token.Token", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 5 }, ptr @"*_llgo_go/ast.Ident", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.CallExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -748651560, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 12 }, ptr null }, ptr @"_llgo_go/ast.CallExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CallExpr).End", ptr @"go/ast.(*CallExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CallExpr).Pos", ptr @"go/ast.(*CallExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*CallExpr).exprNode", ptr @"go/ast.(*CallExpr).exprNode" }] }, align 8
@73 = private unnamed_addr constant [12 x i8] c"ast.CallExpr", align 1
@"_llgo_go/ast.CallExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 24, i32 1484530216, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 12 }, ptr @"*_llgo_go/ast.CallExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$blhZdb9fB5tVwkjY7RHO1GKkiX0pfRFPPyoXplJChHY$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@74 = private unnamed_addr constant [3 x i8] c"Fun", align 1
@75 = private unnamed_addr constant [6 x i8] c"Lparen", align 1
@76 = private unnamed_addr constant [4 x i8] c"Args", align 1
@77 = private unnamed_addr constant [8 x i8] c"Ellipsis", align 1
@78 = private unnamed_addr constant [6 x i8] c"Rparen", align 1
@"_llgo_struct$blhZdb9fB5tVwkjY7RHO1GKkiX0pfRFPPyoXplJChHY$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 6 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr @"[]_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 8 }, ptr @"_llgo_go/token.Pos", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 6 }, ptr @"_llgo_go/token.Pos", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.CaseClause" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1914510687, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 14 }, ptr null }, ptr @"_llgo_go/ast.CaseClause" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CaseClause).End", ptr @"go/ast.(*CaseClause).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CaseClause).Pos", ptr @"go/ast.(*CaseClause).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*CaseClause).stmtNode", ptr @"go/ast.(*CaseClause).stmtNode" }] }, align 8
@79 = private unnamed_addr constant [14 x i8] c"ast.CaseClause", align 1
@"_llgo_go/ast.CaseClause" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 48, i32 898358260, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 14 }, ptr @"*_llgo_go/ast.CaseClause" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$ag67E7f5LDTjuIDN-sKkxaxDuH0X5n4mnxZyCD7lHGs$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@80 = private unnamed_addr constant [4 x i8] c"Case", align 1
@81 = private unnamed_addr constant [5 x i8] c"Colon", align 1
@82 = private unnamed_addr constant [4 x i8] c"Body", align 1
@"_llgo_struct$ag67E7f5LDTjuIDN-sKkxaxDuH0X5n4mnxZyCD7lHGs$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 4 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 4 }, ptr @"[]_llgo_go/ast.Expr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_go/token.Pos", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"[]_llgo_go/ast.Stmt", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.ChanType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1759169956, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 12 }, ptr null }, ptr @"_llgo_go/ast.ChanType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ChanType).End", ptr @"go/ast.(*ChanType).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ChanType).Pos", ptr @"go/ast.(*ChanType).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*ChanType).exprNode", ptr @"go/ast.(*ChanType).exprNode" }] }, align 8
@83 = private unnamed_addr constant [12 x i8] c"ast.ChanType", align 1
@"_llgo_go/ast.ChanType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 -1804875866, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.ChanType" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 12 }, ptr @"*_llgo_go/ast.ChanType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$jNLpgFf8Fpzmg_7soMAPb94sUL7fIThqs7gJ1FySkcg$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@84 = private unnamed_addr constant [5 x i8] c"Begin", align 1
@85 = private unnamed_addr constant [5 x i8] c"Arrow", align 1
@86 = private unnamed_addr constant [3 x i8] c"Dir", align 1
@"_llgo_go/ast.ChanDir" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1370288072, i8 13, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 11 }, ptr @"*_llgo_go/ast.ChanDir" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@87 = private unnamed_addr constant [11 x i8] c"ast.ChanDir", align 1
@"*_llgo_go/ast.ChanDir" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1839689125, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 11 }, ptr null }, ptr @"_llgo_go/ast.ChanDir" }, align 8
@"_llgo_struct$jNLpgFf8Fpzmg_7soMAPb94sUL7fIThqs7gJ1FySkcg$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 5 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 5 }, ptr @"_llgo_go/token.Pos", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 3 }, ptr @"_llgo_go/ast.ChanDir", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 5 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.CommClause" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1253709575, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 14 }, ptr null }, ptr @"_llgo_go/ast.CommClause" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CommClause).End", ptr @"go/ast.(*CommClause).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CommClause).Pos", ptr @"go/ast.(*CommClause).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*CommClause).stmtNode", ptr @"go/ast.(*CommClause).stmtNode" }] }, align 8
@88 = private unnamed_addr constant [14 x i8] c"ast.CommClause", align 1
@"_llgo_go/ast.CommClause" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 40, i32 420761253, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 14 }, ptr @"*_llgo_go/ast.CommClause" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$juJMDy1Yel2c4JBmW70BnRAY6DO3qCmXG1jyqV0JI_4$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@89 = private unnamed_addr constant [4 x i8] c"Comm", align 1
@"_llgo_struct$juJMDy1Yel2c4JBmW70BnRAY6DO3qCmXG1jyqV0JI_4$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 4 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 4 }, ptr @"_llgo_go/ast.Stmt", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_go/token.Pos", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"[]_llgo_go/ast.Stmt", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.Comment" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 536854853, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 11 }, ptr null }, ptr @"_llgo_go/ast.Comment" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Comment).End", ptr @"go/ast.(*Comment).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Comment).Pos", ptr @"go/ast.(*Comment).Pos" }] }, align 8
@90 = private unnamed_addr constant [11 x i8] c"ast.Comment", align 1
@"_llgo_go/ast.Comment" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 16, i32 666294594, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.Comment" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 11 }, ptr @"*_llgo_go/ast.Comment" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$JkUMn3AQRG0y9Ox2YvxcuB4dO1dz1mfUSkaHpLUHHI8$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@91 = private unnamed_addr constant [5 x i8] c"Slash", align 1
@92 = private unnamed_addr constant [4 x i8] c"Text", align 1
@"_llgo_struct$JkUMn3AQRG0y9Ox2YvxcuB4dO1dz1mfUSkaHpLUHHI8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 5 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 4 }, ptr @_llgo_string, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.CommentGroup" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1541153512, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 16 }, ptr null }, ptr @"_llgo_go/ast.CommentGroup" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CommentGroup).End", ptr @"go/ast.(*CommentGroup).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CommentGroup).Pos", ptr @"go/ast.(*CommentGroup).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"go/ast.(*CommentGroup).Text", ptr @"go/ast.(*CommentGroup).Text" }] }, align 8
@93 = private unnamed_addr constant [16 x i8] c"ast.CommentGroup", align 1
@"_llgo_go/ast.CommentGroup" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1742490746, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 16 }, ptr @"*_llgo_go/ast.CommentGroup" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$FevbfthlCLUFksIacZ5wPxX7hbnBJ6mR7uPiei_IoKE$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"[]*_llgo_go/ast.Comment" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 363027565, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 14 }, ptr @"*[]*_llgo_go/ast.Comment" }, ptr @"*_llgo_go/ast.Comment" }, align 8
@94 = private unnamed_addr constant [14 x i8] c"[]*ast.Comment", align 1
@"*[]*_llgo_go/ast.Comment" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 997666750, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 14 }, ptr null }, ptr @"[]*_llgo_go/ast.Comment" }, align 8
@"_llgo_struct$FevbfthlCLUFksIacZ5wPxX7hbnBJ6mR7uPiei_IoKE$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 4 }, ptr @"[]*_llgo_go/ast.Comment", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.CompositeLit" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1766295072, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 16 }, ptr null }, ptr @"_llgo_go/ast.CompositeLit" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CompositeLit).End", ptr @"go/ast.(*CompositeLit).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*CompositeLit).Pos", ptr @"go/ast.(*CompositeLit).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*CompositeLit).exprNode", ptr @"go/ast.(*CompositeLit).exprNode" }] }, align 8
@95 = private unnamed_addr constant [16 x i8] c"ast.CompositeLit", align 1
@"_llgo_go/ast.CompositeLit" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 24, i32 -1517563897, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 16 }, ptr @"*_llgo_go/ast.CompositeLit" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$ajtdk_WxQXP_JaAayiU1aVAwFsdHz94E0_3qm09S3QM$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@96 = private unnamed_addr constant [4 x i8] c"Elts", align 1
@97 = private unnamed_addr constant [10 x i8] c"Incomplete", align 1
@"_llgo_struct$ajtdk_WxQXP_JaAayiU1aVAwFsdHz94E0_3qm09S3QM$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 6 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 4 }, ptr @"[]_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 6 }, ptr @"_llgo_go/token.Pos", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 10 }, ptr @_llgo_bool, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.DeclStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -713342650, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, ptr null }, ptr @"_llgo_go/ast.DeclStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*DeclStmt).End", ptr @"go/ast.(*DeclStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*DeclStmt).Pos", ptr @"go/ast.(*DeclStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*DeclStmt).stmtNode", ptr @"go/ast.(*DeclStmt).stmtNode" }] }, align 8
@98 = private unnamed_addr constant [12 x i8] c"ast.DeclStmt", align 1
@"_llgo_go/ast.DeclStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 265143785, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.DeclStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 12 }, ptr @"*_llgo_go/ast.DeclStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$6nuVnPrnvE8wLna7J0woqe2xk568yJXdXtmeDhT-ym4$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_go/ast.Decl" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1408863929, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 8 }, ptr @"*_llgo_go/ast.Decl" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"go/ast.iface$lX4HMtTJnqhQ8pyXSaTH9ix6C26QiWLjzbxwpuX_Hhc$imethods", i64 3, i64 3 } }, align 8
@99 = private unnamed_addr constant [8 x i8] c"ast.Decl", align 1
@"*_llgo_go/ast.Decl" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1507437214, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 8 }, ptr null }, ptr @"_llgo_go/ast.Decl" }, align 8
@"go/ast.iface$lX4HMtTJnqhQ8pyXSaTH9ix6C26QiWLjzbxwpuX_Hhc$imethods" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@"_llgo_struct$6nuVnPrnvE8wLna7J0woqe2xk568yJXdXtmeDhT-ym4$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 }, ptr @"_llgo_go/ast.Decl", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.DeferStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 532452996, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 13 }, ptr null }, ptr @"_llgo_go/ast.DeferStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*DeferStmt).End", ptr @"go/ast.(*DeferStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*DeferStmt).Pos", ptr @"go/ast.(*DeferStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*DeferStmt).stmtNode", ptr @"go/ast.(*DeferStmt).stmtNode" }] }, align 8
@100 = private unnamed_addr constant [13 x i8] c"ast.DeferStmt", align 1
@"_llgo_go/ast.DeferStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -424661139, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.DeferStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 13 }, ptr @"*_llgo_go/ast.DeferStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$ZRVKm-J4qpN6rd6CpMuwaykwh_Dq3DMiF_7dzTVEVdQ$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@101 = private unnamed_addr constant [5 x i8] c"Defer", align 1
@102 = private unnamed_addr constant [4 x i8] c"Call", align 1
@"_llgo_struct$ZRVKm-J4qpN6rd6CpMuwaykwh_Dq3DMiF_7dzTVEVdQ$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 5 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 4 }, ptr @"*_llgo_go/ast.CallExpr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.Ellipsis" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -132771931, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 12 }, ptr null }, ptr @"_llgo_go/ast.Ellipsis" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Ellipsis).End", ptr @"go/ast.(*Ellipsis).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Ellipsis).Pos", ptr @"go/ast.(*Ellipsis).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*Ellipsis).exprNode", ptr @"go/ast.(*Ellipsis).exprNode" }] }, align 8
@103 = private unnamed_addr constant [12 x i8] c"ast.Ellipsis", align 1
@"_llgo_go/ast.Ellipsis" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 1565756484, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.Ellipsis" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 12 }, ptr @"*_llgo_go/ast.Ellipsis" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$5Gw78nw3D20fuWXX5topOtd2k-WW9Zvv08Vo4iETpgE$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_struct$5Gw78nw3D20fuWXX5topOtd2k-WW9Zvv08Vo4iETpgE$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 8 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.EmptyStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 436602520, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 13 }, ptr null }, ptr @"_llgo_go/ast.EmptyStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*EmptyStmt).End", ptr @"go/ast.(*EmptyStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*EmptyStmt).Pos", ptr @"go/ast.(*EmptyStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*EmptyStmt).stmtNode", ptr @"go/ast.(*EmptyStmt).stmtNode" }] }, align 8
@104 = private unnamed_addr constant [13 x i8] c"ast.EmptyStmt", align 1
@"_llgo_go/ast.EmptyStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -1567221368, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.EmptyStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 13 }, ptr @"*_llgo_go/ast.EmptyStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$Sa6EsSkqIDwD_QwSOQAGJQQs4SEP6uI8169m_6YQY3E$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@105 = private unnamed_addr constant [9 x i8] c"Semicolon", align 1
@106 = private unnamed_addr constant [8 x i8] c"Implicit", align 1
@"_llgo_struct$Sa6EsSkqIDwD_QwSOQAGJQQs4SEP6uI8169m_6YQY3E$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 9 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 8 }, ptr @_llgo_bool, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.ExprStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1299324267, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 12 }, ptr null }, ptr @"_llgo_go/ast.ExprStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ExprStmt).End", ptr @"go/ast.(*ExprStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ExprStmt).Pos", ptr @"go/ast.(*ExprStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*ExprStmt).stmtNode", ptr @"go/ast.(*ExprStmt).stmtNode" }] }, align 8
@107 = private unnamed_addr constant [12 x i8] c"ast.ExprStmt", align 1
@"_llgo_go/ast.ExprStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1746325128, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.ExprStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 12 }, ptr @"*_llgo_go/ast.ExprStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$rFSpiTBUIfW7V7bbgxwRR_uCaxOD9mgOzoCb9eWB9n4$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_struct$rFSpiTBUIfW7V7bbgxwRR_uCaxOD9mgOzoCb9eWB9n4$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.Field" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1667370071, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 9 }, ptr null }, ptr @"_llgo_go/ast.Field" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Field).End", ptr @"go/ast.(*Field).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Field).Pos", ptr @"go/ast.(*Field).Pos" }] }, align 8
@108 = private unnamed_addr constant [9 x i8] c"ast.Field", align 1
@"_llgo_go/ast.Field" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -1239207325, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 9 }, ptr @"*_llgo_go/ast.Field" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$7biL8ZzhC-d58i2dwuVFgbbKaMC8NPWqFhljxncOqQg$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@109 = private unnamed_addr constant [3 x i8] c"Doc", align 1
@110 = private unnamed_addr constant [5 x i8] c"Names", align 1
@"[]*_llgo_go/ast.Ident" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -227307820, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 12 }, ptr @"*[]*_llgo_go/ast.Ident" }, ptr @"*_llgo_go/ast.Ident" }, align 8
@111 = private unnamed_addr constant [12 x i8] c"[]*ast.Ident", align 1
@"*[]*_llgo_go/ast.Ident" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -690526116, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 12 }, ptr null }, ptr @"[]*_llgo_go/ast.Ident" }, align 8
@112 = private unnamed_addr constant [3 x i8] c"Tag", align 1
@113 = private unnamed_addr constant [7 x i8] c"Comment", align 1
@"_llgo_struct$7biL8ZzhC-d58i2dwuVFgbbKaMC8NPWqFhljxncOqQg$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 3 }, ptr @"*_llgo_go/ast.CommentGroup", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 5 }, ptr @"[]*_llgo_go/ast.Ident", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_go/ast.Expr", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 3 }, ptr @"*_llgo_go/ast.BasicLit", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"*_llgo_go/ast.CommentGroup", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.FieldList" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -891825967, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @114, i64 13 }, ptr null }, ptr @"_llgo_go/ast.FieldList" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*FieldList).End", ptr @"go/ast.(*FieldList).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @118, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"go/ast.(*FieldList).NumFields", ptr @"go/ast.(*FieldList).NumFields" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*FieldList).Pos", ptr @"go/ast.(*FieldList).Pos" }] }, align 8
@114 = private unnamed_addr constant [13 x i8] c"ast.FieldList", align 1
@"_llgo_go/ast.FieldList" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 8, i32 1242140877, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @114, i64 13 }, ptr @"*_llgo_go/ast.FieldList" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$MuakH7pNsQahLQ0PZHsfMMdkq8wE3PbVMvFi23mLzQY$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@115 = private unnamed_addr constant [7 x i8] c"Opening", align 1
@"[]*_llgo_go/ast.Field" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 2086542688, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 12 }, ptr @"*[]*_llgo_go/ast.Field" }, ptr @"*_llgo_go/ast.Field" }, align 8
@116 = private unnamed_addr constant [12 x i8] c"[]*ast.Field", align 1
@"*[]*_llgo_go/ast.Field" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1873828093, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 12 }, ptr null }, ptr @"[]*_llgo_go/ast.Field" }, align 8
@117 = private unnamed_addr constant [7 x i8] c"Closing", align 1
@"_llgo_struct$MuakH7pNsQahLQ0PZHsfMMdkq8wE3PbVMvFi23mLzQY$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @115, i64 7 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 4 }, ptr @"[]*_llgo_go/ast.Field", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @117, i64 7 }, ptr @"_llgo_go/token.Pos", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@118 = private unnamed_addr constant [9 x i8] c"NumFields", align 1
@"*_llgo_go/ast.File" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1267610958, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @119, i64 8 }, ptr null }, ptr @"_llgo_go/ast.File" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*File).End", ptr @"go/ast.(*File).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*File).Pos", ptr @"go/ast.(*File).Pos" }] }, align 8
@119 = private unnamed_addr constant [8 x i8] c"ast.File", align 1
@"_llgo_go/ast.File" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 160, i64 152, i32 -1954135929, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @119, i64 8 }, ptr @"*_llgo_go/ast.File" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$enDlifvQmFbeCX0T4YY54AKXMJpi7m99H31E1Ch5x-0$fields", i64 11, i64 11 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@120 = private unnamed_addr constant [7 x i8] c"Package", align 1
@121 = private unnamed_addr constant [5 x i8] c"Decls", align 1
@"[]_llgo_go/ast.Decl" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1979764243, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @122, i64 10 }, ptr @"*[]_llgo_go/ast.Decl" }, ptr @"_llgo_go/ast.Decl" }, align 8
@122 = private unnamed_addr constant [10 x i8] c"[]ast.Decl", align 1
@"*[]_llgo_go/ast.Decl" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1192287419, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @122, i64 10 }, ptr null }, ptr @"[]_llgo_go/ast.Decl" }, align 8
@123 = private unnamed_addr constant [9 x i8] c"FileStart", align 1
@124 = private unnamed_addr constant [7 x i8] c"FileEnd", align 1
@125 = private unnamed_addr constant [5 x i8] c"Scope", align 1
@"*_llgo_go/ast.Scope" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1369367672, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @126, i64 9 }, ptr null }, ptr @"_llgo_go/ast.Scope" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @143, i64 6 }, ptr @"_llgo_func$6Bzrve4Ehr-C8uebix54ffuv5HX-Qd3V5Ir1RrkuIIQ", ptr @"go/ast.(*Scope).Insert", ptr @"go/ast.(*Scope).Insert" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @145, i64 6 }, ptr @"_llgo_func$DskKPFGJyA_zqt8KHhnaaEzc7yv07D3u6QVXgrOswcg", ptr @"go/ast.(*Scope).Lookup", ptr @"go/ast.(*Scope).Lookup" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"go/ast.(*Scope).String", ptr @"go/ast.(*Scope).String" }] }, align 8
@126 = private unnamed_addr constant [9 x i8] c"ast.Scope", align 1
@"_llgo_go/ast.Scope" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 425962891, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @126, i64 9 }, ptr @"*_llgo_go/ast.Scope" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$DbV9X0343zhl-fmvHfVOywYbxZACxrpab-s9umtDEvw$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@127 = private unnamed_addr constant [5 x i8] c"Outer", align 1
@128 = private unnamed_addr constant [7 x i8] c"Objects", align 1
@"map[_llgo_string]*_llgo_go/ast.Object" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1468107150, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @129, i64 22 }, ptr @"*map[_llgo_string]*_llgo_go/ast.Object" }, ptr @_llgo_string, ptr @"*_llgo_go/ast.Object", ptr @"_llgo_struct$_LJkbIMwW5JFeoRylNj02F-pie0fRG5w_U6Ovfq2QjU", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string }, i8 16, i8 8, i16 208, i32 12 }, align 8
@129 = private unnamed_addr constant [22 x i8] c"map[string]*ast.Object", align 1
@"*map[_llgo_string]*_llgo_go/ast.Object" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 385483539, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @129, i64 22 }, ptr null }, ptr @"map[_llgo_string]*_llgo_go/ast.Object" }, align 8
@"_llgo_struct$_LJkbIMwW5JFeoRylNj02F-pie0fRG5w_U6Ovfq2QjU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 902975473, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_struct$_LJkbIMwW5JFeoRylNj02F-pie0fRG5w_U6Ovfq2QjU" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @130, i64 90 }, ptr @"*_llgo_struct$_LJkbIMwW5JFeoRylNj02F-pie0fRG5w_U6Ovfq2QjU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$_LJkbIMwW5JFeoRylNj02F-pie0fRG5w_U6Ovfq2QjU$fields", i64 4, i64 4 } }, align 8
@130 = private unnamed_addr constant [90 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]*ast.Object; overflow unsafe.Pointer }", align 1
@"*_llgo_struct$_LJkbIMwW5JFeoRylNj02F-pie0fRG5w_U6Ovfq2QjU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1072037720, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @130, i64 90 }, ptr null }, ptr @"_llgo_struct$_LJkbIMwW5JFeoRylNj02F-pie0fRG5w_U6Ovfq2QjU" }, align 8
@131 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @132, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@132 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @132, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @133, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@133 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @133, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @134, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@134 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @134, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@135 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @136, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@136 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @136, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @137, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@137 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @137, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@138 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]*_llgo_go/ast.Object" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -550036191, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]*_llgo_go/ast.Object" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @139, i64 14 }, ptr @"*[8]*_llgo_go/ast.Object" }, ptr @"*_llgo_go/ast.Object", ptr @"[]*_llgo_go/ast.Object", i64 8 }, align 8
@139 = private unnamed_addr constant [14 x i8] c"[8]*ast.Object", align 1
@"*[8]*_llgo_go/ast.Object" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1872673345, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @139, i64 14 }, ptr null }, ptr @"[8]*_llgo_go/ast.Object" }, align 8
@"[]*_llgo_go/ast.Object" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1660546995, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @140, i64 13 }, ptr @"*[]*_llgo_go/ast.Object" }, ptr @"*_llgo_go/ast.Object" }, align 8
@140 = private unnamed_addr constant [13 x i8] c"[]*ast.Object", align 1
@"*[]*_llgo_go/ast.Object" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -875554302, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @140, i64 13 }, ptr null }, ptr @"[]*_llgo_go/ast.Object" }, align 8
@141 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @142, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@142 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @142, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_struct$_LJkbIMwW5JFeoRylNj02F-pie0fRG5w_U6Ovfq2QjU$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @131, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @135, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @138, i64 5 }, ptr @"[8]*_llgo_go/ast.Object", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @141, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_struct$DbV9X0343zhl-fmvHfVOywYbxZACxrpab-s9umtDEvw$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @127, i64 5 }, ptr @"*_llgo_go/ast.Scope", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @128, i64 7 }, ptr @"map[_llgo_string]*_llgo_go/ast.Object", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@143 = private unnamed_addr constant [6 x i8] c"Insert", align 1
@"_llgo_func$6Bzrve4Ehr-C8uebix54ffuv5HX-Qd3V5Ir1RrkuIIQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 83871217, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @144, i64 29 }, ptr @"*_llgo_func$6Bzrve4Ehr-C8uebix54ffuv5HX-Qd3V5Ir1RrkuIIQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$6Bzrve4Ehr-C8uebix54ffuv5HX-Qd3V5Ir1RrkuIIQ$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$6Bzrve4Ehr-C8uebix54ffuv5HX-Qd3V5Ir1RrkuIIQ$out", i64 1, i64 1 } }, align 8
@144 = private unnamed_addr constant [29 x i8] c"func(*ast.Object) *ast.Object", align 1
@"*_llgo_func$6Bzrve4Ehr-C8uebix54ffuv5HX-Qd3V5Ir1RrkuIIQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1990621660, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @144, i64 29 }, ptr null }, ptr @"_llgo_func$6Bzrve4Ehr-C8uebix54ffuv5HX-Qd3V5Ir1RrkuIIQ" }, align 8
@"_llgo_func$6Bzrve4Ehr-C8uebix54ffuv5HX-Qd3V5Ir1RrkuIIQ$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_go/ast.Object"], align 8
@"_llgo_func$6Bzrve4Ehr-C8uebix54ffuv5HX-Qd3V5Ir1RrkuIIQ$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_go/ast.Object"], align 8
@145 = private unnamed_addr constant [6 x i8] c"Lookup", align 1
@"_llgo_func$DskKPFGJyA_zqt8KHhnaaEzc7yv07D3u6QVXgrOswcg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -914680838, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @146, i64 24 }, ptr @"*_llgo_func$DskKPFGJyA_zqt8KHhnaaEzc7yv07D3u6QVXgrOswcg" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$DskKPFGJyA_zqt8KHhnaaEzc7yv07D3u6QVXgrOswcg$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$DskKPFGJyA_zqt8KHhnaaEzc7yv07D3u6QVXgrOswcg$out", i64 1, i64 1 } }, align 8
@146 = private unnamed_addr constant [24 x i8] c"func(string) *ast.Object", align 1
@"*_llgo_func$DskKPFGJyA_zqt8KHhnaaEzc7yv07D3u6QVXgrOswcg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 509475754, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @146, i64 24 }, ptr null }, ptr @"_llgo_func$DskKPFGJyA_zqt8KHhnaaEzc7yv07D3u6QVXgrOswcg" }, align 8
@"_llgo_func$DskKPFGJyA_zqt8KHhnaaEzc7yv07D3u6QVXgrOswcg$in" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_func$DskKPFGJyA_zqt8KHhnaaEzc7yv07D3u6QVXgrOswcg$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_go/ast.Object"], align 8
@147 = private unnamed_addr constant [7 x i8] c"Imports", align 1
@"[]*_llgo_go/ast.ImportSpec" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -972727512, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @148, i64 17 }, ptr @"*[]*_llgo_go/ast.ImportSpec" }, ptr @"*_llgo_go/ast.ImportSpec" }, align 8
@148 = private unnamed_addr constant [17 x i8] c"[]*ast.ImportSpec", align 1
@"*[]*_llgo_go/ast.ImportSpec" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -408900429, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @148, i64 17 }, ptr null }, ptr @"[]*_llgo_go/ast.ImportSpec" }, align 8
@"*_llgo_go/ast.ImportSpec" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1022665386, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 14 }, ptr null }, ptr @"_llgo_go/ast.ImportSpec" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ImportSpec).End", ptr @"go/ast.(*ImportSpec).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ImportSpec).Pos", ptr @"go/ast.(*ImportSpec).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @153, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*ImportSpec).specNode", ptr @"go/ast.(*ImportSpec).specNode" }] }, align 8
@149 = private unnamed_addr constant [14 x i8] c"ast.ImportSpec", align 1
@"_llgo_go/ast.ImportSpec" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 24, i32 2041389939, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.ImportSpec" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 14 }, ptr @"*_llgo_go/ast.ImportSpec" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$yk5s5NR3y4bGX8scCimKUXY0lWXKm-0M7sIYRo9ehgc$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@150 = private unnamed_addr constant [4 x i8] c"Path", align 1
@151 = private unnamed_addr constant [6 x i8] c"EndPos", align 1
@"_llgo_struct$yk5s5NR3y4bGX8scCimKUXY0lWXKm-0M7sIYRo9ehgc$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 3 }, ptr @"*_llgo_go/ast.CommentGroup", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @"*_llgo_go/ast.Ident", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @150, i64 4 }, ptr @"*_llgo_go/ast.BasicLit", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"*_llgo_go/ast.CommentGroup", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @151, i64 6 }, ptr @"_llgo_go/token.Pos", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@152 = private unnamed_addr constant [8 x i8] c"specNode", align 1
@153 = private unnamed_addr constant [15 x i8] c"go/ast.specNode", align 1
@154 = private unnamed_addr constant [10 x i8] c"Unresolved", align 1
@155 = private unnamed_addr constant [8 x i8] c"Comments", align 1
@"[]*_llgo_go/ast.CommentGroup" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1286201929, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @156, i64 19 }, ptr @"*[]*_llgo_go/ast.CommentGroup" }, ptr @"*_llgo_go/ast.CommentGroup" }, align 8
@156 = private unnamed_addr constant [19 x i8] c"[]*ast.CommentGroup", align 1
@"*[]*_llgo_go/ast.CommentGroup" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1812888669, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @156, i64 19 }, ptr null }, ptr @"[]*_llgo_go/ast.CommentGroup" }, align 8
@157 = private unnamed_addr constant [9 x i8] c"GoVersion", align 1
@"_llgo_struct$enDlifvQmFbeCX0T4YY54AKXMJpi7m99H31E1Ch5x-0$fields" = weak_odr constant [11 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 3 }, ptr @"*_llgo_go/ast.CommentGroup", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @120, i64 7 }, ptr @"_llgo_go/token.Pos", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @"*_llgo_go/ast.Ident", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @121, i64 5 }, ptr @"[]_llgo_go/ast.Decl", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @123, i64 9 }, ptr @"_llgo_go/token.Pos", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @124, i64 7 }, ptr @"_llgo_go/token.Pos", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @125, i64 5 }, ptr @"*_llgo_go/ast.Scope", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @147, i64 7 }, ptr @"[]*_llgo_go/ast.ImportSpec", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @154, i64 10 }, ptr @"[]*_llgo_go/ast.Ident", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @155, i64 8 }, ptr @"[]*_llgo_go/ast.CommentGroup", i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @157, i64 9 }, ptr @_llgo_string, i64 144, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.ForStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -737696344, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @158, i64 11 }, ptr null }, ptr @"_llgo_go/ast.ForStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ForStmt).End", ptr @"go/ast.(*ForStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ForStmt).Pos", ptr @"go/ast.(*ForStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*ForStmt).stmtNode", ptr @"go/ast.(*ForStmt).stmtNode" }] }, align 8
@158 = private unnamed_addr constant [11 x i8] c"ast.ForStmt", align 1
@"_llgo_go/ast.ForStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -2052080314, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.ForStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @158, i64 11 }, ptr @"*_llgo_go/ast.ForStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$u5l2PU2xGf51WHnf7B3sflAJVyqCexbTcHuV9YA0hHg$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@159 = private unnamed_addr constant [3 x i8] c"For", align 1
@160 = private unnamed_addr constant [4 x i8] c"Init", align 1
@161 = private unnamed_addr constant [4 x i8] c"Cond", align 1
@162 = private unnamed_addr constant [4 x i8] c"Post", align 1
@"_llgo_struct$u5l2PU2xGf51WHnf7B3sflAJVyqCexbTcHuV9YA0hHg$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @159, i64 3 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @160, i64 4 }, ptr @"_llgo_go/ast.Stmt", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @161, i64 4 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @162, i64 4 }, ptr @"_llgo_go/ast.Stmt", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_go/ast.BlockStmt", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.FuncDecl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1287777460, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @163, i64 12 }, ptr null }, ptr @"_llgo_go/ast.FuncDecl" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*FuncDecl).End", ptr @"go/ast.(*FuncDecl).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*FuncDecl).Pos", ptr @"go/ast.(*FuncDecl).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*FuncDecl).declNode", ptr @"go/ast.(*FuncDecl).declNode" }] }, align 8
@163 = private unnamed_addr constant [12 x i8] c"ast.FuncDecl", align 1
@"_llgo_go/ast.FuncDecl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 -162612344, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.FuncDecl" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @163, i64 12 }, ptr @"*_llgo_go/ast.FuncDecl" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$dBL8AWu-MIlLMIB8mKOgzdGndFiGNM_lB_tksZtXO8g$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@164 = private unnamed_addr constant [4 x i8] c"Recv", align 1
@"*_llgo_go/ast.FuncType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1894710989, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @165, i64 12 }, ptr null }, ptr @"_llgo_go/ast.FuncType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*FuncType).End", ptr @"go/ast.(*FuncType).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*FuncType).Pos", ptr @"go/ast.(*FuncType).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*FuncType).exprNode", ptr @"go/ast.(*FuncType).exprNode" }] }, align 8
@165 = private unnamed_addr constant [12 x i8] c"ast.FuncType", align 1
@"_llgo_go/ast.FuncType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -1566549941, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.FuncType" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @165, i64 12 }, ptr @"*_llgo_go/ast.FuncType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$VSZKwV5L7crxBP32Z0Js4QfnZrBL6YokcEgFUJrnuno$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@166 = private unnamed_addr constant [4 x i8] c"Func", align 1
@167 = private unnamed_addr constant [10 x i8] c"TypeParams", align 1
@168 = private unnamed_addr constant [6 x i8] c"Params", align 1
@169 = private unnamed_addr constant [7 x i8] c"Results", align 1
@"_llgo_struct$VSZKwV5L7crxBP32Z0Js4QfnZrBL6YokcEgFUJrnuno$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @166, i64 4 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @167, i64 10 }, ptr @"*_llgo_go/ast.FieldList", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @168, i64 6 }, ptr @"*_llgo_go/ast.FieldList", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @169, i64 7 }, ptr @"*_llgo_go/ast.FieldList", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_struct$dBL8AWu-MIlLMIB8mKOgzdGndFiGNM_lB_tksZtXO8g$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 3 }, ptr @"*_llgo_go/ast.CommentGroup", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @164, i64 4 }, ptr @"*_llgo_go/ast.FieldList", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @"*_llgo_go/ast.Ident", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"*_llgo_go/ast.FuncType", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_go/ast.BlockStmt", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.FuncLit" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 667496323, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @170, i64 11 }, ptr null }, ptr @"_llgo_go/ast.FuncLit" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*FuncLit).End", ptr @"go/ast.(*FuncLit).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*FuncLit).Pos", ptr @"go/ast.(*FuncLit).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*FuncLit).exprNode", ptr @"go/ast.(*FuncLit).exprNode" }] }, align 8
@170 = private unnamed_addr constant [11 x i8] c"ast.FuncLit", align 1
@"_llgo_go/ast.FuncLit" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1027459542, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.FuncLit" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @170, i64 11 }, ptr @"*_llgo_go/ast.FuncLit" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$Vka1A-a1OD4rwWcUJAf5OGn041xUCo_lkrNUu7YBF8U$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_struct$Vka1A-a1OD4rwWcUJAf5OGn041xUCo_lkrNUu7YBF8U$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"*_llgo_go/ast.FuncType", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_go/ast.BlockStmt", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.GenDecl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -328553755, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @171, i64 11 }, ptr null }, ptr @"_llgo_go/ast.GenDecl" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*GenDecl).End", ptr @"go/ast.(*GenDecl).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*GenDecl).Pos", ptr @"go/ast.(*GenDecl).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*GenDecl).declNode", ptr @"go/ast.(*GenDecl).declNode" }] }, align 8
@171 = private unnamed_addr constant [11 x i8] c"ast.GenDecl", align 1
@"_llgo_go/ast.GenDecl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 32, i32 160314575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @171, i64 11 }, ptr @"*_llgo_go/ast.GenDecl" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$lXSWTYHzmzKOu0GRHj7xoON1u9KBlrkbLYpS1txSMTU$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@172 = private unnamed_addr constant [5 x i8] c"Specs", align 1
@"[]_llgo_go/ast.Spec" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1127389065, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @173, i64 10 }, ptr @"*[]_llgo_go/ast.Spec" }, ptr @"_llgo_go/ast.Spec" }, align 8
@173 = private unnamed_addr constant [10 x i8] c"[]ast.Spec", align 1
@"*[]_llgo_go/ast.Spec" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1966609582, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @173, i64 10 }, ptr null }, ptr @"[]_llgo_go/ast.Spec" }, align 8
@"_llgo_go/ast.Spec" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2026607612, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @174, i64 8 }, ptr @"*_llgo_go/ast.Spec" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"go/ast.iface$JkIs7q6riw3M4lQirjgYyFzfYBj4fN5Sf5vd96hOpAU$imethods", i64 3, i64 3 } }, align 8
@174 = private unnamed_addr constant [8 x i8] c"ast.Spec", align 1
@"*_llgo_go/ast.Spec" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 254211166, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @174, i64 8 }, ptr null }, ptr @"_llgo_go/ast.Spec" }, align 8
@"go/ast.iface$JkIs7q6riw3M4lQirjgYyFzfYBj4fN5Sf5vd96hOpAU$imethods" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @153, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@"_llgo_struct$lXSWTYHzmzKOu0GRHj7xoON1u9KBlrkbLYpS1txSMTU$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 3 }, ptr @"*_llgo_go/ast.CommentGroup", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 6 }, ptr @"_llgo_go/token.Pos", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 3 }, ptr @"_llgo_go/token.Token", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 6 }, ptr @"_llgo_go/token.Pos", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @172, i64 5 }, ptr @"[]_llgo_go/ast.Spec", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 6 }, ptr @"_llgo_go/token.Pos", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.GoStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -204577511, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @175, i64 10 }, ptr null }, ptr @"_llgo_go/ast.GoStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*GoStmt).End", ptr @"go/ast.(*GoStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*GoStmt).Pos", ptr @"go/ast.(*GoStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*GoStmt).stmtNode", ptr @"go/ast.(*GoStmt).stmtNode" }] }, align 8
@175 = private unnamed_addr constant [10 x i8] c"ast.GoStmt", align 1
@"_llgo_go/ast.GoStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -167601518, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.GoStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @175, i64 10 }, ptr @"*_llgo_go/ast.GoStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$znWfNxZT-61b0LTWsOiGAMgSC8F9R-StamQOekqTEKo$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@176 = private unnamed_addr constant [2 x i8] c"Go", align 1
@"_llgo_struct$znWfNxZT-61b0LTWsOiGAMgSC8F9R-StamQOekqTEKo$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @176, i64 2 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 4 }, ptr @"*_llgo_go/ast.CallExpr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.IfStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1987080098, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @177, i64 10 }, ptr null }, ptr @"_llgo_go/ast.IfStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*IfStmt).End", ptr @"go/ast.(*IfStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*IfStmt).Pos", ptr @"go/ast.(*IfStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*IfStmt).stmtNode", ptr @"go/ast.(*IfStmt).stmtNode" }] }, align 8
@177 = private unnamed_addr constant [10 x i8] c"ast.IfStmt", align 1
@"_llgo_go/ast.IfStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 1862235583, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.IfStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @177, i64 10 }, ptr @"*_llgo_go/ast.IfStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$9pAmM43oNNbjy4UhVZySTshJ-isdYdwJ04IZFVexdM4$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@178 = private unnamed_addr constant [2 x i8] c"If", align 1
@179 = private unnamed_addr constant [4 x i8] c"Else", align 1
@"_llgo_struct$9pAmM43oNNbjy4UhVZySTshJ-isdYdwJ04IZFVexdM4$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @178, i64 2 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @160, i64 4 }, ptr @"_llgo_go/ast.Stmt", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @161, i64 4 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_go/ast.BlockStmt", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @179, i64 4 }, ptr @"_llgo_go/ast.Stmt", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.IncDecStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1296823531, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @180, i64 14 }, ptr null }, ptr @"_llgo_go/ast.IncDecStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*IncDecStmt).End", ptr @"go/ast.(*IncDecStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*IncDecStmt).Pos", ptr @"go/ast.(*IncDecStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*IncDecStmt).stmtNode", ptr @"go/ast.(*IncDecStmt).stmtNode" }] }, align 8
@180 = private unnamed_addr constant [14 x i8] c"ast.IncDecStmt", align 1
@"_llgo_go/ast.IncDecStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1322432458, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.IncDecStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @180, i64 14 }, ptr @"*_llgo_go/ast.IncDecStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$AIGWuCQLxxdEHnya_AgqaGDFgFMR2ykItFYxxTzQNuM$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_struct$AIGWuCQLxxdEHnya_AgqaGDFgFMR2ykItFYxxTzQNuM$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 6 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 3 }, ptr @"_llgo_go/token.Token", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.IndexExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1782885371, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @181, i64 13 }, ptr null }, ptr @"_llgo_go/ast.IndexExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*IndexExpr).End", ptr @"go/ast.(*IndexExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*IndexExpr).Pos", ptr @"go/ast.(*IndexExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*IndexExpr).exprNode", ptr @"go/ast.(*IndexExpr).exprNode" }] }, align 8
@181 = private unnamed_addr constant [13 x i8] c"ast.IndexExpr", align 1
@"_llgo_go/ast.IndexExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 24, i32 1054923780, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.IndexExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @181, i64 13 }, ptr @"*_llgo_go/ast.IndexExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$jU-Kt7STcD13SNZ2kchpPHU9GZblFnD0D-W0CDKW7Bs$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@182 = private unnamed_addr constant [5 x i8] c"Index", align 1
@183 = private unnamed_addr constant [6 x i8] c"Rbrack", align 1
@"_llgo_struct$jU-Kt7STcD13SNZ2kchpPHU9GZblFnD0D-W0CDKW7Bs$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @182, i64 5 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @183, i64 6 }, ptr @"_llgo_go/token.Pos", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.IndexListExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1460564778, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @184, i64 17 }, ptr null }, ptr @"_llgo_go/ast.IndexListExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*IndexListExpr).End", ptr @"go/ast.(*IndexListExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*IndexListExpr).Pos", ptr @"go/ast.(*IndexListExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*IndexListExpr).exprNode", ptr @"go/ast.(*IndexListExpr).exprNode" }] }, align 8
@184 = private unnamed_addr constant [17 x i8] c"ast.IndexListExpr", align 1
@"_llgo_go/ast.IndexListExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 24, i32 -596516190, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @184, i64 17 }, ptr @"*_llgo_go/ast.IndexListExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$cq12iiQTQ4VelvVa9YG2rBvDEAU0AavEWhZtdJbpW-0$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@185 = private unnamed_addr constant [7 x i8] c"Indices", align 1
@"_llgo_struct$cq12iiQTQ4VelvVa9YG2rBvDEAU0AavEWhZtdJbpW-0$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @185, i64 7 }, ptr @"[]_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @183, i64 6 }, ptr @"_llgo_go/token.Pos", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.InterfaceType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1615147479, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @186, i64 17 }, ptr null }, ptr @"_llgo_go/ast.InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*InterfaceType).End", ptr @"go/ast.(*InterfaceType).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*InterfaceType).Pos", ptr @"go/ast.(*InterfaceType).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*InterfaceType).exprNode", ptr @"go/ast.(*InterfaceType).exprNode" }] }, align 8
@186 = private unnamed_addr constant [17 x i8] c"ast.InterfaceType", align 1
@"_llgo_go/ast.InterfaceType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -505192302, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.InterfaceType" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @186, i64 17 }, ptr @"*_llgo_go/ast.InterfaceType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$prq2Uf3mcUKYW8aGApUWMbDlZLfHIudFyc1VeH_dLA8$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@187 = private unnamed_addr constant [9 x i8] c"Interface", align 1
@188 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@"_llgo_struct$prq2Uf3mcUKYW8aGApUWMbDlZLfHIudFyc1VeH_dLA8$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @187, i64 9 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @188, i64 7 }, ptr @"*_llgo_go/ast.FieldList", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 10 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.KeyValueExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1913190403, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @189, i64 16 }, ptr null }, ptr @"_llgo_go/ast.KeyValueExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*KeyValueExpr).End", ptr @"go/ast.(*KeyValueExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*KeyValueExpr).Pos", ptr @"go/ast.(*KeyValueExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*KeyValueExpr).exprNode", ptr @"go/ast.(*KeyValueExpr).exprNode" }] }, align 8
@189 = private unnamed_addr constant [16 x i8] c"ast.KeyValueExpr", align 1
@"_llgo_go/ast.KeyValueExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 243893140, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.KeyValueExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @189, i64 16 }, ptr @"*_llgo_go/ast.KeyValueExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$QsjogsoyaAlZr-cmidT7bfYzW1ycpMlTiIKXrh_672E$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@190 = private unnamed_addr constant [3 x i8] c"Key", align 1
@"_llgo_struct$QsjogsoyaAlZr-cmidT7bfYzW1ycpMlTiIKXrh_672E$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @190, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 5 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.LabeledStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1985683383, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @191, i64 15 }, ptr null }, ptr @"_llgo_go/ast.LabeledStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*LabeledStmt).End", ptr @"go/ast.(*LabeledStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*LabeledStmt).Pos", ptr @"go/ast.(*LabeledStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*LabeledStmt).stmtNode", ptr @"go/ast.(*LabeledStmt).stmtNode" }] }, align 8
@191 = private unnamed_addr constant [15 x i8] c"ast.LabeledStmt", align 1
@"_llgo_go/ast.LabeledStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -127155413, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.LabeledStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @191, i64 15 }, ptr @"*_llgo_go/ast.LabeledStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$5FVZr2a61etUKdz-wgg1auYtDfGpy5Q8XI4DUcf5lpY$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@192 = private unnamed_addr constant [4 x i8] c"Stmt", align 1
@"_llgo_struct$5FVZr2a61etUKdz-wgg1auYtDfGpy5Q8XI4DUcf5lpY$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 5 }, ptr @"*_llgo_go/ast.Ident", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_go/token.Pos", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @192, i64 4 }, ptr @"_llgo_go/ast.Stmt", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.MapType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 99637440, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @193, i64 11 }, ptr null }, ptr @"_llgo_go/ast.MapType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*MapType).End", ptr @"go/ast.(*MapType).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*MapType).Pos", ptr @"go/ast.(*MapType).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*MapType).exprNode", ptr @"go/ast.(*MapType).exprNode" }] }, align 8
@193 = private unnamed_addr constant [11 x i8] c"ast.MapType", align 1
@"_llgo_go/ast.MapType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 -699682364, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.MapType" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @193, i64 11 }, ptr @"*_llgo_go/ast.MapType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$gXwQUZw1igPEurrdb1E04YLKkEeobfGRis6OKNulnqk$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@194 = private unnamed_addr constant [3 x i8] c"Map", align 1
@"_llgo_struct$gXwQUZw1igPEurrdb1E04YLKkEeobfGRis6OKNulnqk$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @194, i64 3 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @190, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 5 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.Package" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -969442699, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @195, i64 11 }, ptr null }, ptr @"_llgo_go/ast.Package" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Package).End", ptr @"go/ast.(*Package).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*Package).Pos", ptr @"go/ast.(*Package).Pos" }] }, align 8
@195 = private unnamed_addr constant [11 x i8] c"ast.Package", align 1
@"_llgo_go/ast.Package" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 1688492850, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @195, i64 11 }, ptr @"*_llgo_go/ast.Package" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$kPlcIVeU7JcZVCbMTZFOn949PrsiAjRZ5y56p4D7YoQ$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@196 = private unnamed_addr constant [5 x i8] c"Files", align 1
@"map[_llgo_string]*_llgo_go/ast.File" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1400132735, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @197, i64 20 }, ptr @"*map[_llgo_string]*_llgo_go/ast.File" }, ptr @_llgo_string, ptr @"*_llgo_go/ast.File", ptr @"_llgo_struct$RCg4TciT45ITyoTg7qtuZl2-2ns4FSf9xntj8H5OmFg", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string }, i8 16, i8 8, i16 208, i32 12 }, align 8
@197 = private unnamed_addr constant [20 x i8] c"map[string]*ast.File", align 1
@"*map[_llgo_string]*_llgo_go/ast.File" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 103152764, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @197, i64 20 }, ptr null }, ptr @"map[_llgo_string]*_llgo_go/ast.File" }, align 8
@"_llgo_struct$RCg4TciT45ITyoTg7qtuZl2-2ns4FSf9xntj8H5OmFg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -1489928847, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_struct$RCg4TciT45ITyoTg7qtuZl2-2ns4FSf9xntj8H5OmFg" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @198, i64 88 }, ptr @"*_llgo_struct$RCg4TciT45ITyoTg7qtuZl2-2ns4FSf9xntj8H5OmFg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$RCg4TciT45ITyoTg7qtuZl2-2ns4FSf9xntj8H5OmFg$fields", i64 4, i64 4 } }, align 8
@198 = private unnamed_addr constant [88 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]*ast.File; overflow unsafe.Pointer }", align 1
@"*_llgo_struct$RCg4TciT45ITyoTg7qtuZl2-2ns4FSf9xntj8H5OmFg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1897877158, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @198, i64 88 }, ptr null }, ptr @"_llgo_struct$RCg4TciT45ITyoTg7qtuZl2-2ns4FSf9xntj8H5OmFg" }, align 8
@"[8]*_llgo_go/ast.File" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -819632173, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]*_llgo_go/ast.File" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @199, i64 12 }, ptr @"*[8]*_llgo_go/ast.File" }, ptr @"*_llgo_go/ast.File", ptr @"[]*_llgo_go/ast.File", i64 8 }, align 8
@199 = private unnamed_addr constant [12 x i8] c"[8]*ast.File", align 1
@"*[8]*_llgo_go/ast.File" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1879967793, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @199, i64 12 }, ptr null }, ptr @"[8]*_llgo_go/ast.File" }, align 8
@"[]*_llgo_go/ast.File" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -472289637, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @200, i64 11 }, ptr @"*[]*_llgo_go/ast.File" }, ptr @"*_llgo_go/ast.File" }, align 8
@200 = private unnamed_addr constant [11 x i8] c"[]*ast.File", align 1
@"*[]*_llgo_go/ast.File" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 403933123, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @200, i64 11 }, ptr null }, ptr @"[]*_llgo_go/ast.File" }, align 8
@"_llgo_struct$RCg4TciT45ITyoTg7qtuZl2-2ns4FSf9xntj8H5OmFg$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @131, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @135, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @138, i64 5 }, ptr @"[8]*_llgo_go/ast.File", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @141, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_struct$kPlcIVeU7JcZVCbMTZFOn949PrsiAjRZ5y56p4D7YoQ$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @125, i64 5 }, ptr @"*_llgo_go/ast.Scope", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @147, i64 7 }, ptr @"map[_llgo_string]*_llgo_go/ast.Object", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @196, i64 5 }, ptr @"map[_llgo_string]*_llgo_go/ast.File", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.ParenExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1531020989, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @201, i64 13 }, ptr null }, ptr @"_llgo_go/ast.ParenExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ParenExpr).End", ptr @"go/ast.(*ParenExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ParenExpr).Pos", ptr @"go/ast.(*ParenExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*ParenExpr).exprNode", ptr @"go/ast.(*ParenExpr).exprNode" }] }, align 8
@201 = private unnamed_addr constant [13 x i8] c"ast.ParenExpr", align 1
@"_llgo_go/ast.ParenExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 8, i32 1083458077, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.ParenExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @201, i64 13 }, ptr @"*_llgo_go/ast.ParenExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$8zlm3x964ReMZqGVglNWFILXnDBskBVunKpoLo8uJ8s$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_struct$8zlm3x964ReMZqGVglNWFILXnDBskBVunKpoLo8uJ8s$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 6 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 6 }, ptr @"_llgo_go/token.Pos", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.RangeStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1931451638, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @202, i64 13 }, ptr null }, ptr @"_llgo_go/ast.RangeStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*RangeStmt).End", ptr @"go/ast.(*RangeStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*RangeStmt).Pos", ptr @"go/ast.(*RangeStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*RangeStmt).stmtNode", ptr @"go/ast.(*RangeStmt).stmtNode" }] }, align 8
@202 = private unnamed_addr constant [13 x i8] c"ast.RangeStmt", align 1
@"_llgo_go/ast.RangeStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 88, i64 88, i32 1723080701, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.RangeStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @202, i64 13 }, ptr @"*_llgo_go/ast.RangeStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$2KQnmWjo6-7-fbb1nVxOQlqdhVihGCmPlrOJghI4WDU$fields", i64 8, i64 8 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@203 = private unnamed_addr constant [5 x i8] c"Range", align 1
@"_llgo_struct$2KQnmWjo6-7-fbb1nVxOQlqdhVihGCmPlrOJghI4WDU$fields" = weak_odr constant [8 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @159, i64 3 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @190, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 5 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 6 }, ptr @"_llgo_go/token.Pos", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 3 }, ptr @"_llgo_go/token.Token", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @203, i64 5 }, ptr @"_llgo_go/token.Pos", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_go/ast.BlockStmt", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.ReturnStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 330822980, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @204, i64 14 }, ptr null }, ptr @"_llgo_go/ast.ReturnStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ReturnStmt).End", ptr @"go/ast.(*ReturnStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ReturnStmt).Pos", ptr @"go/ast.(*ReturnStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*ReturnStmt).stmtNode", ptr @"go/ast.(*ReturnStmt).stmtNode" }] }, align 8
@204 = private unnamed_addr constant [14 x i8] c"ast.ReturnStmt", align 1
@"_llgo_go/ast.ReturnStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 16, i32 -308279916, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @204, i64 14 }, ptr @"*_llgo_go/ast.ReturnStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$iX3lNHxFOYuz7YzsBUn73xPvy96z0srcLi30RqOWWrY$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@205 = private unnamed_addr constant [6 x i8] c"Return", align 1
@"_llgo_struct$iX3lNHxFOYuz7YzsBUn73xPvy96z0srcLi30RqOWWrY$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @205, i64 6 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @169, i64 7 }, ptr @"[]_llgo_go/ast.Expr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.SelectStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 303492817, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @206, i64 14 }, ptr null }, ptr @"_llgo_go/ast.SelectStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SelectStmt).End", ptr @"go/ast.(*SelectStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SelectStmt).Pos", ptr @"go/ast.(*SelectStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*SelectStmt).stmtNode", ptr @"go/ast.(*SelectStmt).stmtNode" }] }, align 8
@206 = private unnamed_addr constant [14 x i8] c"ast.SelectStmt", align 1
@"_llgo_go/ast.SelectStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1685578866, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.SelectStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @206, i64 14 }, ptr @"*_llgo_go/ast.SelectStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$HSiNfT7E4w16IxRIVWIEJyEyOXseRk4IKQKfJc8W-hc$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@207 = private unnamed_addr constant [6 x i8] c"Select", align 1
@"_llgo_struct$HSiNfT7E4w16IxRIVWIEJyEyOXseRk4IKQKfJc8W-hc$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @207, i64 6 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_go/ast.BlockStmt", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.SelectorExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -886691811, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @208, i64 16 }, ptr null }, ptr @"_llgo_go/ast.SelectorExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SelectorExpr).End", ptr @"go/ast.(*SelectorExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SelectorExpr).Pos", ptr @"go/ast.(*SelectorExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*SelectorExpr).exprNode", ptr @"go/ast.(*SelectorExpr).exprNode" }] }, align 8
@208 = private unnamed_addr constant [16 x i8] c"ast.SelectorExpr", align 1
@"_llgo_go/ast.SelectorExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 892270493, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.SelectorExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @208, i64 16 }, ptr @"*_llgo_go/ast.SelectorExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$JNfpTieVvt5lxbp6IF21sRM5Zh7Dt1LJgs47MlEXEqw$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@209 = private unnamed_addr constant [3 x i8] c"Sel", align 1
@"_llgo_struct$JNfpTieVvt5lxbp6IF21sRM5Zh7Dt1LJgs47MlEXEqw$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @209, i64 3 }, ptr @"*_llgo_go/ast.Ident", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.SendStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 989652895, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @210, i64 12 }, ptr null }, ptr @"_llgo_go/ast.SendStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SendStmt).End", ptr @"go/ast.(*SendStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SendStmt).Pos", ptr @"go/ast.(*SendStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*SendStmt).stmtNode", ptr @"go/ast.(*SendStmt).stmtNode" }] }, align 8
@210 = private unnamed_addr constant [12 x i8] c"ast.SendStmt", align 1
@"_llgo_go/ast.SendStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 780193081, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.SendStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @210, i64 12 }, ptr @"*_llgo_go/ast.SendStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$pVHVBFGq5ep5i6Rbl-vZ3HslWYu3kdDJXFGRoylKmzE$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@211 = private unnamed_addr constant [4 x i8] c"Chan", align 1
@"_llgo_struct$pVHVBFGq5ep5i6Rbl-vZ3HslWYu3kdDJXFGRoylKmzE$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @211, i64 4 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 5 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 5 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.SliceExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1685321679, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @212, i64 13 }, ptr null }, ptr @"_llgo_go/ast.SliceExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SliceExpr).End", ptr @"go/ast.(*SliceExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SliceExpr).Pos", ptr @"go/ast.(*SliceExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*SliceExpr).exprNode", ptr @"go/ast.(*SliceExpr).exprNode" }] }, align 8
@212 = private unnamed_addr constant [13 x i8] c"ast.SliceExpr", align 1
@"_llgo_go/ast.SliceExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 88, i64 56, i32 1882042726, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.SliceExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @212, i64 13 }, ptr @"*_llgo_go/ast.SliceExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$Bf5gwOJYbtOMFrmM04-BpZG3mcxaATd221yQqENNTKY$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@213 = private unnamed_addr constant [3 x i8] c"Low", align 1
@214 = private unnamed_addr constant [4 x i8] c"High", align 1
@215 = private unnamed_addr constant [3 x i8] c"Max", align 1
@216 = private unnamed_addr constant [6 x i8] c"Slice3", align 1
@"_llgo_struct$Bf5gwOJYbtOMFrmM04-BpZG3mcxaATd221yQqENNTKY$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @213, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @214, i64 4 }, ptr @"_llgo_go/ast.Expr", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @215, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @216, i64 6 }, ptr @_llgo_bool, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @183, i64 6 }, ptr @"_llgo_go/token.Pos", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.StarExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1585692436, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @217, i64 12 }, ptr null }, ptr @"_llgo_go/ast.StarExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*StarExpr).End", ptr @"go/ast.(*StarExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*StarExpr).Pos", ptr @"go/ast.(*StarExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*StarExpr).exprNode", ptr @"go/ast.(*StarExpr).exprNode" }] }, align 8
@217 = private unnamed_addr constant [12 x i8] c"ast.StarExpr", align 1
@"_llgo_go/ast.StarExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 10434924, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.StarExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @217, i64 12 }, ptr @"*_llgo_go/ast.StarExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$s89Z8X8wUAn2GFpkjEnuBoDPb8bLrwYxdqemAlP12nM$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@218 = private unnamed_addr constant [4 x i8] c"Star", align 1
@"_llgo_struct$s89Z8X8wUAn2GFpkjEnuBoDPb8bLrwYxdqemAlP12nM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @218, i64 4 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.StructType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -901694354, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @219, i64 14 }, ptr null }, ptr @"_llgo_go/ast.StructType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*StructType).End", ptr @"go/ast.(*StructType).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*StructType).Pos", ptr @"go/ast.(*StructType).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*StructType).exprNode", ptr @"go/ast.(*StructType).exprNode" }] }, align 8
@219 = private unnamed_addr constant [14 x i8] c"ast.StructType", align 1
@"_llgo_go/ast.StructType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 385805719, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.StructType" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @219, i64 14 }, ptr @"*_llgo_go/ast.StructType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$pYm8cqin1bpia1ZtqjgM67TopWGmN4CqSClgmf8fjtQ$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@220 = private unnamed_addr constant [6 x i8] c"Struct", align 1
@221 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@"_llgo_struct$pYm8cqin1bpia1ZtqjgM67TopWGmN4CqSClgmf8fjtQ$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @220, i64 6 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @221, i64 6 }, ptr @"*_llgo_go/ast.FieldList", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 10 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.SwitchStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2103459330, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @222, i64 14 }, ptr null }, ptr @"_llgo_go/ast.SwitchStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SwitchStmt).End", ptr @"go/ast.(*SwitchStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*SwitchStmt).Pos", ptr @"go/ast.(*SwitchStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*SwitchStmt).stmtNode", ptr @"go/ast.(*SwitchStmt).stmtNode" }] }, align 8
@222 = private unnamed_addr constant [14 x i8] c"ast.SwitchStmt", align 1
@"_llgo_go/ast.SwitchStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 -1960068597, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.SwitchStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @222, i64 14 }, ptr @"*_llgo_go/ast.SwitchStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$RfJaIWtgHTQW1ZKi8blF02jtApmrthVXCi1mJ8c9768$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@223 = private unnamed_addr constant [6 x i8] c"Switch", align 1
@"_llgo_struct$RfJaIWtgHTQW1ZKi8blF02jtApmrthVXCi1mJ8c9768$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @223, i64 6 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @160, i64 4 }, ptr @"_llgo_go/ast.Stmt", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 3 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_go/ast.BlockStmt", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.TypeAssertExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -488540242, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @224, i64 18 }, ptr null }, ptr @"_llgo_go/ast.TypeAssertExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*TypeAssertExpr).End", ptr @"go/ast.(*TypeAssertExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*TypeAssertExpr).Pos", ptr @"go/ast.(*TypeAssertExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*TypeAssertExpr).exprNode", ptr @"go/ast.(*TypeAssertExpr).exprNode" }] }, align 8
@224 = private unnamed_addr constant [18 x i8] c"ast.TypeAssertExpr", align 1
@"_llgo_go/ast.TypeAssertExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 24, i32 297889255, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.TypeAssertExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @224, i64 18 }, ptr @"*_llgo_go/ast.TypeAssertExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$GbTlN6LoD73HWDcPrP89qGNmJG9L6xCIr3mM5ynkUVk$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_struct$GbTlN6LoD73HWDcPrP89qGNmJG9L6xCIr3mM5ynkUVk$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 6 }, ptr @"_llgo_go/token.Pos", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_go/ast.Expr", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 6 }, ptr @"_llgo_go/token.Pos", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.TypeSpec" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -309190029, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @225, i64 12 }, ptr null }, ptr @"_llgo_go/ast.TypeSpec" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*TypeSpec).End", ptr @"go/ast.(*TypeSpec).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*TypeSpec).Pos", ptr @"go/ast.(*TypeSpec).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @153, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*TypeSpec).specNode", ptr @"go/ast.(*TypeSpec).specNode" }] }, align 8
@225 = private unnamed_addr constant [12 x i8] c"ast.TypeSpec", align 1
@"_llgo_go/ast.TypeSpec" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 56, i32 -1371254115, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.TypeSpec" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @225, i64 12 }, ptr @"*_llgo_go/ast.TypeSpec" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$F-RLxRrFlPpQ-9dD-TUS3t9g2sYN_M8VIIal6nbsx4g$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@226 = private unnamed_addr constant [6 x i8] c"Assign", align 1
@"_llgo_struct$F-RLxRrFlPpQ-9dD-TUS3t9g2sYN_M8VIIal6nbsx4g$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 3 }, ptr @"*_llgo_go/ast.CommentGroup", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @"*_llgo_go/ast.Ident", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @167, i64 10 }, ptr @"*_llgo_go/ast.FieldList", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @226, i64 6 }, ptr @"_llgo_go/token.Pos", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_go/ast.Expr", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"*_llgo_go/ast.CommentGroup", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.TypeSwitchStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1749295401, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @227, i64 18 }, ptr null }, ptr @"_llgo_go/ast.TypeSwitchStmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*TypeSwitchStmt).End", ptr @"go/ast.(*TypeSwitchStmt).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*TypeSwitchStmt).Pos", ptr @"go/ast.(*TypeSwitchStmt).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*TypeSwitchStmt).stmtNode", ptr @"go/ast.(*TypeSwitchStmt).stmtNode" }] }, align 8
@227 = private unnamed_addr constant [18 x i8] c"ast.TypeSwitchStmt", align 1
@"_llgo_go/ast.TypeSwitchStmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 833431859, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.TypeSwitchStmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @227, i64 18 }, ptr @"*_llgo_go/ast.TypeSwitchStmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$T-5DZFbs511hNcHJcqwQu1gxvKx5rPLLAZXFdzBGEZ8$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_struct$T-5DZFbs511hNcHJcqwQu1gxvKx5rPLLAZXFdzBGEZ8$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @223, i64 6 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @160, i64 4 }, ptr @"_llgo_go/ast.Stmt", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @226, i64 6 }, ptr @"_llgo_go/ast.Stmt", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 4 }, ptr @"*_llgo_go/ast.BlockStmt", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.UnaryExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1857949224, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @228, i64 13 }, ptr null }, ptr @"_llgo_go/ast.UnaryExpr" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*UnaryExpr).End", ptr @"go/ast.(*UnaryExpr).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*UnaryExpr).Pos", ptr @"go/ast.(*UnaryExpr).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*UnaryExpr).exprNode", ptr @"go/ast.(*UnaryExpr).exprNode" }] }, align 8
@228 = private unnamed_addr constant [13 x i8] c"ast.UnaryExpr", align 1
@"_llgo_go/ast.UnaryExpr" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 -382478855, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_go/ast.UnaryExpr" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @228, i64 13 }, ptr @"*_llgo_go/ast.UnaryExpr" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$m5YCChGyUYh_c9KsJzXwHpBEkinMpksmQXyn1UwDyr8$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_struct$m5YCChGyUYh_c9KsJzXwHpBEkinMpksmQXyn1UwDyr8$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 5 }, ptr @"_llgo_go/token.Pos", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 2 }, ptr @"_llgo_go/token.Token", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 }, ptr @"_llgo_go/ast.Expr", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_go/ast.ValueSpec" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 913999111, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @229, i64 13 }, ptr null }, ptr @"_llgo_go/ast.ValueSpec" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 3, i16 2, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ValueSpec).End", ptr @"go/ast.(*ValueSpec).End" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 3 }, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", ptr @"go/ast.(*ValueSpec).Pos", ptr @"go/ast.(*ValueSpec).Pos" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @153, i64 15 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"go/ast.(*ValueSpec).specNode", ptr @"go/ast.(*ValueSpec).specNode" }] }, align 8
@229 = private unnamed_addr constant [13 x i8] c"ast.ValueSpec", align 1
@"_llgo_go/ast.ValueSpec" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 80, i64 80, i32 1801997620, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @229, i64 13 }, ptr @"*_llgo_go/ast.ValueSpec" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$sOcAC_ZOq0zUTjfUC4WQUDA-kMpBFrGHc6qNh-82d-Q$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@230 = private unnamed_addr constant [6 x i8] c"Values", align 1
@"_llgo_struct$sOcAC_ZOq0zUTjfUC4WQUDA-kMpBFrGHc6qNh-82d-Q$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 3 }, ptr @"*_llgo_go/ast.CommentGroup", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 5 }, ptr @"[]*_llgo_go/ast.Ident", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_go/ast.Expr", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @230, i64 6 }, ptr @"[]_llgo_go/ast.Expr", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"*_llgo_go/ast.CommentGroup", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8

; Function Attrs: null_pointer_is_valid
define { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.FindNode"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) #0 {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %0, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 1)
  br i1 false, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %6 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %2, align 8
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]" @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.Preorder"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %16 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %15, i32 0, i32 0
  store ptr %14, ptr %16, align 8
  %17 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %15, i32 0, i32 1
  store ptr %3, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %15, i32 0, i32 2
  store ptr %4, ptr %18, align 8
  %19 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %15, i32 0, i32 3
  store ptr %5, ptr %19, align 8
  %20 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.FindNode$1", ptr undef }, ptr %15, 1
  %21 = extractvalue %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]" %13, 1
  %22 = extractvalue %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]" %13, 0
  call void %22(ptr %21, { ptr, ptr } %20)
  %23 = load i64, ptr %14, align 4
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %25, i64 0
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, ptr %26, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %25, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  %31 = call i64 @"github.com/goplus/llgo/cl/_testgo/cursor.maskOf"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %2, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Inspector", ptr %33, i32 0, i32 0
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %34, align 8
  %36 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %2, align 8
  %37 = call { i32, i32 } @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.indices"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %36)
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = extractvalue { i32, i32 } %37, 1
  br label %_llgo_9

_llgo_3:                                          ; preds = %_llgo_7, %_llgo_6
  store %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" zeroinitializer, ptr %4, align 8
  store i1 false, ptr %5, align 1
  %40 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %4, align 8
  %41 = load i1, ptr %5, align 1
  %42 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %40, 0
  %43 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %42, i1 %41, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %43

_llgo_4:                                          ; preds = %_llgo_1
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 36 }, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  unreachable

_llgo_5:                                          ; preds = %_llgo_1
  %46 = icmp eq i64 %23, 0
  br i1 %46, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  store i64 -2, ptr %14, align 4
  br label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_5
  %47 = icmp eq i64 %23, 1
  br i1 %47, label %_llgo_8, label %_llgo_3

_llgo_8:                                          ; preds = %_llgo_7
  %48 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %4, align 8
  %49 = load i1, ptr %5, align 1
  %50 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %48, 0
  %51 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %50, i1 %49, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %51

_llgo_9:                                          ; preds = %_llgo_13, %_llgo_2
  %52 = phi i32 [ %38, %_llgo_2 ], [ %75, %_llgo_13 ]
  %53 = icmp slt i32 %52, %39
  br i1 %53, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %54 = alloca %"github.com/goplus/llgo/cl/_testgo/cursor.event", align 8
  call void @llvm.memset(ptr %54, i8 0, i64 32, i1 false)
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 0
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 1
  %57 = sext i32 %52 to i64
  %58 = icmp slt i64 %57, 0
  %59 = icmp sge i64 %57, %56
  %60 = or i1 %59, %58
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %60)
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %55, i64 %57
  %62 = load %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %61, align 8
  store %"github.com/goplus/llgo/cl/_testgo/cursor.event" %62, ptr %54, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %54, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp sgt i32 %64, %52
  br i1 %65, label %_llgo_12, label %_llgo_13

_llgo_11:                                         ; preds = %_llgo_9
  store %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" zeroinitializer, ptr %4, align 8
  store i1 false, ptr %5, align 1
  %66 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %4, align 8
  %67 = load i1, ptr %5, align 1
  %68 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %66, 0
  %69 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %68, i1 %67, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %69

_llgo_12:                                         ; preds = %_llgo_10
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %54, i32 0, i32 1
  %71 = load i64, ptr %70, align 4
  %72 = and i64 %71, %31
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %_llgo_16, label %_llgo_15

_llgo_13:                                         ; preds = %_llgo_17, %_llgo_15, %_llgo_10
  %74 = phi i32 [ %52, %_llgo_10 ], [ %52, %_llgo_15 ], [ %87, %_llgo_17 ]
  %75 = add i32 %74, 1
  br label %_llgo_9

_llgo_14:                                         ; preds = %_llgo_16
  %76 = alloca %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", align 8
  call void @llvm.memset(ptr %76, i8 0, i64 16, i1 false)
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %76, i32 0, i32 0
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %2, i32 0, i32 0
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %76, i32 0, i32 1
  store ptr %79, ptr %77, align 8
  store i32 %52, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %76, align 8
  store %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %81, ptr %4, align 8
  store i1 true, ptr %5, align 1
  %82 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %4, align 8
  %83 = load i1, ptr %5, align 1
  %84 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %82, 0
  %85 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %84, i1 %83, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %85

_llgo_15:                                         ; preds = %_llgo_16, %_llgo_12
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %54, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 0
  %89 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 1
  %90 = sext i32 %87 to i64
  %91 = icmp slt i64 %90, 0
  %92 = icmp sge i64 %90, %89
  %93 = or i1 %92, %91
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %93)
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %88, i64 %90
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %94, i32 0, i32 1
  %96 = load i64, ptr %95, align 4
  %97 = and i64 %96, %31
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %_llgo_17, label %_llgo_13

_llgo_16:                                         ; preds = %_llgo_12
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %54, i32 0, i32 0
  %100 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %99, align 8
  %101 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %100)
  %103 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %100, 1
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %102, 0
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %104, ptr %103, 1
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %101)
  %107 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %101, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %106, 0
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %108, ptr %107, 1
  %110 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %105, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %109)
  br i1 %110, label %_llgo_14, label %_llgo_15

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_13
}

; Function Attrs: null_pointer_is_valid
define i1 @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.FindNode$1"(ptr %0, %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %1) #0 {
_llgo_0:
  %2 = load { ptr, ptr, ptr, ptr }, ptr %0, align 8
  %3 = extractvalue { ptr, ptr, ptr, ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %6 = extractvalue { ptr, ptr, ptr, ptr } %2, 0
  store i64 -1, ptr %6, align 4
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.Node"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %1)
  %8 = extractvalue { ptr, ptr, ptr, ptr } %2, 1
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %10, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %11, 1
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  %18 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  br i1 %18, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %21 = extractvalue { ptr, ptr, ptr, ptr } %2, 2
  store %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %1, ptr %21, align 8
  %22 = extractvalue { ptr, ptr, ptr, ptr } %2, 3
  store i1 true, ptr %22, align 1
  %23 = extractvalue { ptr, ptr, ptr, ptr } %2, 0
  store i64 1, ptr %23, align 4
  ret i1 false

_llgo_4:                                          ; preds = %_llgo_1
  %24 = extractvalue { ptr, ptr, ptr, ptr } %2, 0
  store i64 0, ptr %24, align 4
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.Node"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %0) #0 {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %1, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %1, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Inspector", ptr %6, i32 0, i32 0
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 0
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 1
  %13 = sext i32 %10 to i64
  %14 = icmp slt i64 %13, 0
  %15 = icmp sge i64 %13, %12
  %16 = or i1 %15, %14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %16)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %11, i64 %13
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %17, i32 0, i32 0
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %18, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19
}

; Function Attrs: null_pointer_is_valid
define %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]" @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.Preorder"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) #0 {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %0, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %4 = call i64 @"github.com/goplus/llgo/cl/_testgo/cursor.maskOf"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  store i64 %4, ptr %3, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 0
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 1
  store ptr %3, ptr %7, align 8
  %8 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.Preorder$1", ptr undef }, ptr %5, 1
  %9 = alloca %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]", align 8
  store { ptr, ptr } %8, ptr %9, align 8
  %10 = load %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]", ptr %9, align 8
  ret %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]" %10
}

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.Preorder$1"(ptr %0, { ptr, ptr } %1) #0 {
_llgo_0:
  %2 = load { ptr, ptr }, ptr %0, align 8
  %3 = extractvalue { ptr, ptr } %2, 0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Inspector", ptr %5, i32 0, i32 0
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %6, align 8
  %8 = extractvalue { ptr, ptr } %2, 0
  %9 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %8, align 8
  %10 = call { i32, i32 } @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.indices"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %9)
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = extractvalue { i32, i32 } %10, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_8, %_llgo_0
  %13 = phi i32 [ %11, %_llgo_0 ], [ %59, %_llgo_8 ], [ %33, %_llgo_5 ]
  %14 = icmp slt i32 %13, %12
  br i1 %14, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %15 = alloca %"github.com/goplus/llgo/cl/_testgo/cursor.event", align 8
  call void @llvm.memset(ptr %15, i8 0, i64 32, i1 false)
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %18 = sext i32 %13 to i64
  %19 = icmp slt i64 %18, 0
  %20 = icmp sge i64 %18, %17
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %16, i64 %18
  %23 = load %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %22, align 8
  store %"github.com/goplus/llgo/cl/_testgo/cursor.event" %23, ptr %15, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %15, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, %13
  br i1 %26, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_7, %_llgo_1
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %15, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = extractvalue { ptr, ptr } %2, 1
  %30 = load i64, ptr %29, align 4
  %31 = and i64 %28, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %_llgo_7, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_2
  %33 = add i32 %13, 1
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %15, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %38 = sext i32 %35 to i64
  %39 = icmp slt i64 %38, 0
  %40 = icmp sge i64 %38, %37
  %41 = or i1 %40, %39
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %41)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %36, i64 %38
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %42, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  %45 = extractvalue { ptr, ptr } %2, 1
  %46 = load i64, ptr %45, align 4
  %47 = and i64 %44, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %_llgo_8, label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_4
  %49 = alloca %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", align 8
  call void @llvm.memset(ptr %49, i8 0, i64 16, i1 false)
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %49, i32 0, i32 0
  %51 = extractvalue { ptr, ptr } %2, 0
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %51, i32 0, i32 0
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %49, i32 0, i32 1
  store ptr %53, ptr %50, align 8
  store i32 %13, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %49, align 8
  %56 = extractvalue { ptr, ptr } %1, 1
  %57 = extractvalue { ptr, ptr } %1, 0
  %58 = call i1 %57(ptr %56, %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %55)
  br i1 %58, label %_llgo_6, label %_llgo_3

_llgo_8:                                          ; preds = %_llgo_6
  %59 = add i32 %35, 1
  br label %_llgo_1
}

; Function Attrs: null_pointer_is_valid
define { i32, i32 } @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.indices"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %0) #0 {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %1, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %1, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Inspector", ptr %6, i32 0, i32 0
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 1
  %10 = trunc i64 %9 to i32
  %11 = insertvalue { i32, i32 } { i32 0, i32 undef }, i32 %10, 1
  ret { i32, i32 } %11

_llgo_2:                                          ; preds = %_llgo_0
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %1, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Inspector", ptr %15, i32 0, i32 0
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 0
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 1
  %22 = sext i32 %19 to i64
  %23 = icmp slt i64 %22, 0
  %24 = icmp sge i64 %22, %21
  %25 = or i1 %24, %23
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %25)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %20, i64 %22
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.event", ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = insertvalue { i32, i32 } undef, i32 %13, 0
  %31 = insertvalue { i32, i32 } %30, i32 %29, 1
  ret { i32, i32 } %31
}

; Function Attrs: null_pointer_is_valid
define { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } @"github.com/goplus/llgo/cl/_testgo/cursor.(*Cursor).FindNode"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) #0 {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %0, align 8
  %3 = call { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.FindNode"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %2, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %4 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %3, 0
  %5 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %3, 1
  %6 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %4, 0
  %7 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %6, i1 %5, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", i1 } %7
}

; Function Attrs: null_pointer_is_valid
define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/cursor.(*Cursor).Node"(ptr %0) #0 {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.Node"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2
}

; Function Attrs: null_pointer_is_valid
define %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]" @"github.com/goplus/llgo/cl/_testgo/cursor.(*Cursor).Preorder"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) #0 {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %0, align 8
  %3 = call %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]" @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.Preorder"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  ret %"iter.Seq[github.com/goplus/llgo/cl/_testgo/cursor.Cursor]" %3
}

; Function Attrs: null_pointer_is_valid
define { i32, i32 } @"github.com/goplus/llgo/cl/_testgo/cursor.(*Cursor).indices"(ptr %0) #0 {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %0, align 8
  %2 = call { i32, i32 } @"github.com/goplus/llgo/cl/_testgo/cursor.Cursor.indices"(%"github.com/goplus/llgo/cl/_testgo/cursor.Cursor" %1)
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  %5 = insertvalue { i32, i32 } undef, i32 %3, 0
  %6 = insertvalue { i32, i32 } %5, i32 %4, 1
  ret { i32, i32 } %6
}

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testgo/cursor.init"() #0 {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/cursor.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/cursor.init$guard", align 1
  call void @"go/ast.init"()
  call void @iter.init()
  call void @math.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testgo/cursor.main"() #0 {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cursor.Cursor", ptr %0, i32 0, i32 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  store ptr %2, ptr %1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
define i64 @"github.com/goplus/llgo/cl/_testgo/cursor.maskOf"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) #0 {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 -1

_llgo_2:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_2
  %4 = phi i64 [ 0, %_llgo_2 ], [ %16, %_llgo_4 ]
  %5 = phi i64 [ -1, %_llgo_2 ], [ %6, %_llgo_4 ]
  %6 = add i64 %5, 1
  %7 = icmp slt i64 %6, %3
  br i1 %7, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %10 = icmp slt i64 %6, 0
  %11 = icmp sge i64 %6, %9
  %12 = or i1 %11, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %12)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, i64 %6
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %13, align 8
  %15 = call i64 @"github.com/goplus/llgo/cl/_testgo/cursor.typeOf"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %14)
  %16 = or i64 %4, %15
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_3
  ret i64 %4
}

; Function Attrs: null_pointer_is_valid
define i64 @"github.com/goplus/llgo/cl/_testgo/cursor.typeOf"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = icmp eq ptr %1, @"*_llgo_go/ast.Ident"
  br i1 %2, label %_llgo_115, label %_llgo_116

_llgo_1:                                          ; preds = %_llgo_117
  ret i64 1073741824

_llgo_2:                                          ; preds = %_llgo_117
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %4 = icmp eq ptr %3, @"*_llgo_go/ast.ArrayType"
  br i1 %4, label %_llgo_118, label %_llgo_119

_llgo_3:                                          ; preds = %_llgo_120
  ret i64 1

_llgo_4:                                          ; preds = %_llgo_120
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %6 = icmp eq ptr %5, @"*_llgo_go/ast.AssignStmt"
  br i1 %6, label %_llgo_121, label %_llgo_122

_llgo_5:                                          ; preds = %_llgo_123
  ret i64 2

_llgo_6:                                          ; preds = %_llgo_123
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %8 = icmp eq ptr %7, @"*_llgo_go/ast.BadDecl"
  br i1 %8, label %_llgo_124, label %_llgo_125

_llgo_7:                                          ; preds = %_llgo_126
  ret i64 4

_llgo_8:                                          ; preds = %_llgo_126
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %10 = icmp eq ptr %9, @"*_llgo_go/ast.BadExpr"
  br i1 %10, label %_llgo_127, label %_llgo_128

_llgo_9:                                          ; preds = %_llgo_129
  ret i64 8

_llgo_10:                                         ; preds = %_llgo_129
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %12 = icmp eq ptr %11, @"*_llgo_go/ast.BadStmt"
  br i1 %12, label %_llgo_130, label %_llgo_131

_llgo_11:                                         ; preds = %_llgo_132
  ret i64 16

_llgo_12:                                         ; preds = %_llgo_132
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %14 = icmp eq ptr %13, @"*_llgo_go/ast.BasicLit"
  br i1 %14, label %_llgo_133, label %_llgo_134

_llgo_13:                                         ; preds = %_llgo_135
  ret i64 32

_llgo_14:                                         ; preds = %_llgo_135
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %16 = icmp eq ptr %15, @"*_llgo_go/ast.BinaryExpr"
  br i1 %16, label %_llgo_136, label %_llgo_137

_llgo_15:                                         ; preds = %_llgo_138
  ret i64 64

_llgo_16:                                         ; preds = %_llgo_138
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %18 = icmp eq ptr %17, @"*_llgo_go/ast.BlockStmt"
  br i1 %18, label %_llgo_139, label %_llgo_140

_llgo_17:                                         ; preds = %_llgo_141
  ret i64 128

_llgo_18:                                         ; preds = %_llgo_141
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %20 = icmp eq ptr %19, @"*_llgo_go/ast.BranchStmt"
  br i1 %20, label %_llgo_142, label %_llgo_143

_llgo_19:                                         ; preds = %_llgo_144
  ret i64 256

_llgo_20:                                         ; preds = %_llgo_144
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %22 = icmp eq ptr %21, @"*_llgo_go/ast.CallExpr"
  br i1 %22, label %_llgo_145, label %_llgo_146

_llgo_21:                                         ; preds = %_llgo_147
  ret i64 512

_llgo_22:                                         ; preds = %_llgo_147
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %24 = icmp eq ptr %23, @"*_llgo_go/ast.CaseClause"
  br i1 %24, label %_llgo_148, label %_llgo_149

_llgo_23:                                         ; preds = %_llgo_150
  ret i64 1024

_llgo_24:                                         ; preds = %_llgo_150
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %26 = icmp eq ptr %25, @"*_llgo_go/ast.ChanType"
  br i1 %26, label %_llgo_151, label %_llgo_152

_llgo_25:                                         ; preds = %_llgo_153
  ret i64 2048

_llgo_26:                                         ; preds = %_llgo_153
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %28 = icmp eq ptr %27, @"*_llgo_go/ast.CommClause"
  br i1 %28, label %_llgo_154, label %_llgo_155

_llgo_27:                                         ; preds = %_llgo_156
  ret i64 4096

_llgo_28:                                         ; preds = %_llgo_156
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %30 = icmp eq ptr %29, @"*_llgo_go/ast.Comment"
  br i1 %30, label %_llgo_157, label %_llgo_158

_llgo_29:                                         ; preds = %_llgo_159
  ret i64 8192

_llgo_30:                                         ; preds = %_llgo_159
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %32 = icmp eq ptr %31, @"*_llgo_go/ast.CommentGroup"
  br i1 %32, label %_llgo_160, label %_llgo_161

_llgo_31:                                         ; preds = %_llgo_162
  ret i64 16384

_llgo_32:                                         ; preds = %_llgo_162
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %34 = icmp eq ptr %33, @"*_llgo_go/ast.CompositeLit"
  br i1 %34, label %_llgo_163, label %_llgo_164

_llgo_33:                                         ; preds = %_llgo_165
  ret i64 32768

_llgo_34:                                         ; preds = %_llgo_165
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %36 = icmp eq ptr %35, @"*_llgo_go/ast.DeclStmt"
  br i1 %36, label %_llgo_166, label %_llgo_167

_llgo_35:                                         ; preds = %_llgo_168
  ret i64 65536

_llgo_36:                                         ; preds = %_llgo_168
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %38 = icmp eq ptr %37, @"*_llgo_go/ast.DeferStmt"
  br i1 %38, label %_llgo_169, label %_llgo_170

_llgo_37:                                         ; preds = %_llgo_171
  ret i64 131072

_llgo_38:                                         ; preds = %_llgo_171
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %40 = icmp eq ptr %39, @"*_llgo_go/ast.Ellipsis"
  br i1 %40, label %_llgo_172, label %_llgo_173

_llgo_39:                                         ; preds = %_llgo_174
  ret i64 262144

_llgo_40:                                         ; preds = %_llgo_174
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %42 = icmp eq ptr %41, @"*_llgo_go/ast.EmptyStmt"
  br i1 %42, label %_llgo_175, label %_llgo_176

_llgo_41:                                         ; preds = %_llgo_177
  ret i64 524288

_llgo_42:                                         ; preds = %_llgo_177
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %44 = icmp eq ptr %43, @"*_llgo_go/ast.ExprStmt"
  br i1 %44, label %_llgo_178, label %_llgo_179

_llgo_43:                                         ; preds = %_llgo_180
  ret i64 1048576

_llgo_44:                                         ; preds = %_llgo_180
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %46 = icmp eq ptr %45, @"*_llgo_go/ast.Field"
  br i1 %46, label %_llgo_181, label %_llgo_182

_llgo_45:                                         ; preds = %_llgo_183
  ret i64 2097152

_llgo_46:                                         ; preds = %_llgo_183
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %48 = icmp eq ptr %47, @"*_llgo_go/ast.FieldList"
  br i1 %48, label %_llgo_184, label %_llgo_185

_llgo_47:                                         ; preds = %_llgo_186
  ret i64 4194304

_llgo_48:                                         ; preds = %_llgo_186
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %50 = icmp eq ptr %49, @"*_llgo_go/ast.File"
  br i1 %50, label %_llgo_187, label %_llgo_188

_llgo_49:                                         ; preds = %_llgo_189
  ret i64 8388608

_llgo_50:                                         ; preds = %_llgo_189
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %52 = icmp eq ptr %51, @"*_llgo_go/ast.ForStmt"
  br i1 %52, label %_llgo_190, label %_llgo_191

_llgo_51:                                         ; preds = %_llgo_192
  ret i64 16777216

_llgo_52:                                         ; preds = %_llgo_192
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %54 = icmp eq ptr %53, @"*_llgo_go/ast.FuncDecl"
  br i1 %54, label %_llgo_193, label %_llgo_194

_llgo_53:                                         ; preds = %_llgo_195
  ret i64 33554432

_llgo_54:                                         ; preds = %_llgo_195
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %56 = icmp eq ptr %55, @"*_llgo_go/ast.FuncLit"
  br i1 %56, label %_llgo_196, label %_llgo_197

_llgo_55:                                         ; preds = %_llgo_198
  ret i64 67108864

_llgo_56:                                         ; preds = %_llgo_198
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %58 = icmp eq ptr %57, @"*_llgo_go/ast.FuncType"
  br i1 %58, label %_llgo_199, label %_llgo_200

_llgo_57:                                         ; preds = %_llgo_201
  ret i64 134217728

_llgo_58:                                         ; preds = %_llgo_201
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %60 = icmp eq ptr %59, @"*_llgo_go/ast.GenDecl"
  br i1 %60, label %_llgo_202, label %_llgo_203

_llgo_59:                                         ; preds = %_llgo_204
  ret i64 268435456

_llgo_60:                                         ; preds = %_llgo_204
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %62 = icmp eq ptr %61, @"*_llgo_go/ast.GoStmt"
  br i1 %62, label %_llgo_205, label %_llgo_206

_llgo_61:                                         ; preds = %_llgo_207
  ret i64 536870912

_llgo_62:                                         ; preds = %_llgo_207
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %64 = icmp eq ptr %63, @"*_llgo_go/ast.Ident"
  br i1 %64, label %_llgo_208, label %_llgo_209

_llgo_63:                                         ; preds = %_llgo_210
  ret i64 1073741824

_llgo_64:                                         ; preds = %_llgo_210
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %66 = icmp eq ptr %65, @"*_llgo_go/ast.IfStmt"
  br i1 %66, label %_llgo_211, label %_llgo_212

_llgo_65:                                         ; preds = %_llgo_213
  ret i64 2147483648

_llgo_66:                                         ; preds = %_llgo_213
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %68 = icmp eq ptr %67, @"*_llgo_go/ast.ImportSpec"
  br i1 %68, label %_llgo_214, label %_llgo_215

_llgo_67:                                         ; preds = %_llgo_216
  ret i64 4294967296

_llgo_68:                                         ; preds = %_llgo_216
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %70 = icmp eq ptr %69, @"*_llgo_go/ast.IncDecStmt"
  br i1 %70, label %_llgo_217, label %_llgo_218

_llgo_69:                                         ; preds = %_llgo_219
  ret i64 8589934592

_llgo_70:                                         ; preds = %_llgo_219
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %72 = icmp eq ptr %71, @"*_llgo_go/ast.IndexExpr"
  br i1 %72, label %_llgo_220, label %_llgo_221

_llgo_71:                                         ; preds = %_llgo_222
  ret i64 17179869184

_llgo_72:                                         ; preds = %_llgo_222
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %74 = icmp eq ptr %73, @"*_llgo_go/ast.IndexListExpr"
  br i1 %74, label %_llgo_223, label %_llgo_224

_llgo_73:                                         ; preds = %_llgo_225
  ret i64 34359738368

_llgo_74:                                         ; preds = %_llgo_225
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %76 = icmp eq ptr %75, @"*_llgo_go/ast.InterfaceType"
  br i1 %76, label %_llgo_226, label %_llgo_227

_llgo_75:                                         ; preds = %_llgo_228
  ret i64 68719476736

_llgo_76:                                         ; preds = %_llgo_228
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %78 = icmp eq ptr %77, @"*_llgo_go/ast.KeyValueExpr"
  br i1 %78, label %_llgo_229, label %_llgo_230

_llgo_77:                                         ; preds = %_llgo_231
  ret i64 137438953472

_llgo_78:                                         ; preds = %_llgo_231
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %80 = icmp eq ptr %79, @"*_llgo_go/ast.LabeledStmt"
  br i1 %80, label %_llgo_232, label %_llgo_233

_llgo_79:                                         ; preds = %_llgo_234
  ret i64 274877906944

_llgo_80:                                         ; preds = %_llgo_234
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %82 = icmp eq ptr %81, @"*_llgo_go/ast.MapType"
  br i1 %82, label %_llgo_235, label %_llgo_236

_llgo_81:                                         ; preds = %_llgo_237
  ret i64 549755813888

_llgo_82:                                         ; preds = %_llgo_237
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %84 = icmp eq ptr %83, @"*_llgo_go/ast.Package"
  br i1 %84, label %_llgo_238, label %_llgo_239

_llgo_83:                                         ; preds = %_llgo_240
  ret i64 1099511627776

_llgo_84:                                         ; preds = %_llgo_240
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %86 = icmp eq ptr %85, @"*_llgo_go/ast.ParenExpr"
  br i1 %86, label %_llgo_241, label %_llgo_242

_llgo_85:                                         ; preds = %_llgo_243
  ret i64 2199023255552

_llgo_86:                                         ; preds = %_llgo_243
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %88 = icmp eq ptr %87, @"*_llgo_go/ast.RangeStmt"
  br i1 %88, label %_llgo_244, label %_llgo_245

_llgo_87:                                         ; preds = %_llgo_246
  ret i64 4398046511104

_llgo_88:                                         ; preds = %_llgo_246
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %90 = icmp eq ptr %89, @"*_llgo_go/ast.ReturnStmt"
  br i1 %90, label %_llgo_247, label %_llgo_248

_llgo_89:                                         ; preds = %_llgo_249
  ret i64 8796093022208

_llgo_90:                                         ; preds = %_llgo_249
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %92 = icmp eq ptr %91, @"*_llgo_go/ast.SelectStmt"
  br i1 %92, label %_llgo_250, label %_llgo_251

_llgo_91:                                         ; preds = %_llgo_252
  ret i64 17592186044416

_llgo_92:                                         ; preds = %_llgo_252
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %94 = icmp eq ptr %93, @"*_llgo_go/ast.SelectorExpr"
  br i1 %94, label %_llgo_253, label %_llgo_254

_llgo_93:                                         ; preds = %_llgo_255
  ret i64 35184372088832

_llgo_94:                                         ; preds = %_llgo_255
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %96 = icmp eq ptr %95, @"*_llgo_go/ast.SendStmt"
  br i1 %96, label %_llgo_256, label %_llgo_257

_llgo_95:                                         ; preds = %_llgo_258
  ret i64 70368744177664

_llgo_96:                                         ; preds = %_llgo_258
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %98 = icmp eq ptr %97, @"*_llgo_go/ast.SliceExpr"
  br i1 %98, label %_llgo_259, label %_llgo_260

_llgo_97:                                         ; preds = %_llgo_261
  ret i64 140737488355328

_llgo_98:                                         ; preds = %_llgo_261
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %100 = icmp eq ptr %99, @"*_llgo_go/ast.StarExpr"
  br i1 %100, label %_llgo_262, label %_llgo_263

_llgo_99:                                         ; preds = %_llgo_264
  ret i64 281474976710656

_llgo_100:                                        ; preds = %_llgo_264
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %102 = icmp eq ptr %101, @"*_llgo_go/ast.StructType"
  br i1 %102, label %_llgo_265, label %_llgo_266

_llgo_101:                                        ; preds = %_llgo_267
  ret i64 562949953421312

_llgo_102:                                        ; preds = %_llgo_267
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %104 = icmp eq ptr %103, @"*_llgo_go/ast.SwitchStmt"
  br i1 %104, label %_llgo_268, label %_llgo_269

_llgo_103:                                        ; preds = %_llgo_270
  ret i64 1125899906842624

_llgo_104:                                        ; preds = %_llgo_270
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %106 = icmp eq ptr %105, @"*_llgo_go/ast.TypeAssertExpr"
  br i1 %106, label %_llgo_271, label %_llgo_272

_llgo_105:                                        ; preds = %_llgo_273
  ret i64 2251799813685248

_llgo_106:                                        ; preds = %_llgo_273
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %108 = icmp eq ptr %107, @"*_llgo_go/ast.TypeSpec"
  br i1 %108, label %_llgo_274, label %_llgo_275

_llgo_107:                                        ; preds = %_llgo_276
  ret i64 4503599627370496

_llgo_108:                                        ; preds = %_llgo_276
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %110 = icmp eq ptr %109, @"*_llgo_go/ast.TypeSwitchStmt"
  br i1 %110, label %_llgo_277, label %_llgo_278

_llgo_109:                                        ; preds = %_llgo_279
  ret i64 9007199254740992

_llgo_110:                                        ; preds = %_llgo_279
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %112 = icmp eq ptr %111, @"*_llgo_go/ast.UnaryExpr"
  br i1 %112, label %_llgo_280, label %_llgo_281

_llgo_111:                                        ; preds = %_llgo_282
  ret i64 18014398509481984

_llgo_112:                                        ; preds = %_llgo_282
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %114 = icmp eq ptr %113, @"*_llgo_go/ast.ValueSpec"
  br i1 %114, label %_llgo_283, label %_llgo_284

_llgo_113:                                        ; preds = %_llgo_285
  ret i64 36028797018963968

_llgo_114:                                        ; preds = %_llgo_285
  ret i64 0

_llgo_115:                                        ; preds = %_llgo_0
  %115 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %116 = insertvalue { ptr, i1 } undef, ptr %115, 0
  %117 = insertvalue { ptr, i1 } %116, i1 true, 1
  br label %_llgo_117

_llgo_116:                                        ; preds = %_llgo_0
  br label %_llgo_117

_llgo_117:                                        ; preds = %_llgo_116, %_llgo_115
  %118 = phi { ptr, i1 } [ %117, %_llgo_115 ], [ zeroinitializer, %_llgo_116 ]
  %119 = extractvalue { ptr, i1 } %118, 0
  %120 = extractvalue { ptr, i1 } %118, 1
  br i1 %120, label %_llgo_1, label %_llgo_2

_llgo_118:                                        ; preds = %_llgo_2
  %121 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %122 = insertvalue { ptr, i1 } undef, ptr %121, 0
  %123 = insertvalue { ptr, i1 } %122, i1 true, 1
  br label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_2
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %124 = phi { ptr, i1 } [ %123, %_llgo_118 ], [ zeroinitializer, %_llgo_119 ]
  %125 = extractvalue { ptr, i1 } %124, 0
  %126 = extractvalue { ptr, i1 } %124, 1
  br i1 %126, label %_llgo_3, label %_llgo_4

_llgo_121:                                        ; preds = %_llgo_4
  %127 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %128 = insertvalue { ptr, i1 } undef, ptr %127, 0
  %129 = insertvalue { ptr, i1 } %128, i1 true, 1
  br label %_llgo_123

_llgo_122:                                        ; preds = %_llgo_4
  br label %_llgo_123

_llgo_123:                                        ; preds = %_llgo_122, %_llgo_121
  %130 = phi { ptr, i1 } [ %129, %_llgo_121 ], [ zeroinitializer, %_llgo_122 ]
  %131 = extractvalue { ptr, i1 } %130, 0
  %132 = extractvalue { ptr, i1 } %130, 1
  br i1 %132, label %_llgo_5, label %_llgo_6

_llgo_124:                                        ; preds = %_llgo_6
  %133 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %134 = insertvalue { ptr, i1 } undef, ptr %133, 0
  %135 = insertvalue { ptr, i1 } %134, i1 true, 1
  br label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_6
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %136 = phi { ptr, i1 } [ %135, %_llgo_124 ], [ zeroinitializer, %_llgo_125 ]
  %137 = extractvalue { ptr, i1 } %136, 0
  %138 = extractvalue { ptr, i1 } %136, 1
  br i1 %138, label %_llgo_7, label %_llgo_8

_llgo_127:                                        ; preds = %_llgo_8
  %139 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %140 = insertvalue { ptr, i1 } undef, ptr %139, 0
  %141 = insertvalue { ptr, i1 } %140, i1 true, 1
  br label %_llgo_129

_llgo_128:                                        ; preds = %_llgo_8
  br label %_llgo_129

_llgo_129:                                        ; preds = %_llgo_128, %_llgo_127
  %142 = phi { ptr, i1 } [ %141, %_llgo_127 ], [ zeroinitializer, %_llgo_128 ]
  %143 = extractvalue { ptr, i1 } %142, 0
  %144 = extractvalue { ptr, i1 } %142, 1
  br i1 %144, label %_llgo_9, label %_llgo_10

_llgo_130:                                        ; preds = %_llgo_10
  %145 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %146 = insertvalue { ptr, i1 } undef, ptr %145, 0
  %147 = insertvalue { ptr, i1 } %146, i1 true, 1
  br label %_llgo_132

_llgo_131:                                        ; preds = %_llgo_10
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_130
  %148 = phi { ptr, i1 } [ %147, %_llgo_130 ], [ zeroinitializer, %_llgo_131 ]
  %149 = extractvalue { ptr, i1 } %148, 0
  %150 = extractvalue { ptr, i1 } %148, 1
  br i1 %150, label %_llgo_11, label %_llgo_12

_llgo_133:                                        ; preds = %_llgo_12
  %151 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %152 = insertvalue { ptr, i1 } undef, ptr %151, 0
  %153 = insertvalue { ptr, i1 } %152, i1 true, 1
  br label %_llgo_135

_llgo_134:                                        ; preds = %_llgo_12
  br label %_llgo_135

_llgo_135:                                        ; preds = %_llgo_134, %_llgo_133
  %154 = phi { ptr, i1 } [ %153, %_llgo_133 ], [ zeroinitializer, %_llgo_134 ]
  %155 = extractvalue { ptr, i1 } %154, 0
  %156 = extractvalue { ptr, i1 } %154, 1
  br i1 %156, label %_llgo_13, label %_llgo_14

_llgo_136:                                        ; preds = %_llgo_14
  %157 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %158 = insertvalue { ptr, i1 } undef, ptr %157, 0
  %159 = insertvalue { ptr, i1 } %158, i1 true, 1
  br label %_llgo_138

_llgo_137:                                        ; preds = %_llgo_14
  br label %_llgo_138

_llgo_138:                                        ; preds = %_llgo_137, %_llgo_136
  %160 = phi { ptr, i1 } [ %159, %_llgo_136 ], [ zeroinitializer, %_llgo_137 ]
  %161 = extractvalue { ptr, i1 } %160, 0
  %162 = extractvalue { ptr, i1 } %160, 1
  br i1 %162, label %_llgo_15, label %_llgo_16

_llgo_139:                                        ; preds = %_llgo_16
  %163 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %164 = insertvalue { ptr, i1 } undef, ptr %163, 0
  %165 = insertvalue { ptr, i1 } %164, i1 true, 1
  br label %_llgo_141

_llgo_140:                                        ; preds = %_llgo_16
  br label %_llgo_141

_llgo_141:                                        ; preds = %_llgo_140, %_llgo_139
  %166 = phi { ptr, i1 } [ %165, %_llgo_139 ], [ zeroinitializer, %_llgo_140 ]
  %167 = extractvalue { ptr, i1 } %166, 0
  %168 = extractvalue { ptr, i1 } %166, 1
  br i1 %168, label %_llgo_17, label %_llgo_18

_llgo_142:                                        ; preds = %_llgo_18
  %169 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %170 = insertvalue { ptr, i1 } undef, ptr %169, 0
  %171 = insertvalue { ptr, i1 } %170, i1 true, 1
  br label %_llgo_144

_llgo_143:                                        ; preds = %_llgo_18
  br label %_llgo_144

_llgo_144:                                        ; preds = %_llgo_143, %_llgo_142
  %172 = phi { ptr, i1 } [ %171, %_llgo_142 ], [ zeroinitializer, %_llgo_143 ]
  %173 = extractvalue { ptr, i1 } %172, 0
  %174 = extractvalue { ptr, i1 } %172, 1
  br i1 %174, label %_llgo_19, label %_llgo_20

_llgo_145:                                        ; preds = %_llgo_20
  %175 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %176 = insertvalue { ptr, i1 } undef, ptr %175, 0
  %177 = insertvalue { ptr, i1 } %176, i1 true, 1
  br label %_llgo_147

_llgo_146:                                        ; preds = %_llgo_20
  br label %_llgo_147

_llgo_147:                                        ; preds = %_llgo_146, %_llgo_145
  %178 = phi { ptr, i1 } [ %177, %_llgo_145 ], [ zeroinitializer, %_llgo_146 ]
  %179 = extractvalue { ptr, i1 } %178, 0
  %180 = extractvalue { ptr, i1 } %178, 1
  br i1 %180, label %_llgo_21, label %_llgo_22

_llgo_148:                                        ; preds = %_llgo_22
  %181 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %182 = insertvalue { ptr, i1 } undef, ptr %181, 0
  %183 = insertvalue { ptr, i1 } %182, i1 true, 1
  br label %_llgo_150

_llgo_149:                                        ; preds = %_llgo_22
  br label %_llgo_150

_llgo_150:                                        ; preds = %_llgo_149, %_llgo_148
  %184 = phi { ptr, i1 } [ %183, %_llgo_148 ], [ zeroinitializer, %_llgo_149 ]
  %185 = extractvalue { ptr, i1 } %184, 0
  %186 = extractvalue { ptr, i1 } %184, 1
  br i1 %186, label %_llgo_23, label %_llgo_24

_llgo_151:                                        ; preds = %_llgo_24
  %187 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %188 = insertvalue { ptr, i1 } undef, ptr %187, 0
  %189 = insertvalue { ptr, i1 } %188, i1 true, 1
  br label %_llgo_153

_llgo_152:                                        ; preds = %_llgo_24
  br label %_llgo_153

_llgo_153:                                        ; preds = %_llgo_152, %_llgo_151
  %190 = phi { ptr, i1 } [ %189, %_llgo_151 ], [ zeroinitializer, %_llgo_152 ]
  %191 = extractvalue { ptr, i1 } %190, 0
  %192 = extractvalue { ptr, i1 } %190, 1
  br i1 %192, label %_llgo_25, label %_llgo_26

_llgo_154:                                        ; preds = %_llgo_26
  %193 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %194 = insertvalue { ptr, i1 } undef, ptr %193, 0
  %195 = insertvalue { ptr, i1 } %194, i1 true, 1
  br label %_llgo_156

_llgo_155:                                        ; preds = %_llgo_26
  br label %_llgo_156

_llgo_156:                                        ; preds = %_llgo_155, %_llgo_154
  %196 = phi { ptr, i1 } [ %195, %_llgo_154 ], [ zeroinitializer, %_llgo_155 ]
  %197 = extractvalue { ptr, i1 } %196, 0
  %198 = extractvalue { ptr, i1 } %196, 1
  br i1 %198, label %_llgo_27, label %_llgo_28

_llgo_157:                                        ; preds = %_llgo_28
  %199 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %200 = insertvalue { ptr, i1 } undef, ptr %199, 0
  %201 = insertvalue { ptr, i1 } %200, i1 true, 1
  br label %_llgo_159

_llgo_158:                                        ; preds = %_llgo_28
  br label %_llgo_159

_llgo_159:                                        ; preds = %_llgo_158, %_llgo_157
  %202 = phi { ptr, i1 } [ %201, %_llgo_157 ], [ zeroinitializer, %_llgo_158 ]
  %203 = extractvalue { ptr, i1 } %202, 0
  %204 = extractvalue { ptr, i1 } %202, 1
  br i1 %204, label %_llgo_29, label %_llgo_30

_llgo_160:                                        ; preds = %_llgo_30
  %205 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %206 = insertvalue { ptr, i1 } undef, ptr %205, 0
  %207 = insertvalue { ptr, i1 } %206, i1 true, 1
  br label %_llgo_162

_llgo_161:                                        ; preds = %_llgo_30
  br label %_llgo_162

_llgo_162:                                        ; preds = %_llgo_161, %_llgo_160
  %208 = phi { ptr, i1 } [ %207, %_llgo_160 ], [ zeroinitializer, %_llgo_161 ]
  %209 = extractvalue { ptr, i1 } %208, 0
  %210 = extractvalue { ptr, i1 } %208, 1
  br i1 %210, label %_llgo_31, label %_llgo_32

_llgo_163:                                        ; preds = %_llgo_32
  %211 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %212 = insertvalue { ptr, i1 } undef, ptr %211, 0
  %213 = insertvalue { ptr, i1 } %212, i1 true, 1
  br label %_llgo_165

_llgo_164:                                        ; preds = %_llgo_32
  br label %_llgo_165

_llgo_165:                                        ; preds = %_llgo_164, %_llgo_163
  %214 = phi { ptr, i1 } [ %213, %_llgo_163 ], [ zeroinitializer, %_llgo_164 ]
  %215 = extractvalue { ptr, i1 } %214, 0
  %216 = extractvalue { ptr, i1 } %214, 1
  br i1 %216, label %_llgo_33, label %_llgo_34

_llgo_166:                                        ; preds = %_llgo_34
  %217 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %218 = insertvalue { ptr, i1 } undef, ptr %217, 0
  %219 = insertvalue { ptr, i1 } %218, i1 true, 1
  br label %_llgo_168

_llgo_167:                                        ; preds = %_llgo_34
  br label %_llgo_168

_llgo_168:                                        ; preds = %_llgo_167, %_llgo_166
  %220 = phi { ptr, i1 } [ %219, %_llgo_166 ], [ zeroinitializer, %_llgo_167 ]
  %221 = extractvalue { ptr, i1 } %220, 0
  %222 = extractvalue { ptr, i1 } %220, 1
  br i1 %222, label %_llgo_35, label %_llgo_36

_llgo_169:                                        ; preds = %_llgo_36
  %223 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %224 = insertvalue { ptr, i1 } undef, ptr %223, 0
  %225 = insertvalue { ptr, i1 } %224, i1 true, 1
  br label %_llgo_171

_llgo_170:                                        ; preds = %_llgo_36
  br label %_llgo_171

_llgo_171:                                        ; preds = %_llgo_170, %_llgo_169
  %226 = phi { ptr, i1 } [ %225, %_llgo_169 ], [ zeroinitializer, %_llgo_170 ]
  %227 = extractvalue { ptr, i1 } %226, 0
  %228 = extractvalue { ptr, i1 } %226, 1
  br i1 %228, label %_llgo_37, label %_llgo_38

_llgo_172:                                        ; preds = %_llgo_38
  %229 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %230 = insertvalue { ptr, i1 } undef, ptr %229, 0
  %231 = insertvalue { ptr, i1 } %230, i1 true, 1
  br label %_llgo_174

_llgo_173:                                        ; preds = %_llgo_38
  br label %_llgo_174

_llgo_174:                                        ; preds = %_llgo_173, %_llgo_172
  %232 = phi { ptr, i1 } [ %231, %_llgo_172 ], [ zeroinitializer, %_llgo_173 ]
  %233 = extractvalue { ptr, i1 } %232, 0
  %234 = extractvalue { ptr, i1 } %232, 1
  br i1 %234, label %_llgo_39, label %_llgo_40

_llgo_175:                                        ; preds = %_llgo_40
  %235 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %236 = insertvalue { ptr, i1 } undef, ptr %235, 0
  %237 = insertvalue { ptr, i1 } %236, i1 true, 1
  br label %_llgo_177

_llgo_176:                                        ; preds = %_llgo_40
  br label %_llgo_177

_llgo_177:                                        ; preds = %_llgo_176, %_llgo_175
  %238 = phi { ptr, i1 } [ %237, %_llgo_175 ], [ zeroinitializer, %_llgo_176 ]
  %239 = extractvalue { ptr, i1 } %238, 0
  %240 = extractvalue { ptr, i1 } %238, 1
  br i1 %240, label %_llgo_41, label %_llgo_42

_llgo_178:                                        ; preds = %_llgo_42
  %241 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %242 = insertvalue { ptr, i1 } undef, ptr %241, 0
  %243 = insertvalue { ptr, i1 } %242, i1 true, 1
  br label %_llgo_180

_llgo_179:                                        ; preds = %_llgo_42
  br label %_llgo_180

_llgo_180:                                        ; preds = %_llgo_179, %_llgo_178
  %244 = phi { ptr, i1 } [ %243, %_llgo_178 ], [ zeroinitializer, %_llgo_179 ]
  %245 = extractvalue { ptr, i1 } %244, 0
  %246 = extractvalue { ptr, i1 } %244, 1
  br i1 %246, label %_llgo_43, label %_llgo_44

_llgo_181:                                        ; preds = %_llgo_44
  %247 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %248 = insertvalue { ptr, i1 } undef, ptr %247, 0
  %249 = insertvalue { ptr, i1 } %248, i1 true, 1
  br label %_llgo_183

_llgo_182:                                        ; preds = %_llgo_44
  br label %_llgo_183

_llgo_183:                                        ; preds = %_llgo_182, %_llgo_181
  %250 = phi { ptr, i1 } [ %249, %_llgo_181 ], [ zeroinitializer, %_llgo_182 ]
  %251 = extractvalue { ptr, i1 } %250, 0
  %252 = extractvalue { ptr, i1 } %250, 1
  br i1 %252, label %_llgo_45, label %_llgo_46

_llgo_184:                                        ; preds = %_llgo_46
  %253 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %254 = insertvalue { ptr, i1 } undef, ptr %253, 0
  %255 = insertvalue { ptr, i1 } %254, i1 true, 1
  br label %_llgo_186

_llgo_185:                                        ; preds = %_llgo_46
  br label %_llgo_186

_llgo_186:                                        ; preds = %_llgo_185, %_llgo_184
  %256 = phi { ptr, i1 } [ %255, %_llgo_184 ], [ zeroinitializer, %_llgo_185 ]
  %257 = extractvalue { ptr, i1 } %256, 0
  %258 = extractvalue { ptr, i1 } %256, 1
  br i1 %258, label %_llgo_47, label %_llgo_48

_llgo_187:                                        ; preds = %_llgo_48
  %259 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %260 = insertvalue { ptr, i1 } undef, ptr %259, 0
  %261 = insertvalue { ptr, i1 } %260, i1 true, 1
  br label %_llgo_189

_llgo_188:                                        ; preds = %_llgo_48
  br label %_llgo_189

_llgo_189:                                        ; preds = %_llgo_188, %_llgo_187
  %262 = phi { ptr, i1 } [ %261, %_llgo_187 ], [ zeroinitializer, %_llgo_188 ]
  %263 = extractvalue { ptr, i1 } %262, 0
  %264 = extractvalue { ptr, i1 } %262, 1
  br i1 %264, label %_llgo_49, label %_llgo_50

_llgo_190:                                        ; preds = %_llgo_50
  %265 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %266 = insertvalue { ptr, i1 } undef, ptr %265, 0
  %267 = insertvalue { ptr, i1 } %266, i1 true, 1
  br label %_llgo_192

_llgo_191:                                        ; preds = %_llgo_50
  br label %_llgo_192

_llgo_192:                                        ; preds = %_llgo_191, %_llgo_190
  %268 = phi { ptr, i1 } [ %267, %_llgo_190 ], [ zeroinitializer, %_llgo_191 ]
  %269 = extractvalue { ptr, i1 } %268, 0
  %270 = extractvalue { ptr, i1 } %268, 1
  br i1 %270, label %_llgo_51, label %_llgo_52

_llgo_193:                                        ; preds = %_llgo_52
  %271 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %272 = insertvalue { ptr, i1 } undef, ptr %271, 0
  %273 = insertvalue { ptr, i1 } %272, i1 true, 1
  br label %_llgo_195

_llgo_194:                                        ; preds = %_llgo_52
  br label %_llgo_195

_llgo_195:                                        ; preds = %_llgo_194, %_llgo_193
  %274 = phi { ptr, i1 } [ %273, %_llgo_193 ], [ zeroinitializer, %_llgo_194 ]
  %275 = extractvalue { ptr, i1 } %274, 0
  %276 = extractvalue { ptr, i1 } %274, 1
  br i1 %276, label %_llgo_53, label %_llgo_54

_llgo_196:                                        ; preds = %_llgo_54
  %277 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %278 = insertvalue { ptr, i1 } undef, ptr %277, 0
  %279 = insertvalue { ptr, i1 } %278, i1 true, 1
  br label %_llgo_198

_llgo_197:                                        ; preds = %_llgo_54
  br label %_llgo_198

_llgo_198:                                        ; preds = %_llgo_197, %_llgo_196
  %280 = phi { ptr, i1 } [ %279, %_llgo_196 ], [ zeroinitializer, %_llgo_197 ]
  %281 = extractvalue { ptr, i1 } %280, 0
  %282 = extractvalue { ptr, i1 } %280, 1
  br i1 %282, label %_llgo_55, label %_llgo_56

_llgo_199:                                        ; preds = %_llgo_56
  %283 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %284 = insertvalue { ptr, i1 } undef, ptr %283, 0
  %285 = insertvalue { ptr, i1 } %284, i1 true, 1
  br label %_llgo_201

_llgo_200:                                        ; preds = %_llgo_56
  br label %_llgo_201

_llgo_201:                                        ; preds = %_llgo_200, %_llgo_199
  %286 = phi { ptr, i1 } [ %285, %_llgo_199 ], [ zeroinitializer, %_llgo_200 ]
  %287 = extractvalue { ptr, i1 } %286, 0
  %288 = extractvalue { ptr, i1 } %286, 1
  br i1 %288, label %_llgo_57, label %_llgo_58

_llgo_202:                                        ; preds = %_llgo_58
  %289 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %290 = insertvalue { ptr, i1 } undef, ptr %289, 0
  %291 = insertvalue { ptr, i1 } %290, i1 true, 1
  br label %_llgo_204

_llgo_203:                                        ; preds = %_llgo_58
  br label %_llgo_204

_llgo_204:                                        ; preds = %_llgo_203, %_llgo_202
  %292 = phi { ptr, i1 } [ %291, %_llgo_202 ], [ zeroinitializer, %_llgo_203 ]
  %293 = extractvalue { ptr, i1 } %292, 0
  %294 = extractvalue { ptr, i1 } %292, 1
  br i1 %294, label %_llgo_59, label %_llgo_60

_llgo_205:                                        ; preds = %_llgo_60
  %295 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %296 = insertvalue { ptr, i1 } undef, ptr %295, 0
  %297 = insertvalue { ptr, i1 } %296, i1 true, 1
  br label %_llgo_207

_llgo_206:                                        ; preds = %_llgo_60
  br label %_llgo_207

_llgo_207:                                        ; preds = %_llgo_206, %_llgo_205
  %298 = phi { ptr, i1 } [ %297, %_llgo_205 ], [ zeroinitializer, %_llgo_206 ]
  %299 = extractvalue { ptr, i1 } %298, 0
  %300 = extractvalue { ptr, i1 } %298, 1
  br i1 %300, label %_llgo_61, label %_llgo_62

_llgo_208:                                        ; preds = %_llgo_62
  %301 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %302 = insertvalue { ptr, i1 } undef, ptr %301, 0
  %303 = insertvalue { ptr, i1 } %302, i1 true, 1
  br label %_llgo_210

_llgo_209:                                        ; preds = %_llgo_62
  br label %_llgo_210

_llgo_210:                                        ; preds = %_llgo_209, %_llgo_208
  %304 = phi { ptr, i1 } [ %303, %_llgo_208 ], [ zeroinitializer, %_llgo_209 ]
  %305 = extractvalue { ptr, i1 } %304, 0
  %306 = extractvalue { ptr, i1 } %304, 1
  br i1 %306, label %_llgo_63, label %_llgo_64

_llgo_211:                                        ; preds = %_llgo_64
  %307 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %308 = insertvalue { ptr, i1 } undef, ptr %307, 0
  %309 = insertvalue { ptr, i1 } %308, i1 true, 1
  br label %_llgo_213

_llgo_212:                                        ; preds = %_llgo_64
  br label %_llgo_213

_llgo_213:                                        ; preds = %_llgo_212, %_llgo_211
  %310 = phi { ptr, i1 } [ %309, %_llgo_211 ], [ zeroinitializer, %_llgo_212 ]
  %311 = extractvalue { ptr, i1 } %310, 0
  %312 = extractvalue { ptr, i1 } %310, 1
  br i1 %312, label %_llgo_65, label %_llgo_66

_llgo_214:                                        ; preds = %_llgo_66
  %313 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %314 = insertvalue { ptr, i1 } undef, ptr %313, 0
  %315 = insertvalue { ptr, i1 } %314, i1 true, 1
  br label %_llgo_216

_llgo_215:                                        ; preds = %_llgo_66
  br label %_llgo_216

_llgo_216:                                        ; preds = %_llgo_215, %_llgo_214
  %316 = phi { ptr, i1 } [ %315, %_llgo_214 ], [ zeroinitializer, %_llgo_215 ]
  %317 = extractvalue { ptr, i1 } %316, 0
  %318 = extractvalue { ptr, i1 } %316, 1
  br i1 %318, label %_llgo_67, label %_llgo_68

_llgo_217:                                        ; preds = %_llgo_68
  %319 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %320 = insertvalue { ptr, i1 } undef, ptr %319, 0
  %321 = insertvalue { ptr, i1 } %320, i1 true, 1
  br label %_llgo_219

_llgo_218:                                        ; preds = %_llgo_68
  br label %_llgo_219

_llgo_219:                                        ; preds = %_llgo_218, %_llgo_217
  %322 = phi { ptr, i1 } [ %321, %_llgo_217 ], [ zeroinitializer, %_llgo_218 ]
  %323 = extractvalue { ptr, i1 } %322, 0
  %324 = extractvalue { ptr, i1 } %322, 1
  br i1 %324, label %_llgo_69, label %_llgo_70

_llgo_220:                                        ; preds = %_llgo_70
  %325 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %326 = insertvalue { ptr, i1 } undef, ptr %325, 0
  %327 = insertvalue { ptr, i1 } %326, i1 true, 1
  br label %_llgo_222

_llgo_221:                                        ; preds = %_llgo_70
  br label %_llgo_222

_llgo_222:                                        ; preds = %_llgo_221, %_llgo_220
  %328 = phi { ptr, i1 } [ %327, %_llgo_220 ], [ zeroinitializer, %_llgo_221 ]
  %329 = extractvalue { ptr, i1 } %328, 0
  %330 = extractvalue { ptr, i1 } %328, 1
  br i1 %330, label %_llgo_71, label %_llgo_72

_llgo_223:                                        ; preds = %_llgo_72
  %331 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %332 = insertvalue { ptr, i1 } undef, ptr %331, 0
  %333 = insertvalue { ptr, i1 } %332, i1 true, 1
  br label %_llgo_225

_llgo_224:                                        ; preds = %_llgo_72
  br label %_llgo_225

_llgo_225:                                        ; preds = %_llgo_224, %_llgo_223
  %334 = phi { ptr, i1 } [ %333, %_llgo_223 ], [ zeroinitializer, %_llgo_224 ]
  %335 = extractvalue { ptr, i1 } %334, 0
  %336 = extractvalue { ptr, i1 } %334, 1
  br i1 %336, label %_llgo_73, label %_llgo_74

_llgo_226:                                        ; preds = %_llgo_74
  %337 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %338 = insertvalue { ptr, i1 } undef, ptr %337, 0
  %339 = insertvalue { ptr, i1 } %338, i1 true, 1
  br label %_llgo_228

_llgo_227:                                        ; preds = %_llgo_74
  br label %_llgo_228

_llgo_228:                                        ; preds = %_llgo_227, %_llgo_226
  %340 = phi { ptr, i1 } [ %339, %_llgo_226 ], [ zeroinitializer, %_llgo_227 ]
  %341 = extractvalue { ptr, i1 } %340, 0
  %342 = extractvalue { ptr, i1 } %340, 1
  br i1 %342, label %_llgo_75, label %_llgo_76

_llgo_229:                                        ; preds = %_llgo_76
  %343 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %344 = insertvalue { ptr, i1 } undef, ptr %343, 0
  %345 = insertvalue { ptr, i1 } %344, i1 true, 1
  br label %_llgo_231

_llgo_230:                                        ; preds = %_llgo_76
  br label %_llgo_231

_llgo_231:                                        ; preds = %_llgo_230, %_llgo_229
  %346 = phi { ptr, i1 } [ %345, %_llgo_229 ], [ zeroinitializer, %_llgo_230 ]
  %347 = extractvalue { ptr, i1 } %346, 0
  %348 = extractvalue { ptr, i1 } %346, 1
  br i1 %348, label %_llgo_77, label %_llgo_78

_llgo_232:                                        ; preds = %_llgo_78
  %349 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %350 = insertvalue { ptr, i1 } undef, ptr %349, 0
  %351 = insertvalue { ptr, i1 } %350, i1 true, 1
  br label %_llgo_234

_llgo_233:                                        ; preds = %_llgo_78
  br label %_llgo_234

_llgo_234:                                        ; preds = %_llgo_233, %_llgo_232
  %352 = phi { ptr, i1 } [ %351, %_llgo_232 ], [ zeroinitializer, %_llgo_233 ]
  %353 = extractvalue { ptr, i1 } %352, 0
  %354 = extractvalue { ptr, i1 } %352, 1
  br i1 %354, label %_llgo_79, label %_llgo_80

_llgo_235:                                        ; preds = %_llgo_80
  %355 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %356 = insertvalue { ptr, i1 } undef, ptr %355, 0
  %357 = insertvalue { ptr, i1 } %356, i1 true, 1
  br label %_llgo_237

_llgo_236:                                        ; preds = %_llgo_80
  br label %_llgo_237

_llgo_237:                                        ; preds = %_llgo_236, %_llgo_235
  %358 = phi { ptr, i1 } [ %357, %_llgo_235 ], [ zeroinitializer, %_llgo_236 ]
  %359 = extractvalue { ptr, i1 } %358, 0
  %360 = extractvalue { ptr, i1 } %358, 1
  br i1 %360, label %_llgo_81, label %_llgo_82

_llgo_238:                                        ; preds = %_llgo_82
  %361 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %362 = insertvalue { ptr, i1 } undef, ptr %361, 0
  %363 = insertvalue { ptr, i1 } %362, i1 true, 1
  br label %_llgo_240

_llgo_239:                                        ; preds = %_llgo_82
  br label %_llgo_240

_llgo_240:                                        ; preds = %_llgo_239, %_llgo_238
  %364 = phi { ptr, i1 } [ %363, %_llgo_238 ], [ zeroinitializer, %_llgo_239 ]
  %365 = extractvalue { ptr, i1 } %364, 0
  %366 = extractvalue { ptr, i1 } %364, 1
  br i1 %366, label %_llgo_83, label %_llgo_84

_llgo_241:                                        ; preds = %_llgo_84
  %367 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %368 = insertvalue { ptr, i1 } undef, ptr %367, 0
  %369 = insertvalue { ptr, i1 } %368, i1 true, 1
  br label %_llgo_243

_llgo_242:                                        ; preds = %_llgo_84
  br label %_llgo_243

_llgo_243:                                        ; preds = %_llgo_242, %_llgo_241
  %370 = phi { ptr, i1 } [ %369, %_llgo_241 ], [ zeroinitializer, %_llgo_242 ]
  %371 = extractvalue { ptr, i1 } %370, 0
  %372 = extractvalue { ptr, i1 } %370, 1
  br i1 %372, label %_llgo_85, label %_llgo_86

_llgo_244:                                        ; preds = %_llgo_86
  %373 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %374 = insertvalue { ptr, i1 } undef, ptr %373, 0
  %375 = insertvalue { ptr, i1 } %374, i1 true, 1
  br label %_llgo_246

_llgo_245:                                        ; preds = %_llgo_86
  br label %_llgo_246

_llgo_246:                                        ; preds = %_llgo_245, %_llgo_244
  %376 = phi { ptr, i1 } [ %375, %_llgo_244 ], [ zeroinitializer, %_llgo_245 ]
  %377 = extractvalue { ptr, i1 } %376, 0
  %378 = extractvalue { ptr, i1 } %376, 1
  br i1 %378, label %_llgo_87, label %_llgo_88

_llgo_247:                                        ; preds = %_llgo_88
  %379 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %380 = insertvalue { ptr, i1 } undef, ptr %379, 0
  %381 = insertvalue { ptr, i1 } %380, i1 true, 1
  br label %_llgo_249

_llgo_248:                                        ; preds = %_llgo_88
  br label %_llgo_249

_llgo_249:                                        ; preds = %_llgo_248, %_llgo_247
  %382 = phi { ptr, i1 } [ %381, %_llgo_247 ], [ zeroinitializer, %_llgo_248 ]
  %383 = extractvalue { ptr, i1 } %382, 0
  %384 = extractvalue { ptr, i1 } %382, 1
  br i1 %384, label %_llgo_89, label %_llgo_90

_llgo_250:                                        ; preds = %_llgo_90
  %385 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %386 = insertvalue { ptr, i1 } undef, ptr %385, 0
  %387 = insertvalue { ptr, i1 } %386, i1 true, 1
  br label %_llgo_252

_llgo_251:                                        ; preds = %_llgo_90
  br label %_llgo_252

_llgo_252:                                        ; preds = %_llgo_251, %_llgo_250
  %388 = phi { ptr, i1 } [ %387, %_llgo_250 ], [ zeroinitializer, %_llgo_251 ]
  %389 = extractvalue { ptr, i1 } %388, 0
  %390 = extractvalue { ptr, i1 } %388, 1
  br i1 %390, label %_llgo_91, label %_llgo_92

_llgo_253:                                        ; preds = %_llgo_92
  %391 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %392 = insertvalue { ptr, i1 } undef, ptr %391, 0
  %393 = insertvalue { ptr, i1 } %392, i1 true, 1
  br label %_llgo_255

_llgo_254:                                        ; preds = %_llgo_92
  br label %_llgo_255

_llgo_255:                                        ; preds = %_llgo_254, %_llgo_253
  %394 = phi { ptr, i1 } [ %393, %_llgo_253 ], [ zeroinitializer, %_llgo_254 ]
  %395 = extractvalue { ptr, i1 } %394, 0
  %396 = extractvalue { ptr, i1 } %394, 1
  br i1 %396, label %_llgo_93, label %_llgo_94

_llgo_256:                                        ; preds = %_llgo_94
  %397 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %398 = insertvalue { ptr, i1 } undef, ptr %397, 0
  %399 = insertvalue { ptr, i1 } %398, i1 true, 1
  br label %_llgo_258

_llgo_257:                                        ; preds = %_llgo_94
  br label %_llgo_258

_llgo_258:                                        ; preds = %_llgo_257, %_llgo_256
  %400 = phi { ptr, i1 } [ %399, %_llgo_256 ], [ zeroinitializer, %_llgo_257 ]
  %401 = extractvalue { ptr, i1 } %400, 0
  %402 = extractvalue { ptr, i1 } %400, 1
  br i1 %402, label %_llgo_95, label %_llgo_96

_llgo_259:                                        ; preds = %_llgo_96
  %403 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %404 = insertvalue { ptr, i1 } undef, ptr %403, 0
  %405 = insertvalue { ptr, i1 } %404, i1 true, 1
  br label %_llgo_261

_llgo_260:                                        ; preds = %_llgo_96
  br label %_llgo_261

_llgo_261:                                        ; preds = %_llgo_260, %_llgo_259
  %406 = phi { ptr, i1 } [ %405, %_llgo_259 ], [ zeroinitializer, %_llgo_260 ]
  %407 = extractvalue { ptr, i1 } %406, 0
  %408 = extractvalue { ptr, i1 } %406, 1
  br i1 %408, label %_llgo_97, label %_llgo_98

_llgo_262:                                        ; preds = %_llgo_98
  %409 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %410 = insertvalue { ptr, i1 } undef, ptr %409, 0
  %411 = insertvalue { ptr, i1 } %410, i1 true, 1
  br label %_llgo_264

_llgo_263:                                        ; preds = %_llgo_98
  br label %_llgo_264

_llgo_264:                                        ; preds = %_llgo_263, %_llgo_262
  %412 = phi { ptr, i1 } [ %411, %_llgo_262 ], [ zeroinitializer, %_llgo_263 ]
  %413 = extractvalue { ptr, i1 } %412, 0
  %414 = extractvalue { ptr, i1 } %412, 1
  br i1 %414, label %_llgo_99, label %_llgo_100

_llgo_265:                                        ; preds = %_llgo_100
  %415 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %416 = insertvalue { ptr, i1 } undef, ptr %415, 0
  %417 = insertvalue { ptr, i1 } %416, i1 true, 1
  br label %_llgo_267

_llgo_266:                                        ; preds = %_llgo_100
  br label %_llgo_267

_llgo_267:                                        ; preds = %_llgo_266, %_llgo_265
  %418 = phi { ptr, i1 } [ %417, %_llgo_265 ], [ zeroinitializer, %_llgo_266 ]
  %419 = extractvalue { ptr, i1 } %418, 0
  %420 = extractvalue { ptr, i1 } %418, 1
  br i1 %420, label %_llgo_101, label %_llgo_102

_llgo_268:                                        ; preds = %_llgo_102
  %421 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %422 = insertvalue { ptr, i1 } undef, ptr %421, 0
  %423 = insertvalue { ptr, i1 } %422, i1 true, 1
  br label %_llgo_270

_llgo_269:                                        ; preds = %_llgo_102
  br label %_llgo_270

_llgo_270:                                        ; preds = %_llgo_269, %_llgo_268
  %424 = phi { ptr, i1 } [ %423, %_llgo_268 ], [ zeroinitializer, %_llgo_269 ]
  %425 = extractvalue { ptr, i1 } %424, 0
  %426 = extractvalue { ptr, i1 } %424, 1
  br i1 %426, label %_llgo_103, label %_llgo_104

_llgo_271:                                        ; preds = %_llgo_104
  %427 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %428 = insertvalue { ptr, i1 } undef, ptr %427, 0
  %429 = insertvalue { ptr, i1 } %428, i1 true, 1
  br label %_llgo_273

_llgo_272:                                        ; preds = %_llgo_104
  br label %_llgo_273

_llgo_273:                                        ; preds = %_llgo_272, %_llgo_271
  %430 = phi { ptr, i1 } [ %429, %_llgo_271 ], [ zeroinitializer, %_llgo_272 ]
  %431 = extractvalue { ptr, i1 } %430, 0
  %432 = extractvalue { ptr, i1 } %430, 1
  br i1 %432, label %_llgo_105, label %_llgo_106

_llgo_274:                                        ; preds = %_llgo_106
  %433 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %434 = insertvalue { ptr, i1 } undef, ptr %433, 0
  %435 = insertvalue { ptr, i1 } %434, i1 true, 1
  br label %_llgo_276

_llgo_275:                                        ; preds = %_llgo_106
  br label %_llgo_276

_llgo_276:                                        ; preds = %_llgo_275, %_llgo_274
  %436 = phi { ptr, i1 } [ %435, %_llgo_274 ], [ zeroinitializer, %_llgo_275 ]
  %437 = extractvalue { ptr, i1 } %436, 0
  %438 = extractvalue { ptr, i1 } %436, 1
  br i1 %438, label %_llgo_107, label %_llgo_108

_llgo_277:                                        ; preds = %_llgo_108
  %439 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %440 = insertvalue { ptr, i1 } undef, ptr %439, 0
  %441 = insertvalue { ptr, i1 } %440, i1 true, 1
  br label %_llgo_279

_llgo_278:                                        ; preds = %_llgo_108
  br label %_llgo_279

_llgo_279:                                        ; preds = %_llgo_278, %_llgo_277
  %442 = phi { ptr, i1 } [ %441, %_llgo_277 ], [ zeroinitializer, %_llgo_278 ]
  %443 = extractvalue { ptr, i1 } %442, 0
  %444 = extractvalue { ptr, i1 } %442, 1
  br i1 %444, label %_llgo_109, label %_llgo_110

_llgo_280:                                        ; preds = %_llgo_110
  %445 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %446 = insertvalue { ptr, i1 } undef, ptr %445, 0
  %447 = insertvalue { ptr, i1 } %446, i1 true, 1
  br label %_llgo_282

_llgo_281:                                        ; preds = %_llgo_110
  br label %_llgo_282

_llgo_282:                                        ; preds = %_llgo_281, %_llgo_280
  %448 = phi { ptr, i1 } [ %447, %_llgo_280 ], [ zeroinitializer, %_llgo_281 ]
  %449 = extractvalue { ptr, i1 } %448, 0
  %450 = extractvalue { ptr, i1 } %448, 1
  br i1 %450, label %_llgo_111, label %_llgo_112

_llgo_283:                                        ; preds = %_llgo_112
  %451 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %452 = insertvalue { ptr, i1 } undef, ptr %451, 0
  %453 = insertvalue { ptr, i1 } %452, i1 true, 1
  br label %_llgo_285

_llgo_284:                                        ; preds = %_llgo_112
  br label %_llgo_285

_llgo_285:                                        ; preds = %_llgo_284, %_llgo_283
  %454 = phi { ptr, i1 } [ %453, %_llgo_283 ], [ zeroinitializer, %_llgo_284 ]
  %455 = extractvalue { ptr, i1 } %454, 0
  %456 = extractvalue { ptr, i1 } %454, 1
  br i1 %456, label %_llgo_113, label %_llgo_114
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64) #0

; Function Attrs: null_pointer_is_valid
declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr) #0

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr) #0

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface") #0

; Function Attrs: null_pointer_is_valid
declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface") #0

; Function Attrs: null_pointer_is_valid
declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface") #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.init"() #0

; Function Attrs: null_pointer_is_valid
declare void @iter.init() #0

; Function Attrs: null_pointer_is_valid
declare void @math.init() #0

; Function Attrs: null_pointer_is_valid
declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr) #0

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare i1 @"go/token.(*Pos).IsValid"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr) #0

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare i1 @"go/token.Pos.IsValid"(i64) #0

; Function Attrs: null_pointer_is_valid
declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/ast.(*ObjKind).String"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/ast.ObjKind.String"(i64) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr) #0

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Object).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Ident).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"go/ast.(*Ident).IsExported"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Ident).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/ast.(*Ident).String"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*Ident).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr) #0

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ArrayType).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ArrayType).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*ArrayType).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"go/token.(*Token).IsKeyword"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"go/token.(*Token).IsLiteral"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"go/token.(*Token).IsOperator"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/token.(*Token).Precedence"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/token.(*Token).String"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"go/token.Token.IsKeyword"(i64) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"go/token.Token.IsLiteral"(i64) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"go/token.Token.IsOperator"(i64) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/token.Token.Precedence"(i64) #0

; Function Attrs: null_pointer_is_valid
declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/token.Token.String"(i64) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*AssignStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*AssignStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*AssignStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BadDecl).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BadDecl).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*BadDecl).declNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BadExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BadExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*BadExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BadStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BadStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*BadStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BasicLit).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BasicLit).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*BasicLit).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BinaryExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BinaryExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*BinaryExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BlockStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BlockStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*BlockStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BranchStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*BranchStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*BranchStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CallExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CallExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*CallExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CaseClause).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CaseClause).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*CaseClause).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ChanType).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ChanType).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*ChanType).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CommClause).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CommClause).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*CommClause).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Comment).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Comment).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CommentGroup).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CommentGroup).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/ast.(*CommentGroup).Text"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CompositeLit).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*CompositeLit).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*CompositeLit).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*DeclStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*DeclStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*DeclStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*DeferStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*DeferStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*DeferStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Ellipsis).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Ellipsis).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*Ellipsis).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*EmptyStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*EmptyStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*EmptyStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ExprStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ExprStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*ExprStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Field).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Field).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*FieldList).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*FieldList).NumFields"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*FieldList).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64) #0

; Function Attrs: null_pointer_is_valid
declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr) #0

; Function Attrs: null_pointer_is_valid
declare ptr @"go/ast.(*Scope).Insert"(ptr, ptr) #0

; Function Attrs: null_pointer_is_valid
declare ptr @"go/ast.(*Scope).Lookup"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String") #0

; Function Attrs: null_pointer_is_valid
declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/ast.(*Scope).String"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ImportSpec).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ImportSpec).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*ImportSpec).specNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*File).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*File).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ForStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ForStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*ForStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*FuncType).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*FuncType).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*FuncType).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*FuncDecl).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*FuncDecl).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*FuncDecl).declNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*FuncLit).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*FuncLit).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*FuncLit).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*GenDecl).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*GenDecl).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*GenDecl).declNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*GoStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*GoStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*GoStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*IfStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*IfStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*IfStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*IncDecStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*IncDecStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*IncDecStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*IndexExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*IndexExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*IndexExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*IndexListExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*IndexListExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*IndexListExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*InterfaceType).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*InterfaceType).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*InterfaceType).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*KeyValueExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*KeyValueExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*KeyValueExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*LabeledStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*LabeledStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*LabeledStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*MapType).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*MapType).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*MapType).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Package).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*Package).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ParenExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ParenExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*ParenExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*RangeStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*RangeStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*RangeStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ReturnStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ReturnStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*ReturnStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SelectStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SelectStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*SelectStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SelectorExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SelectorExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*SelectorExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SendStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SendStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*SendStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SliceExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SliceExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*SliceExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*StarExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*StarExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*StarExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*StructType).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*StructType).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*StructType).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SwitchStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*SwitchStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*SwitchStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*TypeAssertExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*TypeAssertExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*TypeAssertExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*TypeSpec).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*TypeSpec).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*TypeSpec).specNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*TypeSwitchStmt).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*TypeSwitchStmt).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*TypeSwitchStmt).stmtNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*UnaryExpr).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*UnaryExpr).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*UnaryExpr).exprNode"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ValueSpec).End"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"go/ast.(*ValueSpec).Pos"(ptr) #0

; Function Attrs: null_pointer_is_valid
declare void @"go/ast.(*ValueSpec).specNode"(ptr) #0

attributes #0 = { null_pointer_is_valid }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
