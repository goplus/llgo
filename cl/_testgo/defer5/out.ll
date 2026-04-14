; ModuleID = 'github.com/goplus/llgo/cl/_testgo/defer5'
source_filename = "github.com/goplus/llgo/cl/_testgo/defer5"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/defer5.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"A", align 1
@1 = private unnamed_addr constant [1 x i8] c"B", align 1
@2 = private unnamed_addr constant [13 x i8] c"panic in main", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @"*_llgo_string" }, align 8
@3 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@4 = private unnamed_addr constant [10 x i8] c"in defer 1", align 1
@5 = private unnamed_addr constant [16 x i8] c"panic in defer 1", align 1
@6 = private unnamed_addr constant [10 x i8] c"in defer 2", align 1
@7 = private unnamed_addr constant [16 x i8] c"panic in defer 2", align 1

define void @"github.com/goplus/llgo/cl/_testgo/defer5.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/defer5.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/defer5.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/defer5.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %1 = alloca i8, i64 196, align 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 2
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/defer5.main", %_llgo_2), ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %2)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 5
  store ptr null, ptr %10, align 8
  %11 = call i32 @sigsetjmp(ptr %1, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/defer5.main", %_llgo_8), ptr %8, align 8
  %13 = load i64, ptr %7, align 4
  %14 = load ptr, ptr %10, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %0)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %16 = load ptr, ptr %10, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %18 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8
  %19 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %17, i32 0, i32 1
  store i64 0, ptr %19, align 4
  %20 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %17, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %20, align 8
  store ptr %17, ptr %10, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %23 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %22, i32 0, i32 0
  store ptr %21, ptr %23, align 8
  %24 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %22, i32 0, i32 1
  store i64 3, ptr %24, align 4
  %25 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %22, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %25, align 8
  store ptr %22, ptr %10, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 13 }, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %26, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  unreachable

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/defer5.main", %_llgo_3), ptr %9, align 8
  %28 = load ptr, ptr %8, align 8
  indirectbr ptr %28, [label %_llgo_3, label %_llgo_6, label %_llgo_7, label %_llgo_8, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_7
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/defer5.main", %_llgo_3), ptr %8, align 8
  %29 = load i64, ptr %7, align 4
  %30 = load ptr, ptr %10, align 8
  %31 = icmp ne ptr %30, null
  br i1 %31, label %_llgo_11, label %_llgo_12

_llgo_7:                                          ; preds = %_llgo_5, %_llgo_8
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/defer5.main", %_llgo_6), ptr %8, align 8
  %32 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/cl/_testgo/defer5.main$1"()
  br label %_llgo_6

_llgo_8:                                          ; preds = %_llgo_5, %_llgo_10
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/defer5.main", %_llgo_7), ptr %8, align 8
  %33 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/cl/_testgo/defer5.main$2"()
  br label %_llgo_7

_llgo_9:                                          ; preds = %_llgo_2
  %34 = load ptr, ptr %10, align 8
  %35 = load { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %34, align 8
  %36 = extractvalue { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %35, 0
  store ptr %36, ptr %10, align 8
  %37 = extractvalue { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %35, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %34)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_6
  %38 = load ptr, ptr %10, align 8
  %39 = load { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %38, align 8
  %40 = extractvalue { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %39, 0
  store ptr %40, ptr %10, align 8
  %41 = extractvalue { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %39, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %38)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_6
  %42 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, align 8
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %42, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %43)
  %44 = load ptr, ptr %9, align 8
  indirectbr ptr %44, [label %_llgo_3]
}

define void @"github.com/goplus/llgo/cl/_testgo/defer5.main$1"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()
  %1 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %2 = xor i1 %1, true
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 16 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/defer5.main$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 16 }, ptr %0, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  unreachable
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { returns_twice }

!llgo.useiface = !{!0, !1, !2}

!0 = !{!"github.com/goplus/llgo/cl/_testgo/defer5.main", !"_llgo_string"}
!1 = !{!"github.com/goplus/llgo/cl/_testgo/defer5.main$1", !"_llgo_string"}
!2 = !{!"github.com/goplus/llgo/cl/_testgo/defer5.main$2", !"_llgo_string"}
