; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 40)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  %5 = getelementptr inbounds i64, ptr %0, i64 4
  store i64 100, ptr %1, align 4
  store i64 8, ptr %2, align 4
  store i64 23, ptr %3, align 4
  store i64 2, ptr %4, align 4
  store i64 7, ptr %5, align 4
  %6 = getelementptr inbounds i64, ptr %0, i64 0
  call void @qsort(ptr %6, i64 5, i64 8, ptr @"main.main$1")
  %7 = load [5 x i64], ptr %0, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi i64 [ -1, %_llgo_0 ], [ %9, %_llgo_2 ]
  %9 = add i64 %8, 1
  %10 = icmp slt i64 %9, 5
  br i1 %10, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %11 = getelementptr inbounds i64, ptr %0, i64 %9
  %12 = load i64, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr @0, i64 %12)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define i32 @"main.main$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

declare void @qsort(ptr, i64, i64, ptr)

declare i32 @printf(ptr, ...)
