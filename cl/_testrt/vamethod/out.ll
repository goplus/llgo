; ModuleID = 'github.com/goplus/llgo/cl/_testrt/vamethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/vamethod"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
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
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1245497044, i8 11, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat" }] }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }
@4 = private unnamed_addr constant [9 x i8] c"main.CFmt", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1944946986, i8 13, i8 8, i8 8, i8 57, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.1", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf" }] }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.1" = private constant { ptr, i64, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", i64 1, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" }
@5 = private unnamed_addr constant [1 x i8] c"T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1837201360, i8 11, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", ptr @printf, ptr @printf }] }, align 8
@6 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1351157490, i8 13, i8 1, i8 1, i8 35, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal8" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8", i64 0 }
@7 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/vamethod", align 1
@8 = private unnamed_addr constant [6 x i8] c"Printf", align 1
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 662737340, i8 16, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 27 }, ptr @"*_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$out", i64 1, i64 1 } }, align 8
@9 = private unnamed_addr constant [27 x i8] c"func(...interface {}) int32", align 1
@"*_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -12681898, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 27 }, ptr null }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" }, align 8
@"[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -396233978, i8 0, i8 8, i8 8, i8 23, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr @"*[]_llgo_any" }, ptr @_llgo_any }, align 8
@10 = private unnamed_addr constant [14 x i8] c"[]interface {}", align 1
@"*[]_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1171476965, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr null }, ptr @"[]_llgo_any" }, align 8
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.nilinterequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", i64 0 }
@11 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$in" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_any"], align 8
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 37, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr @"*_llgo_int32" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal32" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal32", i64 0 }
@12 = private unnamed_addr constant [5 x i8] c"int32", align 1
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int32], align 8
@"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 1 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@13 = private unnamed_addr constant [9 x i8] c"SetFormat", align 1
@"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -739803070, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr @"*_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@14 = private unnamed_addr constant [11 x i8] c"func(*int8)", align 1
@"*_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 296663121, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr null }, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" }, align 8
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@15 = private unnamed_addr constant [4 x i8] c"int8", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr @"*_llgo_int8" }, align 8
@"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_int8"], align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 2061345303, i8 4, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0$imethods", i64 2, i64 2 } }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", i64 0 }
@16 = private unnamed_addr constant [9 x i8] c"main.IFmt", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1979404182, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" }, align 8
@"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" }], align 8
@"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -939908589, i8 0, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 61 }, ptr @"*_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0$imethods", i64 2, i64 2 } }, align 8
@17 = private unnamed_addr constant [61 x i8] c"interface { Printf(...interface {}) int32; SetFormat(*int8) }", align 1
@"*_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -946037347, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 61 }, ptr null }, ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" }, align 8
@18 = private unnamed_addr constant [12 x i8] c"%s (%d,%d)\0A\00", align 1
@19 = private unnamed_addr constant [5 x i8] c"ifmt\00", align 1
@20 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, ptr @"*_llgo_string" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", i64 0 }
@21 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

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

define i32 @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf"(ptr %0, ...) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  %3 = call i32 (ptr, ...) @printf(ptr %2)
  ret i32 %3
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  store ptr %1, ptr %2, align 8
  ret void
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
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %45)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, 0
  %15 = getelementptr ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %18 = getelementptr inbounds { ptr, i64, ptr }, ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8
  %19 = getelementptr inbounds { ptr, i64, ptr }, ptr %17, i32 0, i32 1
  store i64 1, ptr %19, align 4
  %20 = getelementptr inbounds { ptr, i64, ptr }, ptr %17, i32 0, i32 2
  store ptr %13, ptr %20, align 8
  %21 = load ptr, ptr %17, align 8
  %22 = getelementptr i8, ptr %17, i64 16
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %17, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %24)
  call void %21(ptr %23, ptr @18)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %45)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, 0
  %27 = getelementptr ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %30 = getelementptr inbounds { ptr, i64, ptr }, ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds { ptr, i64, ptr }, ptr %29, i32 0, i32 1
  store i64 1, ptr %31, align 4
  %32 = getelementptr inbounds { ptr, i64, ptr }, ptr %29, i32 0, i32 2
  store ptr %25, ptr %32, align 8
  %33 = load ptr, ptr %29, align 8
  %34 = getelementptr i8, ptr %29, i64 16
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %29, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %36)
  %37 = call i32 (ptr, ...) %33(ptr %35, ptr @19, i64 100, i64 200)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, 1
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", ptr %9)
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %39, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, ptr %38, 1
  %42 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 0
  %43 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %42, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %44 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %43, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %45 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %44, 0
  %46 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %44, 1
  br i1 %46, label %_llgo_2, label %_llgo_1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
