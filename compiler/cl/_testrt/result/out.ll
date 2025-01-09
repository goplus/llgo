; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

define { ptr, ptr } @main.add() {
_llgo_0:
  ret { ptr, ptr } { ptr @"__llgo_stub.main.add$1", ptr null }
}

define i64 @"main.add$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define { { ptr, ptr }, i64 } @main.add2() {
_llgo_0:
  ret { { ptr, ptr }, i64 } { { ptr, ptr } { ptr @"__llgo_stub.main.add2$1", ptr null }, i64 1 }
}

define i64 @"main.add2$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call { ptr, ptr } @"main.main$1"()
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  %5 = call i64 %4(ptr %3, i64 100, i64 200)
  %6 = call i32 (ptr, ...) @printf(ptr @0, i64 %5)
  %7 = call { ptr, ptr } @main.add()
  %8 = extractvalue { ptr, ptr } %7, 1
  %9 = extractvalue { ptr, ptr } %7, 0
  %10 = call i64 %9(ptr %8, i64 100, i64 200)
  %11 = call i32 (ptr, ...) @printf(ptr @1, i64 %10)
  %12 = call { { ptr, ptr }, i64 } @main.add2()
  %13 = extractvalue { { ptr, ptr }, i64 } %12, 0
  %14 = extractvalue { { ptr, ptr }, i64 } %12, 1
  %15 = call { ptr, ptr } @main.add()
  %16 = extractvalue { ptr, ptr } %15, 1
  %17 = extractvalue { ptr, ptr } %15, 0
  %18 = call i64 %17(ptr %16, i64 100, i64 200)
  %19 = call i32 (ptr, ...) @printf(ptr @2, i64 %18, i64 %14)
  ret i32 0
}

define { ptr, ptr } @"main.main$1"() {
_llgo_0:
  ret { ptr, ptr } { ptr @"__llgo_stub.main.main$1$1", ptr null }
}

define i64 @"main.main$1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define linkonce i64 @"__llgo_stub.main.add$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"main.add$1"(i64 %1, i64 %2)
  ret i64 %3
}

define linkonce i64 @"__llgo_stub.main.add2$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"main.add2$1"(i64 %1, i64 %2)
  ret i64 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare i32 @printf(ptr, ...)

define linkonce i64 @"__llgo_stub.main.main$1$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = tail call i64 @"main.main$1$1"(i64 %1, i64 %2)
  ret i64 %3
}
