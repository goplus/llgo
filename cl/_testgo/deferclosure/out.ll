; ModuleID = 'github.com/goplus/llgo/cl/_testgo/deferclosure'
source_filename = "github.com/goplus/llgo/cl/_testgo/deferclosure"

%"github.com/goplus/llgo/cl/_testgo/deferclosure.Handler" = type { { ptr, ptr } }
%"github.com/goplus/llgo/cl/_testgo/deferclosure.Processor" = type { { ptr, ptr } }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/deferclosure.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [16 x i8] c"deferred closure", align 1
@1 = private unnamed_addr constant [13 x i8] c"closure value", align 1
@2 = private unnamed_addr constant [13 x i8] c"before return", align 1
@3 = private unnamed_addr constant [8 x i8] c"deferred", align 1
@4 = private unnamed_addr constant [8 x i8] c"captured", align 1
@5 = private unnamed_addr constant [19 x i8] c"struct closure test", align 1

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.(*Handler).SetHandler"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/deferclosure.Handler", ptr %0, i32 0, i32 0
  store { ptr, ptr } %1, ptr %2, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.(*Processor).SetCallback"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/deferclosure.Processor", ptr %0, i32 0, i32 0
  store { ptr, ptr } %1, ptr %2, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/deferclosure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/deferclosure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral"()
  call void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferClosureValue"()
  call void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferStructClosure"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferClosureValue"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 42, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferClosureValue$1", ptr undef }, ptr %1, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %5 = alloca i8, i64 200, align 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 1
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 2
  store ptr %4, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferClosureValue", %_llgo_2), ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %6)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 3
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 5
  store ptr null, ptr %14, align 8
  %15 = call i32 @__sigsetjmp(ptr %5, i32 0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferClosureValue", %_llgo_3), ptr %12, align 8
  %17 = load i64, ptr %11, align 4
  %18 = load ptr, ptr %14, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %4)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %20 = load ptr, ptr %14, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %22 = getelementptr inbounds { ptr, { ptr, ptr } }, ptr %21, i32 0, i32 0
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds { ptr, { ptr, ptr } }, ptr %21, i32 0, i32 1
  store { ptr, ptr } %3, ptr %23, align 8
  store ptr %21, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferClosureValue", %_llgo_6), ptr %13, align 8
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferClosureValue", %_llgo_3), ptr %13, align 8
  %24 = load ptr, ptr %12, align 8
  indirectbr ptr %24, [label %_llgo_3, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_8
  ret void

_llgo_7:                                          ; preds = %_llgo_2
  %25 = load ptr, ptr %14, align 8
  %26 = load { ptr, { ptr, ptr } }, ptr %25, align 8
  %27 = extractvalue { ptr, { ptr, ptr } } %26, 0
  store ptr %27, ptr %14, align 8
  %28 = extractvalue { ptr, { ptr, ptr } } %26, 1
  %29 = extractvalue { ptr, ptr } %28, 1
  %30 = extractvalue { ptr, ptr } %28, 0
  call void %30(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %25)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_2
  %31 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, align 8
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %31, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %32)
  %33 = load ptr, ptr %13, align 8
  indirectbr ptr %33, [label %_llgo_3, label %_llgo_6]
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferClosureValue$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  call void @"github.com/goplus/llgo/cl/_testgo/deferclosure.(*Handler).SetHandler"(ptr %0, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral$1", ptr null })
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %2 = alloca i8, i64 200, align 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %3, i32 0, i32 1
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %3, i32 0, i32 2
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %3, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral", %_llgo_2), ptr %7, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %3)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %3, i32 0, i32 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %3, i32 0, i32 5
  store ptr null, ptr %11, align 8
  %12 = call i32 @__sigsetjmp(ptr %2, i32 0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral", %_llgo_3), ptr %9, align 8
  %14 = load i64, ptr %8, align 4
  %15 = load ptr, ptr %11, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %1)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %17 = load ptr, ptr %11, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %19 = getelementptr inbounds { ptr, ptr, ptr }, ptr %18, i32 0, i32 0
  store ptr %17, ptr %19, align 8
  %20 = getelementptr inbounds { ptr, ptr, ptr }, ptr %18, i32 0, i32 1
  store ptr %0, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, ptr, ptr }, ptr %18, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral$2", ptr %21, align 8
  store ptr %18, ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral", %_llgo_6), ptr %10, align 8
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral", %_llgo_3), ptr %10, align 8
  %22 = load ptr, ptr %9, align 8
  indirectbr ptr %22, [label %_llgo_3, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_8
  ret void

_llgo_7:                                          ; preds = %_llgo_2
  %23 = load ptr, ptr %11, align 8
  %24 = load { ptr, ptr, ptr }, ptr %23, align 8
  %25 = extractvalue { ptr, ptr, ptr } %24, 0
  store ptr %25, ptr %11, align 8
  %26 = extractvalue { ptr, ptr, ptr } %24, 1
  %27 = extractvalue { ptr, ptr, ptr } %24, 2
  %28 = insertvalue { ptr, ptr } undef, ptr %27, 0
  %29 = insertvalue { ptr, ptr } %28, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testgo/deferclosure.(*Handler).SetHandler"(ptr %26, { ptr, ptr } %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %23)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_2
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %3, align 8
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %30, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %31)
  %32 = load ptr, ptr %10, align 8
  indirectbr ptr %32, [label %_llgo_3, label %_llgo_6]
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral$1"(i64 %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral$2"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferStructClosure"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferStructClosure$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %6 = alloca i8, i64 200, align 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 2
  store ptr %5, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferStructClosure", %_llgo_2), ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %7)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 3
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 5
  store ptr null, ptr %15, align 8
  %16 = call i32 @__sigsetjmp(ptr %6, i32 0)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferStructClosure", %_llgo_3), ptr %13, align 8
  %18 = load i64, ptr %12, align 4
  %19 = load ptr, ptr %15, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %5)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %21 = load ptr, ptr %15, align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %23 = getelementptr inbounds { ptr, ptr, { ptr, ptr } }, ptr %22, i32 0, i32 0
  store ptr %21, ptr %23, align 8
  %24 = getelementptr inbounds { ptr, ptr, { ptr, ptr } }, ptr %22, i32 0, i32 1
  store ptr %0, ptr %24, align 8
  %25 = getelementptr inbounds { ptr, ptr, { ptr, ptr } }, ptr %22, i32 0, i32 2
  store { ptr, ptr } %4, ptr %25, align 8
  store ptr %22, ptr %15, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferStructClosure", %_llgo_6), ptr %14, align 8
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferStructClosure", %_llgo_3), ptr %14, align 8
  %26 = load ptr, ptr %13, align 8
  indirectbr ptr %26, [label %_llgo_3, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_8
  ret void

_llgo_7:                                          ; preds = %_llgo_2
  %27 = load ptr, ptr %15, align 8
  %28 = load { ptr, ptr, { ptr, ptr } }, ptr %27, align 8
  %29 = extractvalue { ptr, ptr, { ptr, ptr } } %28, 0
  store ptr %29, ptr %15, align 8
  %30 = extractvalue { ptr, ptr, { ptr, ptr } } %28, 1
  %31 = extractvalue { ptr, ptr, { ptr, ptr } } %28, 2
  call void @"github.com/goplus/llgo/cl/_testgo/deferclosure.(*Processor).SetCallback"(ptr %30, { ptr, ptr } %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %27)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_2
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, align 8
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %32, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %33)
  %34 = load ptr, ptr %14, align 8
  indirectbr ptr %34, [label %_llgo_3, label %_llgo_6]
}

define void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferStructClosure$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

declare i32 @__sigsetjmp(ptr, i32)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral$1"(ptr %0, i64 %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testgo/deferclosure.testDeferMethodLiteral$1"(i64 %1)
  ret void
}
