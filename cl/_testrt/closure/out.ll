; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  call void @"main.main$1"(i64 100, i64 200)
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %3 = alloca { ptr, ptr }, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$2", ptr %4, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1
  store ptr null, ptr %5, align 8
  %6 = load { ptr, ptr }, ptr %3, align 8
  store { ptr, ptr } %6, ptr %2, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr inbounds { ptr }, ptr %7, i32 0, i32 0
  store ptr %2, ptr %8, align 8
  %9 = alloca { ptr, ptr }, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr @"main.main$3", ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %7, ptr %11, align 8
  %12 = load { ptr, ptr }, ptr %9, align 8
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  call void %14(ptr %13)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.main$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call i32 (ptr, ...) @printf(ptr @0, i64 %0, i64 %1)
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define void @"main.main$2"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call i32 (ptr, ...) @printf(ptr @1, i64 %0, i64 %1)
  ret void
}

define linkonce void @"__llgo_stub.main.main$2"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  tail call void @"main.main$2"(i64 %1, i64 %2)
  ret void
}

define void @"main.main$3"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load { ptr, ptr }, ptr %2, align 8
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  call void %5(ptr %4, i64 100, i64 200)
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare i32 @printf(ptr, ...)
