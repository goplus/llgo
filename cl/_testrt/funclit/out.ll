; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null
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

define void @main() {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  call void @"main.main$1"(i64 100, i64 200)
  call void @"main.main$2"(i64 100, i64 200)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.main$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call i32 (ptr, ...) @printf(ptr @0, i64 %0, i64 %1)
  ret void
}

define void @"main.main$2"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call i32 (ptr, ...) @printf(ptr @1, i64 %0, i64 %1)
  ret void
}

declare i32 @printf(ptr, ...)
