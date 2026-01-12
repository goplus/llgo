; ModuleID = 'github.com/goplus/llgo/cl/_testrt/vamethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/vamethod"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
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
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"(%d) %s\0A\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1245497044, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf$coro", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf$coro" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat$coro", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat$coro" }] }, align 8
@4 = private unnamed_addr constant [9 x i8] c"main.CFmt", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1944946986, i8 13, i8 8, i8 8, i8 57, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf$coro", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf$coro" }] }, align 8
@5 = private unnamed_addr constant [1 x i8] c"T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1837201360, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", ptr @printf, ptr @printf }] }, align 8
@6 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1351157490, i8 13, i8 1, i8 1, i8 35, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@7 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/vamethod", align 1
@8 = private unnamed_addr constant [6 x i8] c"Printf", align 1
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 662737340, i8 16, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 27 }, ptr @"*_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$out", i64 1, i64 1 } }, align 8
@9 = private unnamed_addr constant [27 x i8] c"func(...interface {}) int32", align 1
@"*_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -12681898, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 27 }, ptr null }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" }, align 8
@"[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -396233978, i8 0, i8 8, i8 8, i8 23, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr @"*[]_llgo_any" }, ptr @_llgo_any }, align 8
@10 = private unnamed_addr constant [14 x i8] c"[]interface {}", align 1
@"*[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1171476965, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr null }, ptr @"[]_llgo_any" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@11 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$in" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_any"], align 8
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 37, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @"*_llgo_int32" }, align 8
@12 = private unnamed_addr constant [5 x i8] c"int32", align 1
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int32], align 8
@"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 1 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@13 = private unnamed_addr constant [9 x i8] c"SetFormat", align 1
@"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -739803070, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr @"*_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@14 = private unnamed_addr constant [11 x i8] c"func(*int8)", align 1
@"*_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 296663121, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr null }, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" }, align 8
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@15 = private unnamed_addr constant [4 x i8] c"int8", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"*_llgo_int8" }, align 8
@"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_int8"], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 2061345303, i8 4, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0$imethods", i64 2, i64 2 } }, align 8
@16 = private unnamed_addr constant [9 x i8] c"main.IFmt", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1979404182, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" }, align 8
@"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" }], align 8
@"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -939908589, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 61 }, ptr @"*_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0$imethods", i64 2, i64 2 } }, align 8
@17 = private unnamed_addr constant [61 x i8] c"interface { Printf(...interface {}) int32; SetFormat(*int8) }", align 1
@"*_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -946037347, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 61 }, ptr null }, ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" }, align 8
@18 = private unnamed_addr constant [12 x i8] c"%s (%d,%d)\0A\00", align 1
@19 = private unnamed_addr constant [5 x i8] c"ifmt\00", align 1
@20 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, ptr @"*_llgo_string" }, align 8
@21 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@22 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@23 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@24 = private unnamed_addr constant [9 x i8] c"(%d) %s\0A\00", align 1
@25 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@26 = private unnamed_addr constant [12 x i8] c"%s (%d,%d)\0A\00", align 1
@27 = private unnamed_addr constant [5 x i8] c"ifmt\00", align 1

define i32 @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf"(%"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ...) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 (ptr, ...) @printf(ptr %3)
  ret i32 %4
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf$coro"(%"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ...) #0 {
_llgo_0:
  %1 = alloca { ptr, i32 }, align 8
  %2 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 (ptr, ...) @printf(ptr %7)
  %9 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %3, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_5:                                          ; preds = %_llgo_1
  %15 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %17 = call ptr @llvm.coro.free(token %3, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i32 @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf"(ptr %0, ...) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  %3 = call i32 (ptr, ...) @printf(ptr %2)
  ret i32 %3
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf$coro"(ptr %0, ...) #0 {
_llgo_0:
  %1 = alloca { ptr, i32 }, align 8
  %2 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 (ptr, ...) @printf(ptr %6)
  %8 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %3, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_1
  %14 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %3, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  store ptr %1, ptr %2, align 8
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  store ptr %1, ptr %6, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %4, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1
  %12 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.init"() {
_llgo_0:
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, ptr @0)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  %3 = call i32 (ptr, ...) @printf(ptr %2, ptr @1, i64 100)
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, ptr @2)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 (ptr, ...) @printf(ptr %5, i64 200, ptr @3)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr undef }, ptr %7, 1
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, 0
  %10 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt", ptr %9)
  br i1 %10, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %11, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 0
  %15 = getelementptr ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr, i1 } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr, i1 } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr, i1 } %18, 1
  %20 = extractvalue { ptr, ptr, i1 } %18, 2
  %21 = extractvalue { ptr, ptr, i1 } %18, 0
  %22 = call ptr %21(ptr %19, ptr @18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %22)
  call void @llvm.coro.destroy(ptr %22)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 0
  %25 = getelementptr ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = insertvalue { ptr, ptr, i1 } undef, ptr %26, 0
  %28 = insertvalue { ptr, ptr, i1 } %27, ptr %23, 1
  %29 = extractvalue { ptr, ptr, i1 } %28, 1
  %30 = extractvalue { ptr, ptr, i1 } %28, 2
  %31 = extractvalue { ptr, ptr, i1 } %28, 0
  %32 = call ptr (ptr, ...) %31(ptr %29, ptr @19, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %32)
  %33 = call ptr @llvm.coro.promise(ptr %32, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i32 }, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  call void @llvm.coro.destroy(ptr %32)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, 1
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", ptr %9)
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, ptr %36, 1
  %40 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, 0
  %41 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %40, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %42 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %41, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %43 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %42, 0
  %44 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %42, 1
  br i1 %44, label %_llgo_2, label %_llgo_1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_5
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %4, ptr @22)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 (ptr, ...) @printf(ptr %6, ptr @23, i64 100)
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %4, ptr @24)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %4, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 (ptr, ...) @printf(ptr %9, i64 200, ptr @25)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr undef }, ptr %11, 1
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, 0
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt", ptr %13)
  br i1 %14, label %_llgo_9, label %_llgo_10

_llgo_2:                                          ; preds = %_llgo_11
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %16)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_11
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %42)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, 0
  %19 = getelementptr ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue { ptr, ptr, i1 } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr, i1 } %21, ptr %17, 1
  %23 = extractvalue { ptr, ptr, i1 } %22, 1
  %24 = extractvalue { ptr, ptr, i1 } %22, 2
  %25 = extractvalue { ptr, ptr, i1 } %22, 0
  %26 = call ptr %25(ptr %23, ptr @26)
  br label %_llgo_13

_llgo_4:                                          ; preds = %_llgo_0
  %27 = call i64 @llvm.coro.size.i64()
  %28 = call ptr @malloc(i64 %27)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %29 = phi ptr [ null, %_llgo_0 ], [ %28, %_llgo_4 ]
  %30 = call ptr @llvm.coro.begin(token %2, ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_25, %_llgo_24, %_llgo_16, %_llgo_15
  %31 = call i1 @llvm.coro.end(ptr %30, i1 false, token none)
  ret ptr %30

_llgo_7:                                          ; preds = %_llgo_2, %_llgo_29, %_llgo_28, %_llgo_25, %_llgo_24, %_llgo_19, %_llgo_16, %_llgo_15
  %32 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %32)
  %33 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %33, label %_llgo_6 [
    i8 0, label %_llgo_30
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_30, %_llgo_7
  %34 = call ptr @llvm.coro.free(token %2, ptr %30)
  call void @free(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_1
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, 1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", ptr %13)
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %35, 1
  %39 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, 0
  %40 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %39, i1 true, 1
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_1
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_9
  %41 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %40, %_llgo_9 ], [ zeroinitializer, %_llgo_10 ]
  %42 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %41, 0
  %43 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %41, 1
  br i1 %43, label %_llgo_3, label %_llgo_2

_llgo_12:                                         ; preds = %_llgo_13
  %44 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %26)
  br i1 %44, label %_llgo_19, label %_llgo_20

_llgo_13:                                         ; preds = %_llgo_18, %_llgo_17, %_llgo_3
  %45 = phi i1 [ true, %_llgo_3 ], [ false, %_llgo_15 ], [ false, %_llgo_16 ]
  %46 = call i1 @llvm.coro.done(ptr %26)
  br i1 %46, label %_llgo_12, label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13
  br i1 %45, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %47 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %48 = getelementptr inbounds { ptr }, ptr %47, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %48, ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %26)
  %49 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %49, label %_llgo_6 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_7
  ]

_llgo_16:                                         ; preds = %_llgo_14
  %50 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %51 = getelementptr inbounds { ptr }, ptr %50, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %51, ptr %30)
  %52 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %52, label %_llgo_6 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_7
  ]

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_13

_llgo_18:                                         ; preds = %_llgo_16
  br label %_llgo_13

_llgo_19:                                         ; preds = %_llgo_12
  %53 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  br label %_llgo_7

_llgo_20:                                         ; preds = %_llgo_12
  call void @llvm.coro.destroy(ptr %26)
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %42)
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, 0
  %56 = getelementptr ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  %58 = insertvalue { ptr, ptr, i1 } undef, ptr %57, 0
  %59 = insertvalue { ptr, ptr, i1 } %58, ptr %54, 1
  %60 = extractvalue { ptr, ptr, i1 } %59, 1
  %61 = extractvalue { ptr, ptr, i1 } %59, 2
  %62 = extractvalue { ptr, ptr, i1 } %59, 0
  %63 = call ptr (ptr, ...) %62(ptr %60, ptr @27, i64 100, i64 200)
  br label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_22
  %64 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %63)
  br i1 %64, label %_llgo_28, label %_llgo_29

_llgo_22:                                         ; preds = %_llgo_27, %_llgo_26, %_llgo_20
  %65 = phi i1 [ true, %_llgo_20 ], [ false, %_llgo_24 ], [ false, %_llgo_25 ]
  %66 = call i1 @llvm.coro.done(ptr %63)
  br i1 %66, label %_llgo_21, label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22
  br i1 %65, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %67 = call ptr @llvm.coro.promise(ptr %63, i32 8, i1 false)
  %68 = getelementptr inbounds { ptr, i32 }, ptr %67, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %68, ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %63)
  %69 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %69, label %_llgo_6 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_7
  ]

_llgo_25:                                         ; preds = %_llgo_23
  %70 = call ptr @llvm.coro.promise(ptr %63, i32 8, i1 false)
  %71 = getelementptr inbounds { ptr, i32 }, ptr %70, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %71, ptr %30)
  %72 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %72, label %_llgo_6 [
    i8 0, label %_llgo_27
    i8 1, label %_llgo_7
  ]

_llgo_26:                                         ; preds = %_llgo_24
  br label %_llgo_22

_llgo_27:                                         ; preds = %_llgo_25
  br label %_llgo_22

_llgo_28:                                         ; preds = %_llgo_21
  %73 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %73)
  br label %_llgo_7

_llgo_29:                                         ; preds = %_llgo_21
  %74 = call ptr @llvm.coro.promise(ptr %63, i32 8, i1 false)
  %75 = getelementptr inbounds { ptr, i32 }, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  call void @llvm.coro.destroy(ptr %63)
  br label %_llgo_7

_llgo_30:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @printf(ptr, ...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #3

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #4

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

declare void @llvm.coro.destroy(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #4

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #6

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }
attributes #5 = { nounwind memory(argmem: read) }
attributes #6 = { nounwind memory(argmem: readwrite) }
