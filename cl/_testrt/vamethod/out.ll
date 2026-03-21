; ModuleID = 'github.com/goplus/llgo/cl/_testrt/vamethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/vamethod"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"(%d) %s\0A\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1245497044, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat" }] }, align 8
@4 = private unnamed_addr constant [9 x i8] c"main.CFmt", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1944946986, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf" }] }, align 8
@5 = private unnamed_addr constant [1 x i8] c"T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1837201360, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", ptr @printf, ptr @printf }] }, align 8
@6 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1351157490, i8 13, i8 1, i8 1, i8 3, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@7 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/vamethod", align 1
@8 = private unnamed_addr constant [6 x i8] c"Printf", align 1
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 662737340, i8 16, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 27 }, ptr @"*_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$out", i64 1, i64 1 } }, align 8
@9 = private unnamed_addr constant [27 x i8] c"func(...interface {}) int32", align 1
@"*_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -12681898, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 27 }, ptr null }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" }, align 8
@"[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -396233978, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr @"*[]_llgo_any" }, ptr @_llgo_any }, align 8
@10 = private unnamed_addr constant [14 x i8] c"[]interface {}", align 1
@"*[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1171476965, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr null }, ptr @"[]_llgo_any" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@11 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$in" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_any"], align 8
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 5, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @"*_llgo_int32" }, align 8
@12 = private unnamed_addr constant [5 x i8] c"int32", align 1
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int32], align 8
@"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 1 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@13 = private unnamed_addr constant [9 x i8] c"SetFormat", align 1
@"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -739803070, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr @"*_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@14 = private unnamed_addr constant [11 x i8] c"func(*int8)", align 1
@"*_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 296663121, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr null }, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" }, align 8
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@15 = private unnamed_addr constant [4 x i8] c"int8", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 3, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"*_llgo_int8" }, align 8
@"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_int8"], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 2061345303, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0$imethods", i64 2, i64 2 } }, align 8
@16 = private unnamed_addr constant [9 x i8] c"main.IFmt", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1979404182, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" }, align 8
@"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" }], align 8
@"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -939908589, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 61 }, ptr @"*_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0$imethods", i64 2, i64 2 } }, align 8
@17 = private unnamed_addr constant [61 x i8] c"interface { Printf(...interface {}) int32; SetFormat(*int8) }", align 1
@"*_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -946037347, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 61 }, ptr null }, ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" }, align 8
@18 = private unnamed_addr constant [12 x i8] c"%s (%d,%d)\0A\00", align 1
@19 = private unnamed_addr constant [5 x i8] c"ifmt\00", align 1
@20 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, ptr @"*_llgo_string" }, align 8
@21 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i32 @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf"(%"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ...) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ptr %5, align 8
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %5, i32 0, i32 0
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 72057594037927935
  %10 = xor i64 %9, 25399393228665167
  %11 = shl i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = lshr i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = or i64 %16, -6557241057451442176
  store i64 %17, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %17)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %1, align 4
  %20 = call i64 @runtime.LoadHiddenPointerKey(i64 %19)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  store %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @printf)
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %3, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %33 = call i32 (ptr, ...) @printf(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret i32 %33
}

define i32 @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf"(ptr %0, ...) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %7, i32 0, i32 0
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @printf)
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call i32 (ptr, ...) @printf(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i32 %35
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  store ptr %1, ptr %2, align 8
  %8 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %2, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load ptr, ptr %7, align 8
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %21, i32 0, i32 0
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %5, align 4
  %36 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %3, align 4
  %38 = and i64 %37, 72057594037927935
  %39 = lshr i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = shl i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = inttoptr i64 %45 to ptr
  %47 = alloca ptr, align 8
  store ptr %46, ptr %47, align 8
  call void @runtime.StoreHiddenPointee(i64 %35, ptr %47, i64 8)
  store ptr null, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca { i64, i64, i64 }, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  store ptr null, ptr %25, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  store ptr null, ptr %27, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca { i64, i64, i64 }, align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %31, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  store ptr null, ptr %33, align 8
  %34 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, align 8
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %36 = alloca i64, align 8
  %37 = alloca ptr, align 8
  store ptr null, ptr %37, align 8
  %38 = alloca i64, align 8
  %39 = alloca ptr, align 8
  store ptr null, ptr %39, align 8
  %40 = alloca i64, align 8
  %41 = alloca ptr, align 8
  store ptr null, ptr %41, align 8
  %42 = alloca i64, align 8
  %43 = alloca ptr, align 8
  store ptr null, ptr %43, align 8
  %44 = alloca i64, align 8
  %45 = alloca ptr, align 8
  store ptr null, ptr %45, align 8
  %46 = alloca i64, align 8
  %47 = alloca ptr, align 8
  store ptr null, ptr %47, align 8
  %48 = alloca { i64, i64, i64 }, align 8
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %49, align 8
  %50 = alloca %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  call void @llvm.memset(ptr %50, i8 0, i64 8, i1 false)
  %51 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %52 = xor i64 %51, 25399393228665167
  %53 = shl i64 %52, 17
  %54 = select i1 false, i64 0, i64 %53
  %55 = lshr i64 %52, 39
  %56 = select i1 false, i64 0, i64 %55
  %57 = or i64 %54, %56
  %58 = and i64 %57, 72057594037927935
  %59 = or i64 %58, -6557241057451442176
  store i64 %59, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %59)
  call void @runtime.ClobberPointerRegs()
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %61 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %0, align 4
  %63 = and i64 %62, 72057594037927935
  %64 = lshr i64 %63, 17
  %65 = select i1 false, i64 0, i64 %64
  %66 = shl i64 %63, 39
  %67 = select i1 false, i64 0, i64 %66
  %68 = or i64 %65, %67
  %69 = and i64 %68, 72057594037927935
  %70 = xor i64 %69, 25399393228665167
  %71 = inttoptr i64 %70 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %50, ptr %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %60)
  %72 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %50, i32 0, i32 0
  %74 = ptrtoint ptr %73 to i64
  %75 = and i64 %74, 72057594037927935
  %76 = xor i64 %75, 25399393228665167
  %77 = shl i64 %76, 17
  %78 = select i1 false, i64 0, i64 %77
  %79 = lshr i64 %76, 39
  %80 = select i1 false, i64 0, i64 %79
  %81 = or i64 %78, %80
  %82 = and i64 %81, 72057594037927935
  %83 = or i64 %82, -6557241057451442176
  store i64 %83, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %83)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %2, align 4
  %86 = call i64 @runtime.LoadHiddenPointerKey(i64 %85)
  store i64 %86, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %86)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %87 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %88 = xor i64 %87, 25399393228665167
  %89 = shl i64 %88, 17
  %90 = select i1 false, i64 0, i64 %89
  %91 = lshr i64 %88, 39
  %92 = select i1 false, i64 0, i64 %91
  %93 = or i64 %90, %92
  %94 = and i64 %93, 72057594037927935
  %95 = or i64 %94, -6557241057451442176
  store i64 %95, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %95)
  call void @runtime.ClobberPointerRegs()
  %96 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load i64, ptr %6, align 4
  %98 = and i64 %97, 72057594037927935
  %99 = lshr i64 %98, 17
  %100 = select i1 false, i64 0, i64 %99
  %101 = shl i64 %98, 39
  %102 = select i1 false, i64 0, i64 %101
  %103 = or i64 %100, %102
  %104 = and i64 %103, 72057594037927935
  %105 = xor i64 %104, 25399393228665167
  %106 = inttoptr i64 %105 to ptr
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %108 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load i64, ptr %4, align 4
  %110 = and i64 %109, 72057594037927935
  %111 = lshr i64 %110, 17
  %112 = select i1 false, i64 0, i64 %111
  %113 = shl i64 %110, 39
  %114 = select i1 false, i64 0, i64 %113
  %115 = or i64 %112, %114
  %116 = and i64 %115, 72057594037927935
  %117 = xor i64 %116, 25399393228665167
  %118 = inttoptr i64 %117 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  call void @runtime.ClobberPointerRegs()
  %119 = call i32 (ptr, ...) @printf(ptr %118, ptr %106, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %107)
  %120 = and i64 ptrtoint (ptr @2 to i64), 72057594037927935
  %121 = xor i64 %120, 25399393228665167
  %122 = shl i64 %121, 17
  %123 = select i1 false, i64 0, i64 %122
  %124 = lshr i64 %121, 39
  %125 = select i1 false, i64 0, i64 %124
  %126 = or i64 %123, %125
  %127 = and i64 %126, 72057594037927935
  %128 = or i64 %127, -6557241057451442176
  store i64 %128, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %128)
  call void @runtime.ClobberPointerRegs()
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %130 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load i64, ptr %16, align 4
  %132 = and i64 %131, 72057594037927935
  %133 = lshr i64 %132, 17
  %134 = select i1 false, i64 0, i64 %133
  %135 = shl i64 %132, 39
  %136 = select i1 false, i64 0, i64 %135
  %137 = or i64 %134, %136
  %138 = and i64 %137, 72057594037927935
  %139 = xor i64 %138, 25399393228665167
  %140 = inttoptr i64 %139 to ptr
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %50, ptr %140)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %129)
  %141 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %141)
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %50, i32 0, i32 0
  %143 = ptrtoint ptr %142 to i64
  %144 = and i64 %143, 72057594037927935
  %145 = xor i64 %144, 25399393228665167
  %146 = shl i64 %145, 17
  %147 = select i1 false, i64 0, i64 %146
  %148 = lshr i64 %145, 39
  %149 = select i1 false, i64 0, i64 %148
  %150 = or i64 %147, %149
  %151 = and i64 %150, 72057594037927935
  %152 = or i64 %151, -6557241057451442176
  store i64 %152, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %152)
  call void @runtime.ClobberPointerRegs()
  %153 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load i64, ptr %18, align 4
  %155 = call i64 @runtime.LoadHiddenPointerKey(i64 %154)
  store i64 %155, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %155)
  store %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" zeroinitializer, ptr %50, align 8
  call void @runtime.TouchConservativeSlot(ptr %50, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  %156 = and i64 ptrtoint (ptr @3 to i64), 72057594037927935
  %157 = xor i64 %156, 25399393228665167
  %158 = shl i64 %157, 17
  %159 = select i1 false, i64 0, i64 %158
  %160 = lshr i64 %157, 39
  %161 = select i1 false, i64 0, i64 %160
  %162 = or i64 %159, %161
  %163 = and i64 %162, 72057594037927935
  %164 = or i64 %163, -6557241057451442176
  store i64 %164, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %164)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  call void @runtime.ClobberPointerRegs()
  %165 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %165)
  %166 = load i64, ptr %22, align 4
  %167 = and i64 %166, 72057594037927935
  %168 = lshr i64 %167, 17
  %169 = select i1 false, i64 0, i64 %168
  %170 = shl i64 %167, 39
  %171 = select i1 false, i64 0, i64 %170
  %172 = or i64 %169, %171
  %173 = and i64 %172, 72057594037927935
  %174 = xor i64 %173, 25399393228665167
  %175 = inttoptr i64 %174 to ptr
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  call void @runtime.ClobberPointerRegs()
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %177 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %177)
  %178 = load i64, ptr %20, align 4
  %179 = and i64 %178, 72057594037927935
  %180 = lshr i64 %179, 17
  %181 = select i1 false, i64 0, i64 %180
  %182 = shl i64 %179, 39
  %183 = select i1 false, i64 0, i64 %182
  %184 = or i64 %181, %183
  %185 = and i64 %184, 72057594037927935
  %186 = xor i64 %185, 25399393228665167
  %187 = inttoptr i64 %186 to ptr
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store i64 0, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store ptr null, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 24)
  call void @runtime.ClobberPointerRegs()
  %188 = call i32 (ptr, ...) @printf(ptr %187, i64 200, ptr %175)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %176)
  %189 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %189, ptr %32, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %33, i64 %189)
  %190 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %190)
  %191 = load i64, ptr %32, align 4
  %192 = and i64 %191, 72057594037927935
  %193 = lshr i64 %192, 17
  %194 = select i1 false, i64 0, i64 %193
  %195 = shl i64 %192, 39
  %196 = select i1 false, i64 0, i64 %195
  %197 = or i64 %194, %196
  %198 = and i64 %197, 72057594037927935
  %199 = xor i64 %198, 25399393228665167
  %200 = inttoptr i64 %199 to ptr
  %201 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr undef }, ptr %200, 1
  %202 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %201, 0
  %203 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt", ptr %202)
  br i1 %203, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %204, align 8
  %205 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %204, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %205)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %206 = and i64 ptrtoint (ptr @18 to i64), 72057594037927935
  %207 = xor i64 %206, 25399393228665167
  %208 = shl i64 %207, 17
  %209 = select i1 false, i64 0, i64 %208
  %210 = lshr i64 %207, 39
  %211 = select i1 false, i64 0, i64 %210
  %212 = or i64 %209, %211
  %213 = and i64 %212, 72057594037927935
  %214 = or i64 %213, -6557241057451442176
  store i64 %214, ptr %36, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %37, i64 %214)
  call void @runtime.ClobberPointerRegs()
  %215 = icmp eq ptr %35, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %215)
  %216 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %35, align 8
  %217 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %216)
  %218 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %216, 0
  %219 = getelementptr ptr, ptr %218, i64 4
  %220 = load ptr, ptr %219, align 8
  %221 = insertvalue { ptr, ptr } undef, ptr %220, 0
  %222 = insertvalue { ptr, ptr } %221, ptr %217, 1
  %223 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %224 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %224)
  %225 = load i64, ptr %36, align 4
  %226 = and i64 %225, 72057594037927935
  %227 = lshr i64 %226, 17
  %228 = select i1 false, i64 0, i64 %227
  %229 = shl i64 %226, 39
  %230 = select i1 false, i64 0, i64 %229
  %231 = or i64 %228, %230
  %232 = and i64 %231, 72057594037927935
  %233 = xor i64 %232, 25399393228665167
  %234 = inttoptr i64 %233 to ptr
  store i64 0, ptr %36, align 4
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  store ptr null, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 8)
  call void @runtime.ClobberPointerRegs()
  %235 = extractvalue { ptr, ptr } %222, 1
  %236 = extractvalue { ptr, ptr } %222, 0
  call void %236(ptr %235, ptr %234)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %223)
  %237 = and i64 ptrtoint (ptr @19 to i64), 72057594037927935
  %238 = xor i64 %237, 25399393228665167
  %239 = shl i64 %238, 17
  %240 = select i1 false, i64 0, i64 %239
  %241 = lshr i64 %238, 39
  %242 = select i1 false, i64 0, i64 %241
  %243 = or i64 %240, %242
  %244 = and i64 %243, 72057594037927935
  %245 = or i64 %244, -6557241057451442176
  store i64 %245, ptr %38, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %39, i64 %245)
  call void @runtime.ClobberPointerRegs()
  %246 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %246)
  %247 = load i64, ptr %38, align 4
  %248 = and i64 %247, 72057594037927935
  %249 = lshr i64 %248, 17
  %250 = select i1 false, i64 0, i64 %249
  %251 = shl i64 %248, 39
  %252 = select i1 false, i64 0, i64 %251
  %253 = or i64 %250, %252
  %254 = and i64 %253, 72057594037927935
  %255 = xor i64 %254, 25399393228665167
  %256 = inttoptr i64 %255 to ptr
  store i64 0, ptr %38, align 4
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store ptr null, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  store i64 0, ptr %42, align 4
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  store ptr null, ptr %43, align 8
  call void @runtime.TouchConservativeSlot(ptr %43, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %44, align 4
  call void @runtime.TouchConservativeSlot(ptr %44, i64 8)
  store ptr null, ptr %45, align 8
  call void @runtime.TouchConservativeSlot(ptr %45, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %46, align 4
  call void @runtime.TouchConservativeSlot(ptr %46, i64 8)
  store ptr null, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 8)
  call void @runtime.ClobberPointerRegs()
  %257 = icmp eq ptr %35, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %257)
  %258 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %35, align 8
  %259 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %258)
  %260 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %258, 0
  %261 = getelementptr ptr, ptr %260, i64 3
  %262 = load ptr, ptr %261, align 8
  %263 = insertvalue { ptr, ptr } undef, ptr %262, 0
  %264 = insertvalue { ptr, ptr } %263, ptr %259, 1
  %265 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %34, align 8
  call void @runtime.TouchConservativeSlot(ptr %34, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 16)
  store i64 0, ptr %40, align 4
  call void @runtime.TouchConservativeSlot(ptr %40, i64 8)
  store ptr null, ptr %41, align 8
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %48, align 4
  call void @runtime.TouchConservativeSlot(ptr %48, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %49, align 8
  call void @runtime.TouchConservativeSlot(ptr %49, i64 24)
  call void @runtime.ClobberPointerRegs()
  %266 = extractvalue { ptr, ptr } %264, 1
  %267 = extractvalue { ptr, ptr } %264, 0
  %268 = call i32 (ptr, ...) %267(ptr %266, ptr %256, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %265)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %269 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %201, 1
  %270 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", ptr %202)
  %271 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %270, 0
  %272 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %271, ptr %269, 1
  %273 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %272, 0
  %274 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %273, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %275 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %274, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %275, ptr %34, align 8
  %276 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %276)
  %277 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %34, align 8
  %278 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %277, 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %278, ptr %35, align 8
  %279 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %279)
  %280 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %34, align 8
  %281 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %280, 1
  br i1 %281, label %_llgo_2, label %_llgo_1

_llgo_6:                                          ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i64 @runtime.LoadHiddenPointerKey(i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @unsafe.init()

declare void @"github.com/goplus/lib/c.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare i64 @runtime.AllocZHidden(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal32")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
