; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifacego'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifacego"

%sync.WaitGroup = type { %"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Mutex", %"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Cond", i64, i32 }
%"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Mutex" = type { [64 x i8] }
%"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Cond" = type { [48 x i8] }
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
%"github.com/goplus/llgo/cl/_testgo/ifacego.MyPrinter" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/ifacego.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testgo/ifacego.wg" = global %sync.WaitGroup zeroinitializer, align 8
@0 = private unnamed_addr constant [10 x i8] c"MyPrinter:", align 1
@1 = private unnamed_addr constant [13 x i8] c"starting test", align 1
@2 = private unnamed_addr constant [4 x i8] c"done", align 1
@3 = private unnamed_addr constant [4 x i8] c"test", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifacego.MyPrinter" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 917076829, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 14 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifacego.MyPrinter" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/ifacego.(*MyPrinter).Print", ptr @"github.com/goplus/llgo/cl/_testgo/ifacego.(*MyPrinter).Print" }] }, align 8
@4 = private unnamed_addr constant [14 x i8] c"main.MyPrinter", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifacego.MyPrinter" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 -936763959, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.structequal$ctx", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifacego.MyPrinter" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 14 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifacego.MyPrinter" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifacego.struct$9Lrk1PmOX8nhNTkUnXhJ9SmPekQ9DVC-LUY2ssenyVA$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 41 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@5 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testgo/ifacego", align 1
@6 = private unnamed_addr constant [4 x i8] c"name", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr @"*_llgo_string" }, align 8
@7 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testgo/ifacego.struct$9Lrk1PmOX8nhNTkUnXhJ9SmPekQ9DVC-LUY2ssenyVA$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@8 = private unnamed_addr constant [5 x i8] c"Print", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@9 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1428505139, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 21 }, ptr @"*_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [21 x i8] c"interface { Print() }", align 1
@"*_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -78381455, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 21 }, ptr null }, ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ" }, align 8
@"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8

define void @"github.com/goplus/llgo/cl/_testgo/ifacego.(*MyPrinter).Print"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifacego.MyPrinter", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifacego.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifacego.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifacego.init$guard", align 1
  call void @sync.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifacego.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testgo/ifacego.testGoInterfaceMethod"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifacego.testGoInterfaceMethod"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifacego.MyPrinter", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$MDIp9a1fyw2gCI1IEu3Ff87NRBzYjJyWkgODQRFEauQ", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifacego.MyPrinter")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %1, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %0, align 8
  call void @"sync.(*WaitGroup).Add"(ptr @"github.com/goplus/llgo/cl/_testgo/ifacego.wg", i64 1)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %7 = getelementptr inbounds { ptr }, ptr %6, i32 0, i32 0
  store ptr %0, ptr %7, align 8
  %8 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifacego.testGoInterfaceMethod$1", ptr undef }, ptr %6, 1
  %9 = call ptr @malloc(i64 16)
  %10 = getelementptr inbounds { { ptr, ptr } }, ptr %9, i32 0, i32 0
  store { ptr, ptr } %8, ptr %10, align 8
  %11 = alloca i8, i64 8, align 1
  %12 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %11, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/ifacego._llgo_routine$1", ptr %9)
  call void @"sync.(*WaitGroup).Wait"(ptr @"github.com/goplus/llgo/cl/_testgo/ifacego.wg")
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifacego.testGoInterfaceMethod$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %3 = alloca i8, i64 196, align 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %4, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %4, i32 0, i32 1
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %4, i32 0, i32 2
  store ptr %2, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %4, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/ifacego.testGoInterfaceMethod$1", %_llgo_2), ptr %8, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %4)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %4, i32 0, i32 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %4, i32 0, i32 5
  store ptr null, ptr %12, align 8
  %13 = call i32 @sigsetjmp(ptr %3, i32 0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/ifacego.testGoInterfaceMethod$1", %_llgo_3), ptr %10, align 8
  %15 = load i64, ptr %9, align 4
  %16 = load ptr, ptr %12, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %2)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %18 = load ptr, ptr %12, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 1
  store ptr @"github.com/goplus/llgo/cl/_testgo/ifacego.wg", ptr %21, align 8
  store ptr %19, ptr %12, align 8
  %22 = extractvalue { ptr } %1, 0
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %22, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %23)
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, 0
  %26 = getelementptr ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = insertvalue { ptr, ptr } undef, ptr %27, 0
  %29 = insertvalue { ptr, ptr } %28, ptr %24, 1
  %30 = extractvalue { ptr, ptr } %29, 1
  %31 = extractvalue { ptr, ptr } %29, 0
  %32 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %33 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %30)
  call void %31(ptr %30)
  %34 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %32)
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/ifacego.testGoInterfaceMethod$1", %_llgo_6), ptr %11, align 8
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/ifacego.testGoInterfaceMethod$1", %_llgo_3), ptr %11, align 8
  %35 = load ptr, ptr %10, align 8
  indirectbr ptr %35, [label %_llgo_3, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_8
  ret void

_llgo_7:                                          ; preds = %_llgo_2
  %36 = load ptr, ptr %12, align 8
  %37 = load { ptr, ptr }, ptr %36, align 8
  %38 = extractvalue { ptr, ptr } %37, 0
  store ptr %38, ptr %12, align 8
  %39 = extractvalue { ptr, ptr } %37, 1
  call void @"sync.(*WaitGroup).Done"(ptr %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %36)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_2
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %4, align 8
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %40, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %41)
  %42 = load ptr, ptr %11, align 8
  indirectbr ptr %42, [label %_llgo_3, label %_llgo_6]
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @sync.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.structequal$ctx"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr %2, ptr %0, ptr %1)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"sync.(*WaitGroup).Add"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @malloc(i64)

define ptr @"github.com/goplus/llgo/cl/_testgo/ifacego._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr } }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr } } %1, 0
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  %5 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %6 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %3)
  call void %4()
  %7 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %5)
  call void @free(ptr %0)
  ret ptr null
}

declare void @free(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)

declare void @"sync.(*WaitGroup).Wait"(ptr)

declare void @"sync.(*WaitGroup).Done"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr)

attributes #0 = { returns_twice }
