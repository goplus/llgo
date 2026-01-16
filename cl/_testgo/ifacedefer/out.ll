; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifacedefer'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifacedefer"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testgo/ifacedefer.MyPrinter" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/ifacedefer.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [10 x i8] c"MyPrinter:", align 1
@1 = private unnamed_addr constant [13 x i8] c"starting test", align 1
@2 = private unnamed_addr constant [4 x i8] c"done", align 1
@3 = private unnamed_addr constant [4 x i8] c"test", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifacedefer.MyPrinter" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 441853877, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 14 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifacedefer.MyPrinter" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/ifacedefer.(*MyPrinter).Print", ptr @"github.com/goplus/llgo/cl/_testgo/ifacedefer.(*MyPrinter).Print" }] }, align 8
@4 = private unnamed_addr constant [14 x i8] c"main.MyPrinter", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifacedefer.MyPrinter" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 -1927172472, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.structequal$ctx", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifacedefer.MyPrinter" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 14 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifacedefer.MyPrinter" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifacedefer.struct$9Lrk1PmOX8nhNTkUnXhJ9SmPekQ9DVC-LUY2ssenyVA$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@5 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testgo/ifacedefer", align 1
@6 = private unnamed_addr constant [4 x i8] c"name", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr @"*_llgo_string" }, align 8
@7 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testgo/ifacedefer.struct$9Lrk1PmOX8nhNTkUnXhJ9SmPekQ9DVC-LUY2ssenyVA$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@8 = private unnamed_addr constant [5 x i8] c"Print", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@9 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1428505139, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 21 }, ptr @"*_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [21 x i8] c"interface { Print() }", align 1
@"*_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -78381455, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 21 }, ptr null }, ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" }, align 8
@"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@11 = private unnamed_addr constant [13 x i8] c"before return", align 1

define void @"github.com/goplus/llgo/cl/_testgo/ifacedefer.(*MyPrinter).Print"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifacedefer.MyPrinter", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifacedefer.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifacedefer.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifacedefer.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifacedefer.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testgo/ifacedefer.testDeferInterfaceMethod"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifacedefer.testDeferInterfaceMethod"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifacedefer.MyPrinter", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifacedefer.MyPrinter")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %12 = alloca i8, i64 196, align 1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 1
  store i64 0, ptr %15, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 2
  store ptr %11, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/ifacedefer.testDeferInterfaceMethod", %_llgo_2), ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %13)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 1
  %19 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 3
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 5
  store ptr null, ptr %21, align 8
  %22 = call i32 @sigsetjmp(ptr %12, i32 0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/ifacedefer.testDeferInterfaceMethod", %_llgo_3), ptr %19, align 8
  %24 = load i64, ptr %18, align 4
  %25 = extractvalue { ptr, ptr } %10, 1
  %26 = extractvalue { ptr, ptr } %10, 0
  %27 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %25)
  call void %26(ptr %25)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %27)
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, align 8
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %28, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %29)
  %30 = load ptr, ptr %20, align 8
  indirectbr ptr %30, [label %_llgo_3, label %_llgo_6]

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %11)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/ifacedefer.testDeferInterfaceMethod", %_llgo_6), ptr %20, align 8
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/ifacedefer.testDeferInterfaceMethod", %_llgo_3), ptr %20, align 8
  %31 = load ptr, ptr %19, align 8
  indirectbr ptr %31, [label %_llgo_3, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_2
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.structequal$ctx"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr %2, ptr %0, ptr %1)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

attributes #0 = { returns_twice }
