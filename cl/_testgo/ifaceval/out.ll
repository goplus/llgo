; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifaceval'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifaceval"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testgo/ifaceval.MyPrinter" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/ifaceval.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [10 x i8] c"MyPrinter:", align 1
@1 = private unnamed_addr constant [13 x i8] c"starting test", align 1
@2 = private unnamed_addr constant [4 x i8] c"test", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.MyPrinter" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1255535297, i8 11, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 14 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.MyPrinter" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceval.(*MyPrinter).Print", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceval.(*MyPrinter).Print" }] }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }
@3 = private unnamed_addr constant [14 x i8] c"main.MyPrinter", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.MyPrinter" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 28321183, i8 5, i8 8, i8 8, i8 25, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.1", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 14 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.MyPrinter" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceval.struct$9Lrk1PmOX8nhNTkUnXhJ9SmPekQ9DVC-LUY2ssenyVA$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.1" = private constant { ptr, i64, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", i64 1, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.MyPrinter" }
@4 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceval", align 1
@5 = private unnamed_addr constant [4 x i8] c"name", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr @"*_llgo_string" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", i64 0 }
@6 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceval.struct$9Lrk1PmOX8nhNTkUnXhJ9SmPekQ9DVC-LUY2ssenyVA$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@7 = private unnamed_addr constant [5 x i8] c"Print", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@8 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1428505139, i8 0, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 21 }, ptr @"*_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ$imethods", i64 1, i64 1 } }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", i64 0 }
@9 = private unnamed_addr constant [21 x i8] c"interface { Print() }", align 1
@"*_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -78381455, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 21 }, ptr null }, ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" }, align 8
@"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.Printer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2010123236, i8 4, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.Printer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [12 x i8] c"main.Printer", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.Printer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 93203512, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.Printer" }, align 8
@11 = private unnamed_addr constant [126 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/ifaceval.Printer -> github.com/goplus/llgo/cl/_testgo/ifaceval.Printer failed", align 1
@12 = private unnamed_addr constant [11 x i8] c"calling f()", align 1
@13 = private unnamed_addr constant [4 x i8] c"done", align 1

define void @"github.com/goplus/llgo/cl/_testgo/ifaceval.(*MyPrinter).Print"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceval.MyPrinter", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceval.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceval.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceval.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceval.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceval.MyPrinter", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceval.MyPrinter")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  br i1 true, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %8 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %7, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/ifaceval.Printer.Print$bound", ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %7, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr i8, ptr %7, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %12)
  call void %11()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 126 }, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %13, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  unreachable
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @"github.com/goplus/llgo/cl/_testgo/ifaceval.Printer.Print$bound"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %8 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 2
  store ptr %3, ptr %10, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr i8, ptr %7, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %7, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %14)
  call void %11(ptr %13)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
